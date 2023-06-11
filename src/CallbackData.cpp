#include "CallbackData.h"

CallbackData::CallbackData()
{
    //ctor
}

CallbackData::~CallbackData()
{
    //dtor
}

int sqliteCallback(void *pData, int argc, char**argv, char**columnNames)
{
    CallbackData *data = (CallbackData *)pData;
    map<string,string> result;
    for (int i = 0; i < argc; i++)
    {
        result[columnNames[i]] = argv[i] ? argv[i] : "NULL";
    }
    data->results.push_back(result);
    return 0;
}
