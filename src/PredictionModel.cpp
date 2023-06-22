#include "PredictionModel.h"

PredictionModel::PredictionModel(const std::string path, const std::string kws,
                        TrainingDataExtraction *tre, TestingDataExtraction *tse, InferenceDataExtraction *ie):_scope(path, kws)
{
    //ctor
}

PredictionModel::~PredictionModel()
{
    //dtor
}

bool PredictionModel::finished()
{

}

const char *PredictionModel::name()
{

}

int PredictionModel::numSteps()
{

}

void PredictionModel::doStep(int stepId)
{

}
