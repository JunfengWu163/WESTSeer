#include "TimeSeriesExtraction.h"
#include <../WESTSeerApp.h>
#include <GeneralConfig.h>
#include <StringProcessing.h>
#include <CallbackData.h>

TimeSeriesExtraction::TimeSeriesExtraction(const std::string path, const std::string kws,
                                               BitermWeight *bw, CandidateIdentification *ci, TopicIdentification *ti):_scope(path, kws)
{
    //ctor
    GeneralConfig config;
    _y2 = WESTSeerApp::year();
    _y1 = _y2 - 5;
    _y0 = _y2 - config.getObYears();
    _bw = bw;
    _ci = ci;
    _ti = ti;
}

TimeSeriesExtraction::~TimeSeriesExtraction()
{
    //dtor
}

bool TimeSeriesExtraction::finished()
{
    int n = numSteps();
    if (!load(_y2, NULL))
        return false;
    if (!load(_y2 + 5, NULL))
        return false;
    for (int i = 2; i < n; i++)
    {
        if (!load(_y1 - i + 2, NULL))
            return false;
    }
    return true;
}

const char *TimeSeriesExtraction::name()
{
    return "Time Series Extraction";
}

int TimeSeriesExtraction::numSteps()
{
    return _y1 - _y0 - 12;
}

void TimeSeriesExtraction::doStep(int stepId)
{
    if (stepId > 1)
        process(_y1 - stepId + 2);
    else if (stepId == 1)
        process(_y2);
    else
        process(_y2 + 5);
}

Eigen::MatrixXd deserializeMatrix(std::string s)
{
    std::vector<std::string> fields = splitString(s, ":");
    std::vector<std::string> strRCs = splitString(fields[0], ",");
    std::vector<std::string> strElements = splitString(fields[1], ",");
    int nRows = atoi(strRCs[0].c_str());
    int nCols = atoi(strRCs[1].c_str());
    int nElements = (int) strElements.size();
    Eigen::MatrixXd A(nRows, nCols);
    if (nRows * nCols != nElements)
    {
        logError("nRows * nCols != nElements");
        return A;
    }
    int i = 0;
    for (int r = 0; r < nRows; r++)
    {
        for (int c = 0; c < nCols; c++)
        {
            A(r, c) = atof(strElements[i++].c_str());
        }
    }
    return A;
}

bool TimeSeriesExtraction::load(int y, std::map<uint64_t, TimeSeriesMatrices> *timeSeries)
{
    GeneralConfig config;
    std::string path = config.getDatabase();

    sqlite3 *db = NULL;
    int rc = sqlite3_open(path.c_str(), &db);
    if (rc != SQLITE_OK)
    {
        logError(wxT("Cannot open database at" + path));
        return false;
    }
    char *errorMessage = NULL;

    // step 1: load time series
    std::string keywords = _scope.getKeywords();
    if (timeSeries != NULL)
    {
        CallbackData data;
        std::stringstream ss;
        ss << "SELECT id, scope_keywords, year, plm, prm, slm, srm FROM pub_scope_time_series WHERE keywords = '"
            << keywords << "' AND year = " << y << ";";
        std::string strSql = ss.str();
        logDebug(strSql.c_str());
        rc = sqlite3_exec(db, strSql.c_str(), CallbackData::sqliteCallback, &data, &errorMessage);
        if (rc != SQLITE_OK)
        {
            logDebug(errorMessage);
            sqlite3_close(db);
            return false;
        }
        for (auto result: data.results)
        {
            uint64_t id = std::stoull(result["id"]);
            Eigen::MatrixXd plm = deserializeMatrix(result["plm"]);
            Eigen::MatrixXd prm = deserializeMatrix(result["prm"]);
            Eigen::MatrixXd slm = deserializeMatrix(result["slm"]);
            Eigen::MatrixXd srm = deserializeMatrix(result["srm"]);
            std::pair<Eigen::MatrixXd,Eigen::MatrixXd> pm(plm,prm);
            std::pair<Eigen::MatrixXd,Eigen::MatrixXd> sm(slm,srm);
            TimeSeriesMatrices tsm(pm,sm);
            (*timeSeries)[id] = tsm;
        }
    }

    // step 2: load token
    {
        CallbackData data;
        std::stringstream ss;
        ss << "SELECT keywords, year FROM scope_time_series_token WHERE keywords = '"
            << keywords << "' AND year = " << y << ";";
        std::string strSql = ss.str();
        logDebug(strSql.c_str());
        rc = sqlite3_exec(db, strSql.c_str(), CallbackData::sqliteCallback, &data, &errorMessage);
        if (rc != SQLITE_OK)
        {
            logDebug(errorMessage);
            sqlite3_close(db);
            return false;
        }
        if (data.results.size() == 0)
        {
            sqlite3_close(db);
            return false;
        }
    }
    sqlite3_close(db);
    return true;
}

std::string serializeMatrix(Eigen::MatrixXd &matrix)
{
    std::stringstream ss;
    int nRows = matrix.rows();
    int nCols = matrix.cols();
    ss << nRows << "," << nCols << ":";
    for (int r = 0; r < nRows; r++)
    {
        for (int c = 0; c < nCols; c++)
        {
            if (r > 0 || c > 0)
                ss << ",";
            ss << matrix(r,c);
        }
    }
    return ss.str();
}

bool TimeSeriesExtraction::save(int y, const std::map<uint64_t, TimeSeriesMatrices> &timeSeries)
{
    GeneralConfig config;
    std::string path = config.getDatabase();

    sqlite3 *db = NULL;
    int rc = sqlite3_open(path.c_str(), &db);
    if (rc != SQLITE_OK)
    {
        logError(wxT("Cannot open database at" + path));
        return false;
    }
    char *errorMessage = NULL;

    // step 1: create tables
    const char*sqls[] =
    {
        "CREATE TABLE IF NOT EXISTS scope_time_series_token("
        "keywords TEXT,"
        "year INTEGER,"
        "update_time INTEGER,"
        "PRIMARY KEY(keywords,year));",

        "CREATE TABLE IF NOT EXISTS pub_scope_time_series("
        "id INTEGER,"
        "scope_keywords TEXT,"
        "year INTEGER,"
        "plm TEXT,"
        "prm TEXT,"
        "slm TEXT,"
        "srm TEXT,"
        "PRIMARY KEY(id,scope_keywords,year))",
    };
    for (const char*sql: sqls)
    {
        logDebug(sql);
        rc = sqlite3_exec(db, sql, NULL, NULL, &errorMessage);
        if (rc != SQLITE_OK)
        {
            logError(errorMessage);
            sqlite3_close(db);
            return false;
        }
    }

    // step 2: insert publication scope time series
    std::string keywords = _scope.getKeywords();
    time_t t;
    time(&t);
    {
        std::stringstream ss;
        ss << "INSERT OR IGNORE INTO pub_scope_time_series(id, scope_keywords, year, plm, prm, slm, srm) VALUES ";
        for (auto idToTS = timeSeries.begin(); idToTS != timeSeries.end(); idToTS++)
        {
            uint64_t id = idToTS->first;
            Eigen::MatrixXd plm = idToTS->second.first.first;
            Eigen::MatrixXd prm = idToTS->second.first.second;
            Eigen::MatrixXd slm = idToTS->second.second.first;
            Eigen::MatrixXd srm = idToTS->second.second.second;
            std::string strPlm = serializeMatrix(plm);
            std::string strPrm = serializeMatrix(prm);
            std::string strSlm = serializeMatrix(slm);
            std::string strSrm = serializeMatrix(srm);
            if (idToTS != timeSeries.begin())
                ss << ",";
            ss << "(" << id << ",'" << keywords << "'," << y << ",'"
                << strPlm << "','" << strPrm << "','" << strSlm << "','" << strSrm << "')";
        }
        ss << ";";
        std::string strSql = ss.str();
        logDebug(strSql.c_str());
        rc = sqlite3_exec(db, strSql.c_str(), NULL, NULL, &errorMessage);
        if (rc != SQLITE_OK)
        {
            logError(errorMessage);
            sqlite3_close(db);
            return false;
        }
    }

    // step 3: insert token
    {
        std::stringstream ss;
        ss << "INSERT OR IGNORE INTO scope_time_series_token(keywords,year,update_time) VALUES ('"
            << keywords << "'," << y << "," << (int) t << ");";
        std::string strSql = ss.str();
        logDebug(strSql.c_str());
        rc = sqlite3_exec(db, strSql.c_str(), NULL, NULL, &errorMessage);
        if (rc != SQLITE_OK)
        {
            logError(errorMessage);
            sqlite3_close(db);
            return false;
        }
    }

    sqlite3_close(db);
    return true;
}

std::vector<int> getRows(int numBiterms, uint64_t cid, const std::set<std::string> &foundBiterms,
                         const std::map<uint64_t,std::pair<std::string,std::string>> &topics)
{
    std::vector<int> rows;
    auto cidToTopic = topics.find(cid);
    if (cidToTopic == topics.end())
        return rows;

    std::vector<std::string> biterms = splitString(cidToTopic->second.first,"|");
    if (foundBiterms.size() > 0)
    {
        rows.push_back(0);
    }
    int cooccurOffset = 0;
    for (size_t i1 = 0; i1 < biterms.size(); i1++)
    {
        if (foundBiterms.find(biterms[i1]) != foundBiterms.end())
        {
            rows.push_back(1 + i1);
            for (size_t i2 = i1 + 1; i2 < biterms.size(); i2++)
            {
                if (foundBiterms.find(biterms[i2]) != foundBiterms.end())
                {
                    rows.push_back(1 + numBiterms + cooccurOffset + i2 - i1 - 1);
                }
            }
        }
        cooccurOffset += (int)(biterms.size() - i1 - 1);
    }
    return rows;
}

void getCids(const std::map<std::string, double> &bws,
             const std::vector<uint64_t> &refIds,
             const std::map<std::string, std::vector<uint64_t>> &bitermCids,
             std::map<uint64_t,std::set<std::string>> &topicCids,
             std::map<uint64_t,std::set<std::string>> &citeCids)
{
    std::set<uint64_t> refIdSet(refIds.begin(), refIds.end());
    for (auto bToW: bws)
    {
        std::string biterm = bToW.first;
        auto bToCids = bitermCids.find(biterm);
        if (bToCids == bitermCids.end())
            return;
        for (uint64_t cid: bToCids->second)
        {
            auto cidToTBs = topicCids.find(cid);
            if (cidToTBs != topicCids.end())
            {
                topicCids[cid].insert(biterm);
            }
            else
            {
                std::set<std::string> temp;
                temp.insert(biterm);
                topicCids[cid] = temp;
            }

            if (refIdSet.find(cid) != refIdSet.end())
            {
                auto cidToCBs = citeCids.find(cid);
                if (cidToCBs != citeCids.end())
                {
                    citeCids[cid].insert(biterm);
                }
                else
                {
                    std::set<std::string> temp;
                    temp.insert(biterm);
                    citeCids[cid] = temp;
                }
            }
        }
    }
}

bool TimeSeriesExtraction::process(int y)
{
    // step 1: load candidates
    std::set<uint64_t> candidateSet;
    {
        std::vector<uint64_t> candidates;
        if (!_ci->load(y, &candidates))
            return false;
        candidateSet.insert(candidates.begin(), candidates.end());
    }

    // step 2: load publications
    std::map<uint64_t, std::vector<uint64_t>> oldPubs[10], newPubs[5];
    for (int i = 0; i < 15; i++)
    {
        int yi = y - 1 - i;
        std::map<uint64_t, std::vector<uint64_t>> pubs;
        if (!_scope.getExistingRefIds(yi, pubs))
            return false;
        if (i < 5)
        {
            newPubs[4 - i] = pubs;
        }
        else
        {
            oldPubs[9 - (i - 5)] = pubs;
        }
    }

    // step 3: load biterm weights
    std::map<uint64_t, std::map<std::string, double>> oldPubBWs[10], newPubBWs[5];
    for (int i = 0; i < 15; i++)
    {
        int yi = y - 1 - i;
        std::map<uint64_t, std::map<std::string, double>> pubBWs;
        if (!_bw->load(yi, &pubBWs))
            return false;
        if (i < 5)
        {
            newPubBWs[4 - i] = pubBWs;
        }
        else
        {
            oldPubBWs[9 - (i - 5)] = pubBWs;
        }
    }

    // step 4: load topics
    std::map<uint64_t,std::pair<std::string,std::string>> topics;
    if (!_ti->load(y, &topics))
        return false;

    // step 5: extract candidates corresponding to topic biterms
    // also initialze matrices
    std::map<std::string, std::vector<uint64_t>> bitermCids;
    std::map<uint64_t, TimeSeriesMatrices> timeSeries;
    GeneralConfig config;
    int numBiterms = config.getBiterms();
    // rows include: 1 in topic, 1 in biterm for each biterm, 1 in two biterms for each pair of distinct biterms
    int nRows = 1 + numBiterms + numBiterms * (numBiterms - 1) / 2;
    Eigen::MatrixXd A(nRows, 10);
    Eigen::MatrixXd B(nRows, 5);
    for (int r = 0; r < nRows; r++)
    {
        for (int c = 0; c < A.cols(); c++)
        {
            A(r, c) = 0.0;
        }
        for (int c = 0; c < B.cols(); c++)
        {
            B(r, c) = 0.0;
        }
    }
    std::pair<Eigen::MatrixXd, Eigen::MatrixXd> pm(A,B), sm(A,B);
    TimeSeriesMatrices matrices(pm, sm);
    for (auto cidToTopic: topics)
    {
        uint64_t cid = cidToTopic.first;
        timeSeries[cid] = matrices;
        std::vector<std::string> biterms = splitString(cidToTopic.second.first, "|");
        for (std::string biterm: biterms)
        {
            auto bitermToCids = bitermCids.find(biterm);
            if (bitermToCids != bitermCids.end())
            {
                bitermCids[biterm].push_back(cid);
            }
            else
            {
                std::vector<uint64_t> temp;
                temp.push_back(cid);
                bitermCids[biterm] = temp;
            }
        }
    }

    // step 6: scan through old publications to find biterm old occurrences
    for (int i = 0; i <10; i++)
    {
        for (auto &idToBWs: oldPubBWs[i])
        {
            uint64_t id = idToBWs.first;
            auto idToRefIds= oldPubs[i].find(id);
            if (idToRefIds == oldPubs[i].end())
                continue;
            std::map<uint64_t,std::set<std::string>> topicCids;
            std::map<uint64_t,std::set<std::string>> citeCids;
            getCids(idToBWs.second, idToRefIds->second, bitermCids, topicCids, citeCids);

            for (auto &cidToCBs: citeCids)
            {
                std::vector<int> rows = getRows(numBiterms, cidToCBs.first, cidToCBs.second, topics);
                for (int row: rows)
                {
                    timeSeries[cidToCBs.first].first.first(row, i) += 1.0;
                }
            }

            for (auto &cidToTBs: topicCids)
            {
                std::vector<int> rows = getRows(numBiterms, cidToTBs.first, cidToTBs.second, topics);
                for (int row: rows)
                {
                    timeSeries[cidToTBs.first].second.first(row, i) += 1.0;
                }
            }
        }
    }

    // step 7: scan through new publications to find biterm new occurrences
    for (int i = 0; i <5; i++)
    {
        for (auto &idToBWs: newPubBWs[i])
        {
            uint64_t id = idToBWs.first;
            auto idToRefIds = newPubs[i].find(id);
            if (idToRefIds == newPubs[i].end())
                continue;
            std::map<uint64_t,std::set<std::string>> topicCids;
            std::map<uint64_t,std::set<std::string>> citeCids;
            getCids(idToBWs.second, idToRefIds->second, bitermCids, topicCids, citeCids);

            for (auto &cidToCBs: citeCids)
            {
                std::vector<int> rows = getRows(numBiterms, cidToCBs.first, cidToCBs.second, topics);
                for (int row: rows)
                {
                    timeSeries[cidToCBs.first].first.second(row, i) += 1.0;
                }
            }

            for (auto &cidToTBs: topicCids)
            {
                std::vector<int> rows = getRows(numBiterms, cidToTBs.first, cidToTBs.second, topics);
                for (int row: rows)
                {
                    timeSeries[cidToTBs.first].second.second(row, i) += 1.0;
                }
            }
        }
    }

    // step 8: save time series
    save(y, timeSeries);
    return true;
}
