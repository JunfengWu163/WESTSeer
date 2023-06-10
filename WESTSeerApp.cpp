/***************************************************************
 * Name:      WESTSeerApp.cpp
 * Purpose:   Code for Application Class
 * Author:    Junfeng Wu (wujunfeng@vip.163.com)
 * Created:   2023-06-11
 * Copyright: Junfeng Wu (https://westseer.org)
 * License:
 **************************************************************/

#include "WESTSeerApp.h"
#include <wx/stdpaths.h>
#include <wx/filefn.h>
#include <GeneralConfig.h>
#include "SettingsDialog.h"
#include <string>

//(*AppHeaders
#include "WESTSeerMain.h"
#include <wx/image.h>
//*)

IMPLEMENT_APP(WESTSeerApp);

wxFileConfig *WESTSeerApp::_fileConfig = NULL;

wxFileConfig *WESTSeerApp::getFileConfig()
{
    return _fileConfig;
}

bool WESTSeerApp::OnInit()
{
    // create app directory if not exists
    wxString appDir = wxStandardPaths::Get().GetUserLocalDataDir();
	if (!wxDirExists(appDir))
    {
        wxMkdir(appDir);
    }

    // create INI file in user's directory
	wxString iniFileName = wxFileName(appDir, "config.ini").GetFullPath();
	_fileConfig = new wxFileConfig(wxT("WESTSeer"), wxT("westseer.org"), iniFileName);
	wxConfigBase::Set(_fileConfig);

	// start logging
	wxString logFileName(wxFileName(appDir, "log.txt").GetFullPath());
    _log = new wxFFileLog(logFileName);
    if (_log->IsLogFileOK())
    {
        _logChain = new wxLogChain(_log);
    }
    else
    {
        wxString msg;

        msg.Printf(_("Could not initialize the application log (file \"%s\"). \n\nContinue anyway?"),
            _log->GetLogFileName());
        delete _log;

        if ( wxMessageBox(msg, _("Error"), wxYES_NO | wxICON_ERROR, NULL)
             != wxYES )
        {
            return false;
        }
    }

    // first time init
    std::string email;
    {
        GeneralConfig config;
        email = config.getEmail();
    }
    if (email == "")
    {
        SettingsDialog dlg(NULL);
        dlg.ShowModal();
        GeneralConfig config;
        email = config.getEmail();
        if (email == "")
            return false;
    }

    //(*AppInitialize
    bool wxsOK = true;
    wxInitAllImageHandlers();
    if ( wxsOK )
    {
    	WESTSeerFrame* Frame = new WESTSeerFrame(0);
    	Frame->Show();
    	SetTopWindow(Frame);
    }
    //*)
    return wxsOK;

}

int WESTSeerApp::OnExit()
{
    if(_fileConfig) {
		_fileConfig->Flush();
		delete _fileConfig;
		_fileConfig=NULL;
	}
	if (_log) {
        wxLog::SetActiveTarget(NULL);
        delete _logChain;
        delete _log;
	}
	wxConfigBase::Set(NULL);
	return 0;
}
