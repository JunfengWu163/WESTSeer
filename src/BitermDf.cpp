#include "BitermDf.h"
#include <../WESTSeerApp.h>
#include <GeneralConfig.h>
#include <CallbackData.h>
#include <wxFFileLog.h>
#include <StringProcessing.h>
#include <cstdlib>
#include <sstream>
#include <set>

BitermDf::BitermDf(const std::string path, const std::string kws, TermTfIrdf *tt) : _scope(path, kws)
{
    //ctor
    GeneralConfig config;
    _y2 = WESTSeerApp::year();
    _y1 = _y2 - 5;
    _y0 = _y2 - config.getObYears();
    _tt = tt;
}

BitermDf::~BitermDf()
{
    //dtor
}

bool BitermDf::finished()
{
    int n = numSteps();
    for (int i = 0; i < n; i++)
    {
        if (!load(_y0 + i, NULL))
            return false;
    }
    return true;
}

const char *BitermDf::name()
{
    return "Biterm Document Frequencies Counting.";
}

int BitermDf::numSteps()
{
    return _y1 - _y0;
}

void BitermDf::doStep(int stepId)
{
    process(_y0 + stepId);
}

bool BitermDf::load(int y, std::map<std::string, int> *bitermDfs)
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
    CallbackData data;
    char *errorMessage = NULL;

    // step 1: load scope bitermDfs
    std::string keywords = _scope.getKeywords();
    if (bitermDfs != NULL)
    {
        bitermDfs->clear();
        {
            std::stringstream ss;
            ss << "SELECT biterm, scope_keywords, year, freq FROM scope_dfs WHERE scope_keywords = '"
                << keywords << "' AND year = " << y << ";";
            logDebug(ss.str().c_str());
            rc = sqlite3_exec(db, ss.str().c_str(), CallbackData::sqliteCallback, &data, &errorMessage);
            if (rc != SQLITE_OK)
            {
                logDebug(errorMessage);
                sqlite3_close(db);
                return false;
            }
            for (auto &result: data.results)
            {
                std::string biterm = result["biterm"];
                int freq = atoi(result["freq"].c_str());
                (*bitermDfs)[biterm] = freq;
            }
        }
    }

    data.results.clear();
    {
        std::stringstream ss;
        ss << "SELECT keywords, year FROM scope_bdf_tokens WHERE keywords = '"
            << keywords << "' AND year = " << y << ";";
        logDebug(ss.str().c_str());
        rc = sqlite3_exec(db, ss.str().c_str(), CallbackData::sqliteCallback, &data, &errorMessage);
        if (rc != SQLITE_OK)
        {
            logDebug(errorMessage);
            sqlite3_close(db);
            return false;
        }
    }
    sqlite3_close(db);
    return data.results.size() > 0;
}

bool BitermDf::save(int y, const std::map<std::string, int> &bitermDfs)
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
        "CREATE TABLE IF NOT EXISTS scope_bdfs("
        "biterm TEXT,"
        "scope_keywords TEXT,"
        "year INTEGER,"
        "freq INTEGER,"
        "PRIMARY KEY(biterm,scope_keywords,year))",

        "CREATE TABLE IF NOT EXISTS scope_bdf_tokens("
        "keywords TEXT,"
        "year INTEGER,"
        "update_time INTEGER,"
        "PRIMARY KEY(keywords,year))",
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

    // step 2: save biterm dfs
    std::string keywords = _scope.getKeywords();
    for (auto btToDf = bitermDfs.begin(); btToDf != bitermDfs.end(); btToDf++)
    {
        std::string bt = btToDf->first;
        int freq = btToDf->second;
        std::stringstream ss;
        ss << "INSERT OR IGNORE INTO scope_bdfs(biterm, scope_keywords, year, freq) VALUES ('"
            << bt << "','" << keywords << "'," << y << "," << freq << ");";
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

    // step 3: save scope bdf token
    {
        time_t t;
        time(&t);
        std::stringstream ss;
        ss << "INSERT OR IGNORE INTO scope_bdf_tokens(keywords, year, update_time) VALUES ('"
            << keywords << "'," << y << "," << (int)t << ");";
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

bool BitermDf::process(int y)
{
    // step 1: load publication scope tfirdfs
    std::map<uint64_t, std::map<std::string, double>> tfirdfs;
    if (!_tt->load(y, &tfirdfs, false))
        return false;

    // step 2: compute mean tfirdf in publication
    std::map<uint64_t, double> meanTfirdfs;
    for (auto idToWorkTfirdfs = tfirdfs.begin(); idToWorkTfirdfs != tfirdfs.end(); idToWorkTfirdfs++)
    {
        double sumTfirdfs = 0.0;
        int n = 0;
        for (auto termToTfirdf = idToWorkTfirdfs->second.begin(); termToTfirdf != idToWorkTfirdfs->second.end(); termToTfirdf++)
        {
            sumTfirdfs += termToTfirdf->second;
            n++;
        }
        double meanTfirdf = sumTfirdfs / n;
        meanTfirdfs[idToWorkTfirdfs->first] = meanTfirdf;
        if (_cancelled.load() == true)
        {
            return false;
        }
    }

    // step 3: count biterm df for those with two terms of tfirdf above mean
    std::map<std::string, int> bdfs;
    for (auto idToWorkTfirdfs = tfirdfs.begin(); idToWorkTfirdfs != tfirdfs.end(); idToWorkTfirdfs++)
    {
        double mean = meanTfirdfs[idToWorkTfirdfs->first];
        for (auto iter1 = idToWorkTfirdfs->second.begin(); iter1 != idToWorkTfirdfs->second.end(); iter1++)
        {
            if (iter1->second < mean)
                continue;
            for (auto iter2 = idToWorkTfirdfs->second.begin(); iter2 != idToWorkTfirdfs->second.end(); iter2++)
            {
                if (iter2->second < mean)
                    continue;
                if (iter1->first < iter2->first)
                {
                    std::string biterm = iter1->first + "&" + iter2->first;
                    auto btToDf = bdfs.find(biterm);
                    if (btToDf == bdfs.end())
                    {
                        bdfs[biterm] = 1;
                    }
                    else
                    {
                        bdfs[biterm] = btToDf->second + 1;
                    }
                }
            }
        }
        if (_cancelled.load() == true)
        {
            return false;
        }
    }

    // step 4: save biterm dfs
    return save(y, bdfs);
}
