#include "TopicIndentification.h"
#include <../WESTSeerApp.h>
#include <GeneralConfig.h>
#include <StringProcessing.h>
#include <CallbackData.h>

TopicIndentification::TopicIndentification(const std::string path,
        const std::string kws, TermExtraction *te, BitermWeight *bw,
        CandidateIdentification *ci): _scope(path, kws)
{
    //ctor
    GeneralConfig config;
    _y2 = WESTSeerApp::year();
    _y1 = _y2 - 5;
    _y0 = _y2 - config.getObYears();
    _te = te;
    _bw = bw;
    _ci = ci;
}

TopicIndentification::~TopicIndentification()
{
    //dtor
}

bool TopicIndentification::finished()
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

const char *TopicIndentification::name()
{
    return "Topic identification";
}

int TopicIndentification::numSteps()
{
    return _y1 - _y0 - 12;
}

void TopicIndentification::doStep(int stepId)
{
    if (stepId > 1)
        process(_y1 - stepId + 2);
    else if (stepId == 1)
        process(_y2);
    else
        process(_y2 + 5);
}

bool TopicIndentification::load(int y, std::map<uint64_t,std::pair<std::string,std::string>> *topics)
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

    // step 1: load topics
    std::string keywords = _scope.getKeywords();
    if (topics != NULL)
    {
        CallbackData data;
        std::stringstream ss;
        ss << "SELECT id, scope_keywords, year, topic FROM pub_scope_topics WHERE scope_keywords = '"
            << keywords << "' AND year = " << y << ";";
        std::string strSql = ss.str();
        rc = sqlite3_exec(db, strSql.c_str(), CallbackData::sqliteCallback, &data, &errorMessage);
        if (rc != SQLITE_OK)
        {
            logDebug(errorMessage);
            sqlite3_close(db);
            return false;
        }
        for (auto &result: data.results)
        {
            uint64_t id = std::stoull(result["id"]);
            vector<std::string> strTopics = splitString(result["topic"],":");
            std::pair<std::string,std::string> topic(strTopics[0], strTopics[1]);
            (*topics)[id] = topic;
        }
    }

    // step 2: load token
    {
        CallbackData data;
        std::stringstream ss;
        ss << "SELECT keywords, year FROM scope_topic_token WHERE keywords = '"
            << keywords << "' AND year = " << y << ";";
        std::string strSql = ss.str();
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

bool TopicIndentification::save(int y, std::map<uint64_t,std::pair<std::string,std::string>> &topics)
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
        "CREATE TABLE IF NOT EXISTS pub_scope_topics("
        "id INTEGER,"
        "scope_keywords TEXT,"
        "year INTEGER,"
        "topic TEXT,"
        "PRIMARY KEY(id,scope_keywords,year));",

        "CREATE TABLE IF NOT EXISTS scope_topic_token("
        "keywords TEXT,"
        "year INTEGER,"
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

    // step 2: save topics
    std::string keywords = _scope.getKeywords();
    {
        std::stringstream ss;
        ss << "INSERT OR IGNORE INTO pub_scope_topics(id, scope_keywords, year, topic) VALUES ";
        for (auto idToTopic = topics.begin(); idToTopic != topics.end(); idToTopic++)
        {
            if (idToTopic != topics.begin())
                ss << ",";
            ss << "(" << idToTopic->first << ",'" << keywords << "'," << y
                << ",'" << idToTopic->second.first << ":" << idToTopic->second.second
                << "')";
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

    // step 3: save token
    time_t t;
    time(&t);
    {
        std::stringstream ss;
        ss << "INSERT OR IGNORE INTO scope_topic_token(keywords, year, update_time) VALUES ('"
            << keywords << "'," << y << "," << (int)t << ");";
        std::string strSql = ss.str();
        logDebug(strSql.c_str());
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

bool TopicIndentification::process(int y)
{
    // step 1: load candidates
    std::set<uint64_t> candidateSet;
    {
        std::vector<uint64_t> candidates;
        if (!_ci->load(y, &candidates))
            return false;
        candidateSet.insert(candidates.begin(), candidates.end());
    }

    // step 2: load publications to get citers
    std::map<uint64_t, std::vector<uint64_t>> citers;
    for (int i = 0; i < 10; i++)
    {
        int yi = y - 6 - i;
        std::map<uint64_t, std::vector<uint64_t>> pubs;
        if (!_scope.getExistingRefIds(yi, pubs))
            return false;
        for (auto &idToRefIds: pubs)
        {
            uint64_t id = idToRefIds.first;
            for (uint64_t refId: idToRefIds.second)
            {
                if (candidateSet.find(refId) != candidateSet.end())
                {
                    auto refIdToIds = citers.find(refId);
                    if (refIdToIds != citers.end())
                    {
                        citers[refId].push_back(id);
                    }
                    else
                    {
                        std::vector<uint64_t> temp;
                        temp.push_back(id);
                        citers[refId] = temp;
                    }
                }
            }
        }
    }

    // step 3: load publication terms
    std::map<uint64_t, std::map<std::string, std::pair<std::string,int>>> pubTerms;
    for (int i = 0; i < 10; i++)
    {
        int yi = y - 6 - i;
        std::map<uint64_t, std::map<std::string, std::pair<std::string,int>>> pubTermsOfYi;
        if (!_te->load(yi, &pubTermsOfYi, false))
            return false;
        pubTerms.insert(pubTermsOfYi.begin(), pubTermsOfYi.end());
    }

    // step 4: load biterm weights
    std::map<uint64_t, std::map<std::string, double>> pubBWs;
    for (int i = 0; i < 10; i++)
    {
        int yi = y - 6 - i;
        std::map<uint64_t, std::map<std::string, double>> pubBWsOfYi;
        if (!_bw->load(yi, &pubBWsOfYi))
            return false;
        pubBWs.insert(pubBWsOfYi.begin(), pubBWsOfYi.end());
    }

    // step 6: for each candidate, identify topic by the weights of the biterms
    std::map<uint64_t, std::pair<std::string, std::string>> topics;
    GeneralConfig config;
    size_t numBitermsPerTopic = (size_t)config.getBiterms();
    for (auto refIdToIds = citers.begin(); refIdToIds != citers.end(); refIdToIds++)
    {
        // get candidate id
        uint64_t cid = refIdToIds->first;
        // create counters for the biterms
        std::map<std::string, double> sumBWs;
        for (uint64_t id : refIdToIds->second)
        {
            auto idToBWs = pubBWs.find(id);
            if (idToBWs == pubBWs.end())
                continue;

            // compute mean and var
            double sum1 = 0.0, sum2 = 0.0;
            for (auto bToW: idToBWs->second)
            {
                sum1 += bToW.second;
                sum2 += bToW.second * bToW.second;
            }
            size_t n = idToBWs->second.size();;
            double mu = sum1 / n;
            double sigma = sum2 / n - mu * mu;
            if (sigma <= 0.0)
                sigma = 1.0;
            else
                sigma = sqrt(sigma);
            double sqrt2 = sqrt(2.0);
            double sigmaSqrt2 = sigma * sqrt2;

            // normalize weights and add them to sumBWs
            for (auto bToW: idToBWs->second)
            {
                double t = (bToW.second - mu) / sigmaSqrt2;
                double w = 0.5 + 0.5 * erf(t);
                auto bToSumW = sumBWs.find(bToW.first);
                if (bToSumW != sumBWs.end())
                {
                    sumBWs[bToW.first] = bToSumW->second + w;
                }
                else
                {
                    sumBWs[bToW.first] = w;
                }
            }
        }

        // find top k biterms
        std::vector<double> ws;
        for (auto bToSumW: sumBWs)
        {
            ws.push_back(bToSumW.second);
        }
        std::sort(ws.begin(), ws.end());
        double threshold = 0.0;
        if (ws.size() > numBitermsPerTopic)
        {
            threshold = ws[ws.size() - 1 - numBitermsPerTopic];
        }
        std::vector<std::string> topKBiterms;
        for (auto bToSumW: sumBWs)
        {
            if (bToSumW.second > threshold)
            {
                topKBiterms.push_back(bToSumW.first);
            }
        }
        // handles the situation where some top k weights equal threshold
        for (auto bToSumW: sumBWs)
        {
            if (bToSumW.second == threshold && topKBiterms.size() < numBitermsPerTopic)
            {
                topKBiterms.push_back(bToSumW.first);
                if (topKBiterms.size() == numBitermsPerTopic)
                    break;
            }
        }

        // find the most frequent representations of the top k biterms
        std::vector<std::string> topKBiterms2;
        topKBiterms2.resize(topKBiterms.size());
        for (size_t i = 0; i < topKBiterms.size(); i++)
        {
            std::vector<std::string> terms = splitString(topKBiterms[i], "&");
            std::map<std::string, int> term1Dfs;
            std::map<std::string, int> term2Dfs;
            for (uint64_t id : refIdToIds->second)
            {
                auto idToTerms = pubTerms.find(id);
                if (idToTerms == pubTerms.end())
                    continue;
                auto term1Info = idToTerms->second.find(terms[0]);
                if (term1Info == idToTerms->second.end())
                    continue;
                auto term2Info = idToTerms->second.find(terms[1]);
                if (term2Info == idToTerms->second.end())
                    continue;
                std::string term1 = term1Info->second.first;
                std::string term2 = term2Info->second.first;

                auto term1ToDf = term1Dfs.find(term1);
                if (term1ToDf == term1Dfs.end())
                {
                    term1Dfs[term1] = 1;
                }
                else
                {
                    term1Dfs[term1] = term1ToDf->second + 1;
                }

                auto term2ToDf = term2Dfs.find(term2);
                if (term2ToDf == term2Dfs.end())
                {
                    term2Dfs[term2] = 1;
                }
                else
                {
                    term2Dfs[term2] = term2ToDf->second + 1;
                }
            }

            int maxDf1 = 0;
            std::string term1 = terms[0];
            for (auto term1ToDf: term1Dfs)
            {
                if (term1ToDf.second > maxDf1)
                {
                    maxDf1 = term1ToDf.second;
                    term1 = term1ToDf.first;
                }
            }

            int maxDf2 = 0;
            std::string term2 = terms[1];
            for (auto term2ToDf: term2Dfs)
            {
                if (term2ToDf.second > maxDf2)
                {
                    maxDf2 = term2ToDf.second;
                    term2 = term2ToDf.first;
                }
            }

            topKBiterms2[i] = term1 + "&" + term2;
        }

        // create topic representation
        std::string rep1, rep2;
        for (size_t i = 0; i < topKBiterms.size(); i++)
        {
            if (i > 0)
            {
                rep1 += "|";
                rep2 += "|";
            }
            rep1 += topKBiterms[i];
            rep2 += topKBiterms2[i];
        }

        // record topic
        std::pair<std::string,std::string> topic(rep1,rep2);
        topics[cid] = topic;
    }
    return save(y, topics);
}
