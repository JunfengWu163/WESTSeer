#ifndef PREDICTIONMODEL_H
#define PREDICTIONMODEL_H
#include <AbstractTask.h>
#include <ResearchScope.h>
#include <TrainingDataExtraction.h>
#include <TestingDataExtraction.h>
#include <InferenceDataExtraction.h>

class PredictionModel: public AbstractTask
{
    public:
        PredictionModel(const std::string path, const std::string kws,
                        TrainingDataExtraction *tre, TestingDataExtraction *tse, InferenceDataExtraction *ie);
        virtual ~PredictionModel();
        virtual bool finished();
        virtual const char *name();
        virtual int numSteps();
        virtual void doStep(int stepId);

    protected:

    private:
        int _y0;
        int _y1;
        int _y2;
        ResearchScope _scope;
        TrainingDataExtraction *_tre;
        TestingDataExtraction *_tse;
        InferenceDataExtraction *_ie;
};

#endif // PREDICTIONMODEL_H
