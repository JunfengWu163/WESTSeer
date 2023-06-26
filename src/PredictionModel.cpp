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
    _name = "Prediction Training";
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
    if (_loss.size() > 0)
    {
        std::stringstream ss;
        ss << "Prediction Training (" << _loss[_loss.size() - 1] << ")";
        _name = ss.str();
    }
    return _name.c_str();
}

int PredictionModel::numSteps()
{
    return 100;
}

void PredictionModel::doStep(int stepId)
{
    process(stepId);
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
        ss << "SELECT id, scope_keywords, year, prm, srm FROM pub_scope_prediction WHERE scope_keywords = '"
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
            << keywords << "' AND year = " << _y2 << ";";
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
        "loss TEXT,"
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

    sqlite3_close(db);
    return true;
}

bool PredictionModel::save(int y, std::vector<double> &loss)
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

    // insert token
    std::string keywords = _scope.getKeywords();
    time_t t;
    time(&t);
    {
        std::stringstream ss;
        ss << "INSERT OR IGNORE INTO scope_prediction_token(keywords,year,loss,update_time) VALUES ('"
            << keywords << "'," << y << ",'" << getVectorStr(loss) << "'," << (int) t << ");";
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

Eigen::MatrixXd mergeRows(const Eigen::MatrixXd &A1, const Eigen::MatrixXd &A2)
{
    int nRows1 = A1.rows();
    int nRows2 = A2.rows();
    int nCols1 = A1.cols();
    int nCols2 = A2.cols();
    if (nRows1 != nRows2 || nCols1 != nCols2)
    {
        logError("The sizes of matrices to merge are different in mergeRows.");
    }
    int nRows = nRows1 + nRows2;
    int nCols = nCols1;
    Eigen::MatrixXd A(nRows, nCols);
    for (int r = 0; r < nRows; r++)
    {
        //double w = r == 0 ? 1.0 : 0.1;
        for (int c = 0; c < nCols; c++)
        {
            A(r,c) = r < nRows1 ? A1(r,c): A2(r-nRows1,c);
        }
    }
    return A;
}

std::pair<Eigen::MatrixXd,Eigen::MatrixXd> splitRows(const Eigen::MatrixXd &A)
{
    int nRows = A.rows();
    int nCols = A.cols();
    int nRows1 = nRows / 2;
    int nRows2 = nRows - nRows1;
    Eigen::MatrixXd A1(nRows1, nCols), A2(nRows2, nCols);
    for (int r = 0; r < nRows1; r++)
    {
        //double w = r == 0 ? 1.0 : 10.0;
        for (int c = 0; c < nCols; c++)
        {
            A1(r,c) = A(r,c);
        }
    }
    for (int r = 0; r < nRows2; r++)
    {
        //double w = 10.0;
        for (int c = 0; c < nCols; c++)
        {
            A2(r,c) = A(r+nRows1,c);
        }
    }
    std::pair<Eigen::MatrixXd, Eigen::MatrixXd> result(A1,A2);
    return result;
}

bool PredictionModel::process(int iStep)
{
    // step 1: load time series for training
    if (iStep == 0)
    {
        int nTrainingWindows = _y1 - _y0 - 14;
        for (int i = 0; i < nTrainingWindows; i++)
        {
            std::map<uint64_t, TimeSeriesMatrices> timeSeries;
            if (!_tse->load(_y1 - nTrainingWindows + 1 + i, &timeSeries))
                return false;
            for (auto &idToMatrices: timeSeries)
            {
                _input.push_back(mergeRows(idToMatrices.second.first.first,idToMatrices.second.second.first));
                _target.push_back(mergeRows(idToMatrices.second.first.second,idToMatrices.second.second.second));
            }
        }
        _model.init();
        _loss.push_back(_model.loss(_input, _target));
    }


    // step 2: start training
    for (int step = 0; step < 300; step++)
    {
        _model.runTrainStep(_input, _target);
    }
    _loss.push_back(_model.loss(_input, _target));

    // step 3: predict
    if (iStep == 99)
    {
        int ys[2] = {_y2, _y2 + 5};
        for (int y: ys)
        {
            std::map<uint64_t, std::pair<Eigen::MatrixXd,Eigen::MatrixXd>> prediction;

            std::map<uint64_t, TimeSeriesMatrices> timeSeries;
            if (!_tse->load(y, &timeSeries))
                return false;
            std::vector<Eigen::MatrixXd> predInput;
            std::vector<uint64_t> ids;
            for (auto &idToMatrices: timeSeries)
            {
                predInput.push_back(mergeRows(idToMatrices.second.first.first,idToMatrices.second.second.first));
                ids.push_back(idToMatrices.first);
            }
            std::vector<Eigen::MatrixXd> predOutput = _model.predict(predInput, 5);
            for (size_t i = 0; i < ids.size(); i++)
            {
                uint64_t id = ids[i];
                prediction[id] = splitRows(predOutput[i]);
            }

            save(y, prediction);
        }

        save(_y2, _loss);
    }


    return true;
}
