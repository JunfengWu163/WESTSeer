#ifndef OPENALEXIMPORTDIALOG_H
#define OPENALEXIMPORTDIALOG_H
#include <ProgressReporter.h>
#include <Publication.h>
#include <vector>

//(*Headers(OpenAlexImportDialog)
#include <wx/button.h>
#include <wx/choice.h>
#include <wx/dialog.h>
#include <wx/gauge.h>
#include <wx/listctrl.h>
#include <wx/sizer.h>
#include <wx/stattext.h>
#include <wx/textctrl.h>
//*)

class OpenAlexImportDialog: public wxDialog
{
	public:

		OpenAlexImportDialog(wxWindow* parent,wxWindowID id=wxID_ANY);
		virtual ~OpenAlexImportDialog();

		//(*Declarations(OpenAlexImportDialog)
		wxButton* ButtonCancel;
		wxButton* ButtonGetSamples;
		wxButton* ButtonOK;
		wxChoice* ChoiceKeywordPair;
		wxGauge* GaugeSamplingProgress;
		wxListCtrl* ListCtrlSamples;
		wxStaticText* StaticText2;
		wxStaticText* StaticText3;
		wxStaticText* StaticText4;
		wxStaticText* StaticText5;
		wxStaticText* StaticText6;
		wxStaticText* StaticText7;
		wxStaticText* StaticTextSamplingPrompt;
		wxTextCtrl* TextCtrlKeywords1;
		wxTextCtrl* TextCtrlKeywords2;
		wxTextCtrl* TextCtrlSampleAbstract;
		//*)

	protected:

		//(*Identifiers(OpenAlexImportDialog)
		static const long ID_STATICTEXT2;
		static const long ID_TEXTCTRL2;
		static const long ID_STATICTEXT3;
		static const long ID_STATICTEXT4;
		static const long ID_TEXTCTRL3;
		static const long ID_BUTTON2;
		static const long ID_STATICTEXT5;
		static const long ID_GAUGE1;
		static const long ID_STATICTEXT6;
		static const long ID_STATICTEXT7;
		static const long ID_CHOICE1;
		static const long ID_LISTCTRL1;
		static const long ID_STATICTEXT8;
		static const long ID_TEXTCTRL4;
		static const long ID_BUTTON3;
		static const long ID_BUTTON4;
		//*)

	private:

		//(*Handlers(OpenAlexImportDialog)
		void OnTextCtrlSampleAbstractText(wxCommandEvent& event);
		void OnButtonGetSamplesClick(wxCommandEvent& event);
		void OnButtonOKClick(wxCommandEvent& event);
		void OnButtonCancelClick(wxCommandEvent& event);
		void OnChoiceKeywordPairSelect(wxCommandEvent& event);
		void OnListCtrlSamplesItemSelect(wxListEvent& event);
		void OnTextCtrlEmailText(wxCommandEvent& event);
		//*)

		DECLARE_EVENT_TABLE()

		std::vector<std::string> _keywordGroup1;
		std::vector<std::string> _keywordGroup2;
		std::vector<std::string> _keywordPairs;
		std::vector<std::vector<Publication>> _samples;

		void showSamples(int idxKWPair);
		void showAbstract(int idxKWPair, int idxSample);

		class MyProgressReporter: public ProgressReporter
		{
            private:
                wxGauge *_gauge;

            public:
                MyProgressReporter(wxGauge *gauge)
                {
                    _gauge = gauge;
                    _gauge->SetRange(100);
                }
                virtual void report(const char *taskName, int taskId, int numTasks, int taskProgress)
                {
                    _gauge->SetValue((100 * taskId + taskProgress) / numTasks);
                }
		} *_progressReporter;
};

#endif
