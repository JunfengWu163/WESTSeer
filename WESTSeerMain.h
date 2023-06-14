/***************************************************************
 * Name:      WESTSeerMain.h
 * Purpose:   Defines Application Frame
 * Author:    Junfeng Wu (wujunfeng@vip.163.com)
 * Created:   2023-06-11
 * Copyright: Junfeng Wu (https://westseer.org)
 * License:
 **************************************************************/

#ifndef WESTSEERMAIN_H
#define WESTSEERMAIN_H

//(*Headers(WESTSeerFrame)
#include <wx/button.h>
#include <wx/choice.h>
#include <wx/frame.h>
#include <wx/gauge.h>
#include <wx/listctrl.h>
#include <wx/menu.h>
#include <wx/notebook.h>
#include <wx/sizer.h>
#include <wx/stattext.h>
#include <wx/statusbr.h>
//*)

#include <ProgressReporter.h>
#include <OpenAlex.h>
#include <sstream>

class WESTSeerFrame: public wxFrame
{
    public:

        WESTSeerFrame(wxWindow* parent,wxWindowID id = -1);
        virtual ~WESTSeerFrame();

    private:

        //(*Handlers(WESTSeerFrame)
        void OnQuit(wxCommandEvent& event);
        void OnAbout(wxCommandEvent& event);
        void OnButtonNewClick(wxCommandEvent& event);
        void OnMenuItemOptionsSelected(wxCommandEvent& event);
        void OnMenuItemSQLSelected(wxCommandEvent& event);
        void OnMenuItemLogSelected(wxCommandEvent& event);
        void OnChoiceScopeSelect(wxCommandEvent& event);
        //*)

        //(*Identifiers(WESTSeerFrame)
        static const long ID_STATICTEXT1;
        static const long ID_CHOICE1;
        static const long ID_BUTTON1;
        static const long ID_STATICTEXT2;
        static const long ID_GAUGE1;
        static const long ID_BUTTON2;
        static const long ID_STATICTEXT7;
        static const long ID_GAUGE2;
        static const long ID_BUTTON3;
        static const long ID_LISTCTRL1;
        static const long ID_STATICTEXT6;
        static const long ID_LISTCTRL4;
        static const long ID_LISTCTRL2;
        static const long ID_LISTCTRL3;
        static const long ID_STATICTEXT5;
        static const long ID_STATICTEXT3;
        static const long ID_STATICTEXT4;
        static const long ID_NOTEBOOK1;
        static const long ID_MENUITEM3;
        static const long ID_MENUITEM4;
        static const long ID_MENUITEM5;
        static const long idMenuQuit;
        static const long ID_MENUITEM1;
        static const long ID_MENUITEM2;
        static const long ID_MENUITEM6;
        static const long ID_MENUITEM7;
        static const long ID_MENUITEM8;
        static const long ID_MENUITEM9;
        static const long ID_MENUITEM10;
        static const long idMenuAbout;
        static const long ID_STATUSBAR1;
        //*)

        //(*Declarations(WESTSeerFrame)
        wxButton* ButtonNew;
        wxButton* ButtonPause;
        wxButton* ButtonResume;
        wxChoice* ChoiceScope;
        wxGauge* GaugeOverall;
        wxGauge* GaugeStep;
        wxListCtrl* ListCtrlCitations;
        wxListCtrl* ListCtrlPublications;
        wxListCtrl* ListCtrlReferences;
        wxListCtrl* ListCtrlTopicPapers;
        wxMenu* Menu3;
        wxMenu* Menu4;
        wxMenuItem* MenuItem3;
        wxMenuItem* MenuItem4;
        wxMenuItem* MenuItem5;
        wxMenuItem* MenuItem6;
        wxMenuItem* MenuItem7;
        wxMenuItem* MenuItemBackward;
        wxMenuItem* MenuItemForward;
        wxMenuItem* MenuItemLog;
        wxMenuItem* MenuItemOptions;
        wxMenuItem* MenuItemSQL;
        wxNotebook* NotebookInfo;
        wxStaticText* StaticText1;
        wxStaticText* StaticText2;
        wxStaticText* StaticText3;
        wxStaticText* StaticTextAbstract;
        wxStaticText* StaticTextPrediction;
        wxStaticText* StaticTextTopicSummary;
        wxStaticText* StaticTextVerification;
        wxStatusBar* StatusBar1;
        //*)

        DECLARE_EVENT_TABLE()

        class MyProgressReporter: public ProgressReporter
        {
            private:
                wxGauge *_gaugeOverall;
                wxGauge *_gaugeStep;
                wxStatusBar *_statusBar;
            public:
                MyProgressReporter(wxGauge *gaugeOverall, wxGauge *gaugeStep, wxStatusBar *myStatusBar): _gaugeOverall(gaugeOverall), _gaugeStep(gaugeStep), _statusBar(myStatusBar)
                {
                    _statusBar->SetFieldsCount(3);
                    _gaugeOverall->SetRange(100);
                    _gaugeStep->SetRange(100);
                }
                virtual void report(const char *taskName, int taskId, int numTasks, int taskProgress)
                {
                    std::stringstream ss1;
                    ss1 << "task " << taskId << " of " << numTasks;
                    _statusBar->SetStatusText(ss1.str().c_str(), 0);
                    _statusBar->SetStatusText(taskName, 1);
                    std::stringstream ss2;
                    ss2 << taskProgress << "%";
                    _statusBar->SetStatusText(ss2.str().c_str(), 2);
                    _gaugeStep->SetValue(taskProgress);
                    _gaugeOverall->SetValue(100 * (taskId + 1) / numTasks);
                }
        } *_progressReporter;
        OpenAlex *_openAlex;
};

#endif // WESTSEERMAIN_H
