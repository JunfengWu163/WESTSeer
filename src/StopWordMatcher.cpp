#include "StopWordMatcher.h"
#include <StopWords.h>
#include <StringProcessing.h>

StopWordMatcher::StopWordMatcher()
{
    _type = PART;

    //ctor
    for (char c = '!'; c < '0'; c++)
    {
        std::string s;
        s += c;
        insertToken(s, true);
    }
    for (char c = ':'; c < 'A'; c++)
    {
        std::string s;
        s += c;
        insertToken(s, true);
    }
    for (char c = '['; c < 'a'; c++)
    {
        std::string s;
        s += c;
        insertToken(s, true);
    }
    for (char c = '{'; c <= '~'; c++)
    {
        std::string s;
        s += c;
        insertToken(s, true);
    }

    for (const char* stopword: SmartStopList)
    {
        std::string s(stopword);
        std::vector<std::string> tokens = tokenize(s);
        insertTerm(tokens, 0);
    }
}

StopWordMatcher::StopWordMatcher(Type type)
{
    _type = type;
}

StopWordMatcher::~StopWordMatcher()
{
    //dtor
}

AbstractMatcher *StopWordMatcher::insertToken(const std::string &token, bool last)
{
    std::string normalToken = normalize(token);
    auto tokenToSub = _subMatchers.find(normalToken);
    if (tokenToSub != _subMatchers.end())
        return tokenToSub->second;
    StopWordMatcher * sub = new StopWordMatcher(last ? STOP_WORD : PART);
    _subMatchers[normalToken] = sub;
    return sub;
}

AbstractMatcher *StopWordMatcher::matchToken(const std::string &token)
{
    std::string normalToken = normalize(token);
    auto tokenToSub = _subMatchers.find(normalToken);
    return tokenToSub != _subMatchers.end() ? tokenToSub->second : NULL;
}
