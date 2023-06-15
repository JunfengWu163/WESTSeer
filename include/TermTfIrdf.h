#ifndef TERMTFIRDF_H
#define TERMTFIRDF_H
#include <AbstractTask.h>

class TermTfIrdf: public AbstractTask
{
    public:
        TermTfIrdf();
        virtual ~TermTfIrdf();
        virtual bool finished();
        virtual const char *name();
        virtual int numSteps();
        virtual void doStep(int stepId);

    protected:

    private:
};

#endif // TERMTFIRDF_H
