#ifndef TOPICINDENTIFICATION_H
#define TOPICINDENTIFICATION_H
#include <AbstractTask.h>
#include <ResearchScope.h>
#include <CandidateIdentification.h>
#include <BitermWeight.h>
#include <TermExtraction.h>
#include <map>
#include <string>

class TopicIndentification
{
    public:
        TopicIndentification(const std::string path, const std::string kws,
                             TermExtraction *te, BitermWeight *bw, CandidateIdentification *ci);
        virtual ~TopicIndentification();
        virtual bool finished();
        virtual const char *name();
        virtual int numSteps();
        virtual void doStep(int stepId);
        bool load(int y, std::map<uint64_t,std::pair<std::string,std::string>> *topics);

    protected:
        bool save(int y, std::map<uint64_t,std::pair<std::string,std::string>> &topics);
        bool process(int y);

    private:
        int _y0;
        int _y1;
        int _y2;
        ResearchScope _scope;
        TermExtraction *_te;
        BitermWeight *_bw;
        CandidateIdentification *_ci;
};

#endif // TOPICINDENTIFICATION_H
