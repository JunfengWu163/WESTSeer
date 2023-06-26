#include "MetricModel.h"
#include <../WESTSeerApp.h>
#include <GeneralConfig.h>
#include <CallbackData.h>
#include <wxFFileLog.h>
#include <StringProcessing.h>
#include <ctime>
#include <cstdlib>
#include <sstream>
#include <set>

MetricModel::MetricModel(const std::string path, const std::string kws, TimeSeriesExtraction *tse, PredictionModel *pm):_scope(path, kws)
{
    //ctor
    GeneralConfig config;
    _y2 = WESTSeerApp::year();
    _y1 = _y2 - 5;
    _y0 = _y2 - config.getObYears();
    _tse = tse;
    _pm = pm;
}

MetricModel::~MetricModel()
{
    //dtor
}

bool MetricModel::finished()
{
    return load(_y2, NULL) && load(_y2 + 5, NULL);
}

const char *MetricModel::name()
{
    return "Score evaluations";
}

int MetricModel::numSteps()
{
    return 2;
}

void MetricModel::doStep(int stepId)
{
    if (stepId == 0)
        process(_y2);
    else
        process(_y2 + 5);
}

std::string getScoreStr(const std::map<uint64_t, std::vector<double>> &scores)
{
    std::stringstream ss;
    for (auto idToScore = scores.begin(); idToScore != scores.end(); idToScore++)
    {
        if (idToScore != scores.begin())
            ss << ";";
        ss << idToScore->first << ":" << getVectorStr(idToScore->second);
    }
    return ss.str();
}

std::map<uint64_t, std::vector<double>> getScores(std::string scoreStr)
{
    std::vector<std::string> idScoreStrs = splitString(scoreStr,";");
    std::map<uint64_t, std::vector<double>> scores;
    for (std::string s: idScoreStrs)
    {
        std::vector<std::string> fields = splitString(s,":");
        uint64_t id = std::stoull(fields[0]);
        std::vector<std::string> vStrs = splitString(fields[1],",");
        std::vector<double> vs;
        for (size_t i = 0; i < vStrs.size(); i++)
        {
            vs.push_back(atof(vStrs[i].c_str()));
        }
        scores[id] = vs;
    }
    return scores;
}

bool MetricModel::load(int y, std::map<uint64_t, std::vector<double>> *scores)
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

    // step 1: load scope metric
    std::string keywords = _scope.getKeywords();
    if (scores != NULL)
    {
        CallbackData data;
        std::stringstream ss;
        ss << "SELECT keywords, year, scores FROM scope_metric WHERE keywords = '"
            << keywords << "' AND year = " << y << ";";
        std::string strSql = ss.str();
        logDebug(strSql.c_str());
        rc = sqlite3_exec(db, strSql.c_str(), CallbackData::sqliteCallback, &data, &errorMessage);
        if (rc != SQLITE_OK || data.results.size() == 0)
        {
            logDebug(errorMessage);
            sqlite3_close(db);
            return false;
        }
        *scores = getScores(data.results[0]["scores"]);
    }
    else
    {
        CallbackData data;
        std::stringstream ss;
        ss << "SELECT keywords, year FROM scope_metric WHERE keywords = '"
            << keywords << "' AND year = " << y << ";";
        std::string strSql = ss.str();
        logDebug(strSql.c_str());
        rc = sqlite3_exec(db, strSql.c_str(), CallbackData::sqliteCallback, &data, &errorMessage);
        if (rc != SQLITE_OK || data.results.size() == 0)
        {
            if (rc!=SQLITE_OK)
                logDebug(errorMessage);
            sqlite3_close(db);
            return false;
        }
    }

    sqlite3_close(db);
    return true;
}

bool MetricModel::save(int y, const std::map<uint64_t, std::vector<double>> &scores)
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
        "CREATE TABLE IF NOT EXISTS scope_metric("
        "keywords TEXT,"
        "year INTEGER,"
        "scores TEXT,"
        "update_time INTEGER,"
        "PRIMARY KEY(keywords,year));"
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

    // step 2: insert scope metric
    std::string keywords = _scope.getKeywords();
    time_t t;
    time(&t);
    {
        std::stringstream ss;
        ss << "INSERT OR IGNORE INTO scope_metric(keywords, year, scores, update_time) VALUES ('"
            << keywords << "'," << y << ",'" << getScoreStr(scores) << "'," << (int)t << ");";
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


bool MetricModel::process(int y)
{
    if (load(y, NULL))
        return true;

    // step 1: load time series
    std::map<uint64_t, TimeSeriesMatrices> timeSeries;
    if (!_tse->load(y, &timeSeries))
        return false;

    // step 2: load prediction
    std::map<uint64_t, std::pair<Eigen::MatrixXd,Eigen::MatrixXd>> prediction;
    if (!_pm->load(y, &prediction))
        return false;

    std::map<uint64_t,int> oldCitations[10], newCitations[5];
    double sumOldPubs = 0;
    {
        // step 3: load publications
        std::map<uint64_t, std::vector<uint64_t>> oldPubs[10], newPubs[5];
        for (int i = 0; i < 15; i++)
        {
            int yi = y - 1 - i;
            if (yi >= WESTSeerApp::year())
                continue;

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

        // step 4: get citations per year of candidates
        for (int i = 0; i <10; i++)
        {
            sumOldPubs += oldPubs[i].size();
            for (auto idToRefIds: oldPubs[i])
            {
                for (uint64_t refId: idToRefIds.second)
                {
                    if (prediction.find(refId) != prediction.end())
                    {
                        auto ridToC = oldCitations[i].find(refId);
                        if (ridToC == oldCitations[i].end())
                        {
                            oldCitations[i][refId] = 1;
                        }
                        else
                        {
                            oldCitations[i][refId] = ridToC->second + 1;
                        }
                    }
                }
            }
        }
        for (int i = 0; i <5; i++)
        {
            for (auto idToRefIds: newPubs[i])
            {
                for (uint64_t refId: idToRefIds.second)
                {
                    if (prediction.find(refId) != prediction.end())
                    {
                        auto ridToC = newCitations[i].find(refId);
                        if (ridToC == newCitations[i].end())
                        {
                            newCitations[i][refId] = 1;
                        }
                        else
                        {
                            newCitations[i][refId] = ridToC->second + 1;
                        }
                    }
                }
            }
        }
    }

    // step 5: compute prediction and verification scores for each candidate
    std::map<uint64_t, std::vector<double>> scores;
    for (auto idToP: prediction)
    {
        uint64_t id = idToP.first;
        Eigen::MatrixXd plm = timeSeries[idToP.first].first.first;
        Eigen::MatrixXd slm = timeSeries[idToP.first].second.first;
        Eigen::MatrixXd prm = idToP.second.first;
        int realOldCitations[10], oldTopicHits[10], oldPubHits[10], realNewCitations[5];
        double predNewCitations[5];
        double sumOld = 0, sumP = 0;
        for (int i = 0; i < 10; i++)
        {
            auto idToC = oldCitations[i].find(id);
            if (idToC != oldCitations[i].end())
            {
                realOldCitations[i] = idToC->second;
            }
            else
            {
                realOldCitations[i] = 0;
            }
            oldTopicHits[i] = slm(0,i);
            oldPubHits[i] = plm(0, i);
            sumOld += realOldCitations[i];
            sumP += oldPubHits[i];
        }
        /*
        double sum11op = 0, sum12op = 0, sum22op = 0, sum11pt = 0, sum12pt = 0, sum22pt = 0;
        for (int i = 0; i < 10; i++)
        {
            sum11op += realOldCitations[i] * realOldCitations[i];
            sum12op += realOldCitations[i] * oldPubHits[i];
            sum22op += oldPubHits[i] * oldPubHits[i];
            sum11pt += oldPubHits[i] * oldPubHits[i];
            sum12pt += oldPubHits[i] * oldTopicHits[i];
            sum22pt += oldTopicHits[i] * oldTopicHits[i];
        }
        double rop = sqrt(sum11op * sum22op);
        double cosop = rop == 0.0 ? 0 : sum12op / rop;
        double rpt = sqrt(sum11pt * sum22pt);
        double cospt = rpt == 0.0 ? 0 : sum12pt / rpt;
        */

        if (sumP == 0)
            sumP = 1;

        double realSumNew = 0, predSumNew = 0;
        for (int i = 0; i < 5; i++)
        {
            auto idToC = newCitations[i].find(id);
            if (idToC != newCitations[i].end())
            {
                realNewCitations[i] = idToC->second;
            }
            else
            {
                realNewCitations[i] = 0;
            }

            predNewCitations[i] = prm(0, i);
            realSumNew += realNewCitations[i];
            predSumNew += predNewCitations[i];
        }

        //predSumNew *= sqrt(sumOld / sumP);

        double irdf = log(sumOldPubs / sumOld);
        double predIrdf = log(sumOldPubs / sumP);
        double meanOld = sumOld * 0.1;
        double predMeanOld = sumP * 0.1;
        double realMeanNew = realSumNew * 0.2;
        double predMeanNew = predSumNew * 0.2;
        if (predMeanNew < 0)
            predMeanNew = 0;
        double realGrowth = realMeanNew / meanOld;
        double predGrowth = predMeanNew / predMeanOld;
        double predScore = log(1 + predGrowth) * predIrdf;
        double realScore = log(1 + realGrowth) * irdf;

        std::vector<double> myScores;
        myScores.push_back(predScore);
        myScores.push_back(realScore);
        for (int i = 0; i <10; i++)
        {
            myScores.push_back(realOldCitations[i]);
        }
        for (int i = 0; i < 5; i++)
        {
            myScores.push_back(realNewCitations[i]);
        }
        for (int i = 0; i < 5; i++)
        {
            myScores.push_back(predNewCitations[i]);
        }
        scores[id] = myScores;
    }
    return save(y, scores);
}
