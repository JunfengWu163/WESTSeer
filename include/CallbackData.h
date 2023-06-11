#ifndef CALLBACKDATA_H
#define CALLBACKDATA_H
#include <string>
#include <vector>
#include <map>
using namespace std;

class CallbackData
{
    public:
        CallbackData();
        virtual ~CallbackData();
        vector<map<string,string>> results;

    protected:

    private:
};

int sqliteCallback(void *pData, int argc, char**argv, char**columnNames);

#endif // CALLBACKDATA_H
