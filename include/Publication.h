#ifndef PUBLICATION_H
#define PUBLICATION_H
#include <string>
#include <vector>
#include <set>
#include <fstream>
#include <nlohmann/json.hpp>
#include <sqlite3.h>
using namespace std;
using namespace nlohmann;
class Publication
{
public:
    Publication();
    Publication(const string& strJson);
    Publication(const json& jsonWork);
    Publication(const map<string,string>& work);
    Publication(const Publication& another);
    virtual ~Publication();
    void parse(const string& strJson);
    void init(const json& jsonWork);
    void init(const map<string,string>& work);
    void writeWoS(std::ofstream &streamOut, const map<uint64_t, Publication> &publications);
    inline uint64_t id()
    {
        return _id;
    }
    inline int year()
    {
        return _year;
    }
    inline string title()
    {
        return _title;
    }
    inline string abstract()
    {
        return _abstract;
    }
    inline string source()
    {
        return _source;
    }
    inline string language()
    {
        return _language;
    }
    inline const vector<string> authors()
    {
        return _authors;
    }
    inline const vector<uint64_t> refIds()
    {
        return _refIds;
    }
    inline int numRefs()
    {
        return _refIds.size();
    }
    inline uint64_t refId(int i)
    {
        return _refIds[i];
    }
    static uint64_t convertId(const std::string idString, const char chType);
    static string convertId(const uint64_t id, const char chType);

protected:

private:
    uint64_t _id;
    int _year;
    string _title;
    string _abstract;
    string _source;
    string _language;
    vector<string> _authors;
    vector<uint64_t> _refIds;
};

#endif // PUBLICATION_H
