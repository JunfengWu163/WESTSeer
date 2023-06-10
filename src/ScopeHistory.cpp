#include "ScopeHistory.h"
#include "../WESTSeerApp.h"

ScopeHistory::ScopeHistory()
{
    //ctor
    wxFileConfig *config = WESTSeerApp::getFileConfig();
    config->SetPath("/ScopeHistory");
    int numScopes = 0;
    config->Read("NumScopes", &numScopes);
    for (int i = 0; i < numScopes; i++)
    {
        wxString scope = wxString::Format("Scope%d", i);
        wxString scopeKeywords = config->Read(scope);
        _history.push_back(scopeKeywords.ToStdString());
    }
}

ScopeHistory::~ScopeHistory()
{
    //dtor
}

void ScopeHistory::clear()
{
    wxFileConfig *config = WESTSeerApp::getFileConfig();
    config->DeleteGroup("/ScopeHistory");
    _history.clear();
}

std::string ScopeHistory::latest()
{
    if (_history.size() > 0)
        return _history[_history.size() - 1];
    else
        return "";
}

void ScopeHistory::setHistory(const std::vector<std::string> &value)
{
    wxFileConfig *config = WESTSeerApp::getFileConfig();
    config->SetPath("/ScopeHistory");
    _history = value;
    int numScopes = _history.size();
    config->Write("NumScopes", numScopes);
    for (int i = 0; i < numScopes; i++)
    {
        wxString scope = wxString::Format("Scope%d", i);
        wxString scopeKeywords(_history[i]);
        config->Write(scope, scopeKeywords);
    }
}
