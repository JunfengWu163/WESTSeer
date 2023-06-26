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
    int n = numSteps();
    if (stepId < n - 2)
        process(_y1 - n + 3 + stepId);
    else if (stepId == n - 2)
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
        ss << "SELECT id, scope_keywords, year, plm, prm, slm, srm FROM pub_scope_time_series WHERE scope_keywords = '"
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
    if (timeSeries.size() > 0)
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

bool TimeSeriesExtraction::process(int y)
{
    if (load(y, NULL))
        return true;

    // step 1: load candidates
    std::map<uint64_t, TimeSeriesMatrices> timeSeries;
    std::map<uint64_t, int> candidateMap;
    {
        std::vector<uint64_t> candidates;
        if (!_ci->load(y, &candidates))
            return false;
        for (int i = 0; i < (int)candidates.size(); i++)
        {
            candidateMap[candidates[i]] = i;
        }
    }
    if (candidateMap.size() == 0)
    {
        save(y, timeSeries);
        return true;
    }
    GeneralConfig config;
    int k = config.getBiterms();
    int numFeatures = 2 + 2 * k + k * (k - 1);
    int halfNF = numFeatures / 2;
    int numCandidates = (int) candidateMap.size();
    std::vector<std::vector<std::vector<int>>> hits;
    hits.resize(numCandidates);
    for (int iC = 0; iC < numCandidates; iC++)
    {
        hits[iC].resize(numFeatures);
        for (int iF = 0; iF < numFeatures; iF++)
        {
            hits[iC][iF].resize(15);
            for (int iY = 0; iY < 15; iY++)
            {
                hits[iC][iF][iY] = 0;
            }
        }
    }

    // step 2: load topics
    std::map<uint64_t,std::pair<std::string,std::string>> topics;
    if (!_ti->load(y, &topics))
        return false;

    // step 3: create mapping that maps biterm to candidate positions
    std::map<std::string, std::vector<std::pair<uint64_t,int>>> bitermCandidatePositions;
    for (auto cidToTopic: topics)
    {
        std::vector<std::string> biterms = splitString(cidToTopic.second.first, "|");
        for (int i = 0; i < (int)biterms.size(); i++)
        {
            std::pair<uint64_t,int> candidatePosition(cidToTopic.first,i);
            auto bToCP = bitermCandidatePositions.find(biterms[i]);
            if (bToCP == bitermCandidatePositions.end())
            {
                std::vector<std::pair<uint64_t,int>> temp;
                temp.push_back(candidatePosition);
                bitermCandidatePositions[biterms[i]] = temp;
            }
            else
            {
                bitermCandidatePositions[biterms[i]].push_back(candidatePosition);
            }
        }
    }

    // step 4: scan through publications to find biterm hits
    std::map<uint64_t, std::vector<uint64_t>> oldPubs[10], newPubs[5];
    for (int i = 0; i < 15; i++)
    {
        int yi = y - 1 - i;
        if (yi >= WESTSeerApp::year())
            continue;
        int iY = 14 - i;

        std::map<uint64_t, std::vector<uint64_t>> pubs;
        if (!_scope.getExistingRefIds(yi, pubs))
            return false;

        std::map<uint64_t, std::map<std::string, double>> pubBWs;
        if (!_bw->load(yi, &pubBWs))
            return false;

        for (auto &idToBWs: pubBWs)
        {
            std::set<uint64_t> refs(pubs[idToBWs.first].begin(), pubs[idToBWs.first].end());

            // calculate pHits and tHits
            std::map<uint64_t, int> pHits, tHits;
            for (auto &bToW: idToBWs.second)
            {
                auto bToCP = bitermCandidatePositions.find(bToW.first);
                if (bToCP != bitermCandidatePositions.end())
                {
                    for (auto cp: bToCP->second)
                    {
                        uint64_t cid = cp.first;

                        // update tHits
                        auto cidToTHit = tHits.find(cid);
                        if (cidToTHit == tHits.end())
                        {
                            int hit = 1 << cp.second;
                            tHits[cid] = hit;
                        }
                        else
                        {
                            int hit = (1 << cp.second) | cidToTHit->second;
                            tHits[cid] = hit;
                        }

                        // update pHits
                        if (refs.find(cid) != refs.end())
                        {
                            auto cidToPHit = pHits.find(cid);
                            if (cidToPHit == pHits.end())
                            {
                                int hit = 1 << cp.second;
                                pHits[cid] = hit;
                            }
                            else
                            {
                                int hit = (1 << cp.second) | cidToPHit->second;
                                pHits[cid] = hit;
                            }
                        }
                    }
                }
            }

            // update hits according to pHits and tHits
            for (auto cidToPHit: pHits)
            {
                int iC = candidateMap[cidToPHit.first];
                hits[iC][0][iY]++;
                int coocurrOffset = 0;
                for (int iF = 0; iF < k; iF++)
                {
                    if ((cidToPHit.second & (1 << iF)) != 0)
                    {
                        hits[iC][iF + 1][iY]++;
                    }
                    for (int iF2 = iF + 1; iF2 < k; iF2++)
                    {
                        if ((cidToPHit.second & (1 << iF2)) != 0)
                        {
                            hits[iC][1 + k + coocurrOffset][iY]++;
                        }
                        coocurrOffset ++;
                    }
                }
            }
            for (auto cidToTHit: tHits)
            {
                int iC = candidateMap[cidToTHit.first];
                hits[iC][halfNF][iY]++;
                int coocurrOffset = 0;
                for (int iF = 0; iF < k; iF++)
                {
                    if ((cidToTHit.second & (1 << iF)) != 0)
                    {
                        hits[iC][iF + 1 + halfNF][iY]++;
                    }
                    for (int iF2 = iF + 1; iF2 < k; iF2++)
                    {
                        if ((cidToTHit.second & (1 << iF2)) != 0)
                        {
                            hits[iC][1 + k + coocurrOffset + halfNF][iY]++;
                        }
                        coocurrOffset ++;
                    }
                }
            }
        }
    }

    // step 5: encode hits to time series
    for (auto idToiC: candidateMap)
    {
        Eigen::MatrixXd plm(halfNF, 10), prm(halfNF, 5), slm(halfNF, 10), srm(halfNF, 5);
        uint64_t id = idToiC.first;
        int iC = idToiC.second;
        for (int iF = 0; iF < halfNF; iF++)
        {
            for (int iY = 0; iY < 10; iY++)
            {
                plm(iF,iY) = hits[iC][iF][iY];
                slm(iF,iY) = hits[iC][iF+halfNF][iY];
            }
            for (int iY = 10; iY < 15; iY++)
            {
                prm(iF,iY-10) = hits[iC][iF][iY];
                srm(iF,iY-10) = hits[iC][iF+halfNF][iY];
            }
        }
        std::pair<Eigen::MatrixXd,Eigen::MatrixXd> pm(plm,prm), sm(slm,srm);
        TimeSeriesMatrices tsm(pm,sm);
        timeSeries[id] = tsm;
    }

    // step 8: save time series
    save(y, timeSeries);
    return true;
}
