#ifndef SCOPEHISTORY_H
#define SCOPEHISTORY_H
#include <string>
#include <vector>

class ScopeHistory
{
    public:
        ScopeHistory();
        virtual ~ScopeHistory();
        const std::vector<std::string> &history()
        {
            return _history;
        }
        void clear();
        std::string latest();
        void setHistory(const std::vector<std::string> &value);

    protected:

    private:
        std::vector<std::string> _history;
};

#endif // SCOPEHISTORY_H
