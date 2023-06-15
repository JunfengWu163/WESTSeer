/***************************************************************
 * Name:      WESTSeerMain.cpp
 * Purpose:   Code for Application Frame
 * Author:    Junfeng Wu (wujunfeng@vip.163.com)
 * Created:   2023-06-11
 * Copyright: Junfeng Wu (https://westseer.org)
 * License:
 **************************************************************/

#include "WESTSeerMain.h"
#include "OpenAlexImportDialog.h"
#include "SettingsDialog.h"
#include "SQLDialog.h"
#include "LogDialog.h"
#include <GeneralConfig.h>
#include <wx/msgdlg.h>

//(*InternalHeaders(WESTSeerFrame)
#include <wx/bitmap.h>
#include <wx/icon.h>
#include <wx/image.h>
#include <wx/intl.h>
#include <wx/string.h>
//*)

//helper functions
enum wxbuildinfoformat {
    short_f, long_f };

wxString wxbuildinfo(wxbuildinfoformat format)
{
    wxString wxbuild(wxVERSION_STRING);

    if (format == long_f )
    {
#if defined(__WXMSW__)
        wxbuild << _T("-Windows");
#elif defined(__UNIX__)
        wxbuild << _T("-Linux");
#endif

#if wxUSE_UNICODE
        wxbuild << _T("-Unicode build");
#else
        wxbuild << _T("-ANSI build");
#endif // wxUSE_UNICODE
    }

    return wxbuild;
}

//(*IdInit(WESTSeerFrame)
const long WESTSeerFrame::ID_STATICTEXT1 = wxNewId();
const long WESTSeerFrame::ID_CHOICE1 = wxNewId();
const long WESTSeerFrame::ID_BUTTON1 = wxNewId();
const long WESTSeerFrame::ID_STATICTEXT2 = wxNewId();
const long WESTSeerFrame::ID_GAUGE1 = wxNewId();
const long WESTSeerFrame::ID_BUTTON2 = wxNewId();
const long WESTSeerFrame::ID_STATICTEXT7 = wxNewId();
const long WESTSeerFrame::ID_GAUGE2 = wxNewId();
const long WESTSeerFrame::ID_BUTTON3 = wxNewId();
const long WESTSeerFrame::ID_LISTCTRL1 = wxNewId();
const long WESTSeerFrame::ID_STATICTEXT6 = wxNewId();
const long WESTSeerFrame::ID_LISTCTRL4 = wxNewId();
const long WESTSeerFrame::ID_LISTCTRL2 = wxNewId();
const long WESTSeerFrame::ID_LISTCTRL3 = wxNewId();
const long WESTSeerFrame::ID_STATICTEXT5 = wxNewId();
const long WESTSeerFrame::ID_STATICTEXT3 = wxNewId();
const long WESTSeerFrame::ID_STATICTEXT4 = wxNewId();
const long WESTSeerFrame::ID_NOTEBOOK1 = wxNewId();
const long WESTSeerFrame::ID_MENUITEM3 = wxNewId();
const long WESTSeerFrame::ID_MENUITEM4 = wxNewId();
const long WESTSeerFrame::ID_MENUITEM5 = wxNewId();
const long WESTSeerFrame::idMenuQuit = wxNewId();
const long WESTSeerFrame::ID_MENUITEM1 = wxNewId();
const long WESTSeerFrame::ID_MENUITEM2 = wxNewId();
const long WESTSeerFrame::ID_MENUITEM6 = wxNewId();
const long WESTSeerFrame::ID_MENUITEM7 = wxNewId();
const long WESTSeerFrame::ID_MENUITEM8 = wxNewId();
const long WESTSeerFrame::ID_MENUITEM9 = wxNewId();
const long WESTSeerFrame::ID_MENUITEM10 = wxNewId();
const long WESTSeerFrame::idMenuAbout = wxNewId();
const long WESTSeerFrame::ID_STATUSBAR1 = wxNewId();
//*)

BEGIN_EVENT_TABLE(WESTSeerFrame,wxFrame)
    //(*EventTable(WESTSeerFrame)
    //*)
END_EVENT_TABLE()

WESTSeerFrame::WESTSeerFrame(wxWindow* parent,wxWindowID id)
{
    //(*Initialize(WESTSeerFrame)
    wxFlexGridSizer* FlexGridSizer1;
    wxFlexGridSizer* FlexGridSizer2;
    wxMenu* Menu1;
    wxMenu* Menu2;
    wxMenuBar* MenuBar1;
    wxMenuItem* MenuItem1;
    wxMenuItem* MenuItem2;

    Create(parent, wxID_ANY, _("Worldwide Emerging Scientific Topic Seer "), wxDefaultPosition, wxDefaultSize, wxDEFAULT_FRAME_STYLE, _T("wxID_ANY"));
    SetClientSize(wxSize(800,600));
    {
    	wxIcon FrameIcon;
    	FrameIcon.CopyFromBitmap(wxBitmap(wxImage(_T("westseer-logo.ico"))));
    	SetIcon(FrameIcon);
    }
    FlexGridSizer1 = new wxFlexGridSizer(3, 1, 0, 0);
    FlexGridSizer1->AddGrowableCol(0);
    FlexGridSizer1->AddGrowableRow(1);
    FlexGridSizer1->AddGrowableRow(2);
    FlexGridSizer2 = new wxFlexGridSizer(3, 3, 0, 0);
    FlexGridSizer2->AddGrowableCol(1);
    StaticText1 = new wxStaticText(this, ID_STATICTEXT1, _("Scope:"), wxDefaultPosition, wxDefaultSize, 0, _T("ID_STATICTEXT1"));
    FlexGridSizer2->Add(StaticText1, 1, wxALL|wxEXPAND, 5);
    ChoiceScope = new wxChoice(this, ID_CHOICE1, wxDefaultPosition, wxDefaultSize, 0, 0, 0, wxDefaultValidator, _T("ID_CHOICE1"));
    FlexGridSizer2->Add(ChoiceScope, 1, wxALL|wxEXPAND, 5);
    ButtonNew = new wxButton(this, ID_BUTTON1, _("New"), wxDefaultPosition, wxDefaultSize, 0, wxDefaultValidator, _T("ID_BUTTON1"));
    FlexGridSizer2->Add(ButtonNew, 1, wxALL|wxEXPAND, 5);
    StaticText2 = new wxStaticText(this, ID_STATICTEXT2, _("Overall Progress:"), wxDefaultPosition, wxDefaultSize, 0, _T("ID_STATICTEXT2"));
    FlexGridSizer2->Add(StaticText2, 1, wxALL|wxEXPAND, 5);
    GaugeOverall = new wxGauge(this, ID_GAUGE1, 100, wxDefaultPosition, wxDefaultSize, 0, wxDefaultValidator, _T("ID_GAUGE1"));
    FlexGridSizer2->Add(GaugeOverall, 1, wxALL|wxEXPAND, 5);
    ButtonPause = new wxButton(this, ID_BUTTON2, _("Pause"), wxDefaultPosition, wxDefaultSize, 0, wxDefaultValidator, _T("ID_BUTTON2"));
    ButtonPause->Disable();
    FlexGridSizer2->Add(ButtonPause, 1, wxALL|wxALIGN_CENTER_HORIZONTAL|wxALIGN_CENTER_VERTICAL, 5);
    StaticText3 = new wxStaticText(this, ID_STATICTEXT7, _("Step Progress:"), wxDefaultPosition, wxDefaultSize, 0, _T("ID_STATICTEXT7"));
    FlexGridSizer2->Add(StaticText3, 1, wxALL|wxEXPAND, 5);
    GaugeStep = new wxGauge(this, ID_GAUGE2, 100, wxDefaultPosition, wxDefaultSize, 0, wxDefaultValidator, _T("ID_GAUGE2"));
    FlexGridSizer2->Add(GaugeStep, 1, wxALL|wxEXPAND, 5);
    ButtonResume = new wxButton(this, ID_BUTTON3, _("Resume"), wxDefaultPosition, wxDefaultSize, 0, wxDefaultValidator, _T("ID_BUTTON3"));
    ButtonResume->Disable();
    FlexGridSizer2->Add(ButtonResume, 1, wxALL|wxEXPAND, 5);
    FlexGridSizer1->Add(FlexGridSizer2, 1, wxALL|wxEXPAND, 5);
    ListCtrlPublications = new wxListCtrl(this, ID_LISTCTRL1, wxDefaultPosition, wxDefaultSize, wxLC_REPORT|wxVSCROLL|wxHSCROLL, wxDefaultValidator, _T("ID_LISTCTRL1"));
    FlexGridSizer1->Add(ListCtrlPublications, 1, wxALL|wxEXPAND, 5);
    NotebookInfo = new wxNotebook(this, ID_NOTEBOOK1, wxDefaultPosition, wxDefaultSize, 0, _T("ID_NOTEBOOK1"));
    StaticTextTopicSummary = new wxStaticText(NotebookInfo, ID_STATICTEXT6, _("Label"), wxDefaultPosition, wxDefaultSize, wxVSCROLL|wxALWAYS_SHOW_SB, _T("ID_STATICTEXT6"));
    ListCtrlTopicPapers = new wxListCtrl(NotebookInfo, ID_LISTCTRL4, wxDefaultPosition, wxDefaultSize, wxLC_LIST|wxVSCROLL|wxHSCROLL, wxDefaultValidator, _T("ID_LISTCTRL4"));
    ListCtrlReferences = new wxListCtrl(NotebookInfo, ID_LISTCTRL2, wxDefaultPosition, wxDefaultSize, wxLC_REPORT|wxVSCROLL|wxHSCROLL, wxDefaultValidator, _T("ID_LISTCTRL2"));
    ListCtrlCitations = new wxListCtrl(NotebookInfo, ID_LISTCTRL3, wxPoint(225,140), wxDefaultSize, wxLC_REPORT|wxVSCROLL|wxHSCROLL, wxDefaultValidator, _T("ID_LISTCTRL3"));
    StaticTextAbstract = new wxStaticText(NotebookInfo, ID_STATICTEXT5, wxEmptyString, wxDefaultPosition, wxDefaultSize, wxVSCROLL|wxALWAYS_SHOW_SB, _T("ID_STATICTEXT5"));
    StaticTextPrediction = new wxStaticText(NotebookInfo, ID_STATICTEXT3, wxEmptyString, wxPoint(477,56), wxDefaultSize, wxVSCROLL|wxALWAYS_SHOW_SB, _T("ID_STATICTEXT3"));
    StaticTextVerification = new wxStaticText(NotebookInfo, ID_STATICTEXT4, wxEmptyString, wxPoint(581,37), wxDefaultSize, wxVSCROLL|wxALWAYS_SHOW_SB, _T("ID_STATICTEXT4"));
    NotebookInfo->AddPage(StaticTextTopicSummary, _("Topic Summary"), false);
    NotebookInfo->AddPage(ListCtrlTopicPapers, _("Papers on Topic"), false);
    NotebookInfo->AddPage(ListCtrlReferences, _("References"), false);
    NotebookInfo->AddPage(ListCtrlCitations, _("Citations"), false);
    NotebookInfo->AddPage(StaticTextAbstract, _("Abstract"), false);
    NotebookInfo->AddPage(StaticTextPrediction, _("Prediction Summary"), false);
    NotebookInfo->AddPage(StaticTextVerification, _("Verification Summary"), false);
    FlexGridSizer1->Add(NotebookInfo, 1, wxALL|wxEXPAND, 5);
    SetSizer(FlexGridSizer1);
    MenuBar1 = new wxMenuBar();
    Menu1 = new wxMenu();
    MenuItemOptions = new wxMenuItem(Menu1, ID_MENUITEM3, _("&Options"), wxEmptyString, wxITEM_NORMAL);
    Menu1->Append(MenuItemOptions);
    MenuItem6 = new wxMenuItem(Menu1, ID_MENUITEM4, _("&Export Web-of-Science Data"), wxEmptyString, wxITEM_NORMAL);
    Menu1->Append(MenuItem6);
    MenuItem7 = new wxMenuItem(Menu1, ID_MENUITEM5, _("&Save Results"), wxEmptyString, wxITEM_NORMAL);
    Menu1->Append(MenuItem7);
    MenuItem1 = new wxMenuItem(Menu1, idMenuQuit, _("&Quit\tAlt-F4"), _("Quit the application"), wxITEM_NORMAL);
    Menu1->Append(MenuItem1);
    MenuBar1->Append(Menu1, _("&File"));
    Menu3 = new wxMenu();
    MenuItem3 = new wxMenuItem(Menu3, ID_MENUITEM1, _("&Explore"), wxEmptyString, wxITEM_NORMAL);
    Menu3->Append(MenuItem3);
    MenuItem4 = new wxMenuItem(Menu3, ID_MENUITEM2, _("&Test"), wxEmptyString, wxITEM_NORMAL);
    Menu3->Append(MenuItem4);
    MenuBar1->Append(Menu3, _("&Mode"));
    Menu4 = new wxMenu();
    MenuItemSQL = new wxMenuItem(Menu4, ID_MENUITEM6, _("&SQL"), wxEmptyString, wxITEM_NORMAL);
    Menu4->Append(MenuItemSQL);
    MenuItemLog = new wxMenuItem(Menu4, ID_MENUITEM7, _("&Log"), wxEmptyString, wxITEM_NORMAL);
    Menu4->Append(MenuItemLog);
    MenuItemForward = new wxMenuItem(Menu4, ID_MENUITEM8, _("&Recollect Data"), wxEmptyString, wxITEM_NORMAL);
    Menu4->Append(MenuItemForward);
    MenuItemBackward = new wxMenuItem(Menu4, ID_MENUITEM9, _("&Analyse Again"), wxEmptyString, wxITEM_NORMAL);
    Menu4->Append(MenuItemBackward);
    MenuItem5 = new wxMenuItem(Menu4, ID_MENUITEM10, _("&Back to Last Task"), wxEmptyString, wxITEM_NORMAL);
    Menu4->Append(MenuItem5);
    MenuBar1->Append(Menu4, _("&Debug"));
    Menu2 = new wxMenu();
    MenuItem2 = new wxMenuItem(Menu2, idMenuAbout, _("&About\tF1"), _("Show info about this application"), wxITEM_NORMAL);
    Menu2->Append(MenuItem2);
    MenuBar1->Append(Menu2, _("&Help"));
    SetMenuBar(MenuBar1);
    StatusBar1 = new wxStatusBar(this, ID_STATUSBAR1, 0, _T("ID_STATUSBAR1"));
    int __wxStatusBarWidths_1[1] = { -1 };
    int __wxStatusBarStyles_1[1] = { wxSB_NORMAL };
    StatusBar1->SetFieldsCount(1,__wxStatusBarWidths_1);
    StatusBar1->SetStatusStyles(1,__wxStatusBarStyles_1);
    SetStatusBar(StatusBar1);
    SetSizer(FlexGridSizer1);
    Layout();

    Connect(ID_CHOICE1,wxEVT_COMMAND_CHOICE_SELECTED,(wxObjectEventFunction)&WESTSeerFrame::OnChoiceScopeSelect);
    Connect(ID_BUTTON1,wxEVT_COMMAND_BUTTON_CLICKED,(wxObjectEventFunction)&WESTSeerFrame::OnButtonNewClick);
    Connect(ID_BUTTON2,wxEVT_COMMAND_BUTTON_CLICKED,(wxObjectEventFunction)&WESTSeerFrame::OnButtonPauseClick);
    Connect(ID_BUTTON3,wxEVT_COMMAND_BUTTON_CLICKED,(wxObjectEventFunction)&WESTSeerFrame::OnButtonResumeClick);
    Connect(ID_MENUITEM3,wxEVT_COMMAND_MENU_SELECTED,(wxObjectEventFunction)&WESTSeerFrame::OnMenuItemOptionsSelected);
    Connect(idMenuQuit,wxEVT_COMMAND_MENU_SELECTED,(wxObjectEventFunction)&WESTSeerFrame::OnQuit);
    Connect(ID_MENUITEM6,wxEVT_COMMAND_MENU_SELECTED,(wxObjectEventFunction)&WESTSeerFrame::OnMenuItemSQLSelected);
    Connect(ID_MENUITEM7,wxEVT_COMMAND_MENU_SELECTED,(wxObjectEventFunction)&WESTSeerFrame::OnMenuItemLogSelected);
    Connect(idMenuAbout,wxEVT_COMMAND_MENU_SELECTED,(wxObjectEventFunction)&WESTSeerFrame::OnAbout);
    //*)

    _openAlex = NULL;
    _termExtraction = NULL;
    _progressReporter = new MyProgressReporter(this);
    GeneralConfig config;
    std::vector<std::string> scopes = ResearchScope::getResearchScopes(config.getDatabase());
    for (std::string scope: scopes)
    {
        ChoiceScope->Append(scope);
    }
}

WESTSeerFrame::~WESTSeerFrame()
{
    //(*Destroy(WESTSeerFrame)
    //*)
}

WESTSeerFrame::MyProgressReporter::MyProgressReporter(WESTSeerFrame *frame)
{
    _frame = frame;
    _frame->StatusBar1->SetFieldsCount(3);
    _frame->GaugeOverall->SetRange(100);
    _frame->GaugeStep->SetRange(100);
}

void WESTSeerFrame::MyProgressReporter::report(
    const char *taskName, int taskId, int numTasks, int taskProgress)
{
    std::stringstream ss1;
    ss1 << "task " << taskId << " of " << numTasks;
    _frame->StatusBar1->SetStatusText(ss1.str().c_str(), 0);
    _frame->StatusBar1->SetStatusText(taskName, 1);
    std::stringstream ss2;
    ss2 << taskProgress << "%";
    _frame->StatusBar1->SetStatusText(ss2.str().c_str(), 2);
    _frame->GaugeStep->SetValue(taskProgress);
    _frame->GaugeOverall->SetValue(100 * taskId / numTasks);

    if (taskId < numTasks)
    {
        _frame->ButtonPause->Enable();
        _frame->ButtonResume->Disable();
        _frame->ChoiceScope->Disable();
        _frame->ButtonNew->Disable();
        _frame->ListCtrlPublications->Disable();
        _frame->NotebookInfo->Disable();
    }
    else
    {
        _frame->ButtonPause->Disable();
        _frame->ButtonResume->Disable();
        _frame->ChoiceScope->Enable();
        _frame->ButtonNew->Enable();
        _frame->ListCtrlPublications->Enable();
        _frame->NotebookInfo->Enable();
    }
}

void WESTSeerFrame::OnQuit(wxCommandEvent& event)
{
    Close();
}

void WESTSeerFrame::OnAbout(wxCommandEvent& event)
{
    wxString msg = wxbuildinfo(long_f);
    wxMessageBox(msg, _("Welcome to..."));
}

void WESTSeerFrame::OnButtonNewClick(wxCommandEvent& event)
{
    // pop up an OpenAlexImportDialog
    OpenAlexImportDialog dlg(this, -1);
    if (dlg.ShowModal())
    {
        if (dlg._openAlex != NULL)
        {
            // find whether it is in the old choices
            std::string keywords = dlg._openAlex->scope().getKeywords();
            int idxKW = -1;
            for (unsigned int i = 0; i < ChoiceScope->GetCount(); i++)
            {
                if (ChoiceScope->GetString(i).ToStdString() == keywords)
                {
                    idxKW = (int) i;
                    break;
                }
            }
            if (idxKW >= 0)
            {
                ChoiceScope->SetSelection(idxKW);
            }
            else
            {
                idxKW = ChoiceScope->Append(keywords);
                ChoiceScope->SetSelection(idxKW);
            }
            OnChoiceScopeSelect(event);
        }
    }
}

void WESTSeerFrame::OnMenuItemOptionsSelected(wxCommandEvent& event)
{
    SettingsDialog dlg(this);
    dlg.ShowModal();
}

void WESTSeerFrame::OnMenuItemSQLSelected(wxCommandEvent& event)
{
    SQLDialog dlg(this);
    dlg.ShowModal();
}

void WESTSeerFrame::OnMenuItemLogSelected(wxCommandEvent& event)
{
    LogDialog dlg(this);
    dlg.ShowModal();
}

void WESTSeerFrame::OnChoiceScopeSelect(wxCommandEvent& event)
{
    clearScope();
    AbstractTask::setProgressReporter(_progressReporter);
    GeneralConfig config;
    std::string kws = ChoiceScope->GetString(ChoiceScope->GetSelection()).ToStdString();
    _openAlex = new OpenAlex(config.getEmail(), config.getDatabase(), kws);
    _termExtraction = new TermExtraction(config.getDatabase(), kws);
    _openAlex->setNext(_termExtraction);
    _openAlex->runAll();
}

void WESTSeerFrame::clearScope()
{
    if (_openAlex != NULL)
    {
        delete _openAlex;
        _openAlex = NULL;
    }
    if (_termExtraction != NULL)
    {
        delete _termExtraction;
        _termExtraction = NULL;
    }
}

void WESTSeerFrame::OnButtonPauseClick(wxCommandEvent& event)
{
    AbstractTask::setProgressReporter(NULL);
    AbstractTask::cancel();
    AbstractTask::finalize();
    ButtonResume->Enable();
}

void WESTSeerFrame::OnButtonResumeClick(wxCommandEvent& event)
{
    OnChoiceScopeSelect(event);
}
