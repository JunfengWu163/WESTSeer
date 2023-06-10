#ifndef RESEARCHSCOPE_H
#define RESEARCHSCOPE_H
#include <cstdint>
#include <string>
#include <vector>
#include <map>
#include <Publication.h>

class ResearchScope
{
    public:
        ResearchScope(const std::string path, const std::string kws1, const std::string kws2);
        ResearchScope(const std::string path, const std::string keywords);
        virtual ~ResearchScope();
        bool init();
        int numCombinations();
        std::string getCombination(int i);
        bool load(int idxComb, const int y, std::map<uint64_t, Publication> &pubOfY);
        bool save(int idxComb, const int y, const std::map<uint64_t, Publication> &pubsOfY);
        bool save(const std::map<uint64_t, Publication> &pubsOfY);
        bool getMissingRefIds(int idxComb, const int y, std::vector<uint64_t> &missingRefIds);

        static std::vector<std::string> getResearchScopes(const std::string path);

    protected:
        bool storable();
        std::string getKeywords();
        std::string getCombinations();

    private:
        std::string _path;
        std::vector<std::string> _kws1;
        std::vector<std::string> _kws2;
};

#endif // RESEARCHSCOPE_H
