#ifndef METRICMODEL_H
#define METRICMODEL_H
#include <AbstractTask.h>
#include <ResearchScope.h>
#include <vector>

class MetricModel: public AbstractTask
{
    public:
        MetricModel();
        virtual ~MetricModel();
        virtual bool finished();
        virtual const char *name();
        virtual int numSteps();
        virtual void doStep(int stepId);

    protected:

    private:
};

#endif // METRICMODEL_H
