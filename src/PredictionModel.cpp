#include "PredictionModel.h"
#include <../WESTSeerApp.h>
#include <GeneralConfig.h>
#include <StringProcessing.h>
#include <CallbackData.h>

PredictionModel::PredictionModel(const std::string path, const std::string kws, const std::string modelFileName, TimeSeriesExtraction *tse):_scope(path, kws),_model(modelFileName.c_str())
{
    //ctor
    GeneralConfig config;
    _y2 = WESTSeerApp::year();
    _y1 = _y2 - 5;
    _y0 = _y2 - config.getObYears();
    _tse = tse;
}

PredictionModel::~PredictionModel()
{
    //dtor
}

bool PredictionModel::finished()
{
    if (!load(_y2, NULL))
        return false;
    if (!load(_y2 + 5, NULL))
        return false;
    return true;
}

const char *PredictionModel::name()
{
    return "Prediction Model";
}

int PredictionModel::numSteps()
{
    return 1;
}

void PredictionModel::doStep(int stepId)
{
    process();
}

bool PredictionModel::load(int y, std::map<uint64_t, std::pair<Eigen::MatrixXd,Eigen::MatrixXd>> *prediction)
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
    if (prediction != NULL)
    {
        CallbackData data;
        std::stringstream ss;
        ss << "SELECT id, scope_keywords, year, prm, srm FROM pub_scope_prediction WHERE keywords = '"
            << keywords << "' AND year = " << y << ";";
        std::string strSql = ss.str();
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
            Eigen::MatrixXd prm = deserializeMatrix(result["prm"]);
            Eigen::MatrixXd srm = deserializeMatrix(result["srm"]);
            std::pair<Eigen::MatrixXd,Eigen::MatrixXd> tsm(prm,srm);
            (*prediction)[id] = tsm;
        }
    }

    // step 2: load token
    {
        CallbackData data;
        std::stringstream ss;
        ss << "SELECT keywords, year FROM scope_prediction_token WHERE keywords = '"
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

bool PredictionModel::save(int y, std::map<uint64_t, std::pair<Eigen::MatrixXd,Eigen::MatrixXd>> &prediction)
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
        "CREATE TABLE IF NOT EXISTS scope_prediction_token("
        "keywords TEXT,"
        "year INTEGER,"
        "update_time INTEGER,"
        "PRIMARY KEY(keywords,year));",

        "CREATE TABLE IF NOT EXISTS pub_scope_prediction("
        "id INTEGER,"
        "scope_keywords TEXT,"
        "year INTEGER,"
        "prm TEXT,"
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
        ss << "INSERT OR IGNORE INTO pub_scope_prediction(id, scope_keywords, year, prm, srm) VALUES ";
        for (auto idToTS = prediction.begin(); idToTS != prediction.end(); idToTS++)
        {
            uint64_t id = idToTS->first;
            Eigen::MatrixXd prm = idToTS->second.first;
            Eigen::MatrixXd srm = idToTS->second.second;
            std::string strPrm = serializeMatrix(prm);
            std::string strSrm = serializeMatrix(srm);
            if (idToTS != prediction.begin())
                ss << ",";
            ss << "(" << id << ",'" << keywords << "'," << y << ",'"
                << strPrm << "','" << strSrm << "')";
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
        ss << "INSERT OR IGNORE INTO scope_prediction_token(keywords,year,update_time) VALUES ('"
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

bool PredictionModel::process()
{
    // step 1: load time series for training
    int nTrainingWindows = _y1 - _y0 - 14;
    std::vector<Eigen::MatrixXd> input;
    std::vector<Eigen::MatrixXd> target;
    for (int i = 0; i < nTrainingWindows; i++)
    {
        std::map<uint64_t, TimeSeriesMatrices> timeSeries;
        if (!_tse->load(_y1 - nTrainingWindows + 1 + i, &timeSeries))
            return false;
        for (auto &idToMatrices: timeSeries)
        {
            input.push_back(idToMatrices.second.first.first);
            target.push_back(idToMatrices.second.first.second);
            input.push_back(idToMatrices.second.second.first);
            target.push_back(idToMatrices.second.second.second);
        }
    }

    // step 2: start training
    const int numTrainingSteps = 300;
    const int batchSize = 100;
    _model.init();
    for (int step = 0; step < numTrainingSteps; step++)
    {
        _model.runTrainStep(input, target, batchSize);
    }

    // step 3: predict
    {
        std::map<uint64_t, std::pair<Eigen::MatrixXd,Eigen::MatrixXd>> prediction;

        std::map<uint64_t, TimeSeriesMatrices> timeSeries;
        if (!_tse->load(_y2, &timeSeries))
            return false;
        std::vector<Eigen::MatrixXd> predInput;
        std::vector<uint64_t> ids;
        for (auto &idToMatrices: timeSeries)
        {
            predInput.push_back(idToMatrices.second.first.first);
            predInput.push_back(idToMatrices.second.second.first);
            ids.push_back(idToMatrices.first);
        }
        std::vector<Eigen::MatrixXd> predOutput = _model.predict(predInput, 5);
        for (size_t i = 0; i < ids.size(); i++)
        {
            uint64_t id = ids[i];
            std::pair<Eigen::MatrixXd,Eigen::MatrixXd> tsm(predOutput[i + i], predOutput[i + i + 1]);
            prediction[id] = tsm;
        }

        save(_y2, prediction);
    }

    {
        std::map<uint64_t, std::pair<Eigen::MatrixXd,Eigen::MatrixXd>> prediction;

        std::map<uint64_t, TimeSeriesMatrices> timeSeries;
        if (!_tse->load(_y2 + 5, &timeSeries))
            return false;
        std::vector<Eigen::MatrixXd> predInput;
        std::vector<uint64_t> ids;
        for (auto &idToMatrices: timeSeries)
        {
            predInput.push_back(idToMatrices.second.first.first);
            predInput.push_back(idToMatrices.second.second.first);
            ids.push_back(idToMatrices.first);
        }
        std::vector<Eigen::MatrixXd> predOutput = _model.predict(predInput, 5);
        for (size_t i = 0; i < ids.size(); i++)
        {
            uint64_t id = ids[i];
            std::pair<Eigen::MatrixXd,Eigen::MatrixXd> tsm(predOutput[i + i], predOutput[i + i + 1]);
            prediction[id] = tsm;
        }

        save(_y2 + 5, prediction);
    }

    return true;
}
