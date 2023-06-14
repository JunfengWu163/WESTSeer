#include "AbstractMatcher.h"

AbstractMatcher::AbstractMatcher()
{
    //ctor
    _type = PART;
}

AbstractMatcher::~AbstractMatcher()
{
    //dtor
    for (auto tokenToSub: _subMatchers)
    {
        delete tokenToSub.second;
    }
}

std::vector<AbstractMatcher::Type> AbstractMatcher::match(const std::vector<std::string> &term, int i)
{
    std::vector<Type> result;
    if (i < 0 || i >= (int) term.size())
        return result;

    AbstractMatcher *next = this->matchToken(term[i]);
    while (next != NULL)
    {
        result.push_back(next->_type);
        int nextI = i + result.size();
        if (nextI < (int) term.size())
            next = next->matchToken(term[nextI]);
        else
            next = NULL;
    }
    return result;
}

void AbstractMatcher::insertTerm(const std::vector<std::string> &term, int i)
{
    if (i < 0)
        return;
    if (i == (int) term.size() - 1)
    {
        insertToken(term[i], true);
    }
    else if (i < (int) term.size())
    {
        AbstractMatcher *sub = matchToken(term[i]);
        if (sub == NULL)
            sub = insertToken(term[i], false);
        sub->insertTerm(term, i+1);
    }
}
