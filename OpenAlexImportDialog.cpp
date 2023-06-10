#include "OpenAlexImportDialog.h"
#include <EmailValidator.h>
#include <wx/msgdlg.h>

//(*InternalHeaders(OpenAlexImportDialog)
#include <wx/intl.h>
#include <wx/string.h>
//*)

//(*IdInit(OpenAlexImportDialog)
const long OpenAlexImportDialog::ID_STATICTEXT2 = wxNewId();
const long OpenAlexImportDialog::ID_TEXTCTRL2 = wxNewId();
const long OpenAlexImportDialog::ID_STATICTEXT3 = wxNewId();
const long OpenAlexImportDialog::ID_STATICTEXT4 = wxNewId();
const long OpenAlexImportDialog::ID_TEXTCTRL3 = wxNewId();
const long OpenAlexImportDialog::ID_BUTTON2 = wxNewId();
const long OpenAlexImportDialog::ID_STATICTEXT5 = wxNewId();
const long OpenAlexImportDialog::ID_GAUGE1 = wxNewId();
const long OpenAlexImportDialog::ID_STATICTEXT6 = wxNewId();
const long OpenAlexImportDialog::ID_STATICTEXT7 = wxNewId();
const long OpenAlexImportDialog::ID_CHOICE1 = wxNewId();
const long OpenAlexImportDialog::ID_LISTCTRL1 = wxNewId();
const long OpenAlexImportDialog::ID_STATICTEXT8 = wxNewId();
const long OpenAlexImportDialog::ID_TEXTCTRL4 = wxNewId();
const long OpenAlexImportDialog::ID_BUTTON3 = wxNewId();
const long OpenAlexImportDialog::ID_BUTTON4 = wxNewId();
//*)

BEGIN_EVENT_TABLE(OpenAlexImportDialog,wxDialog)
	//(*EventTable(OpenAlexImportDialog)
	//*)
END_EVENT_TABLE()

OpenAlexImportDialog::OpenAlexImportDialog(wxWindow* parent,wxWindowID id)
{
	//(*Initialize(OpenAlexImportDialog)
	wxBoxSizer* BoxSizer1;
	wxFlexGridSizer* FlexGridSizer1;
	wxFlexGridSizer* FlexGridSizer2;

	Create(parent, id, _("Import Data from OpenAlex"), wxDefaultPosition, wxDefaultSize, wxDEFAULT_DIALOG_STYLE|wxBORDER_DOUBLE, _T("id"));
	FlexGridSizer1 = new wxFlexGridSizer(6, 1, 0, 0);
	FlexGridSizer2 = new wxFlexGridSizer(0, 3, 0, 0);
	FlexGridSizer2->AddGrowableCol(1);
	StaticText2 = new wxStaticText(this, ID_STATICTEXT2, _("Keywords in Group 1:"), wxDefaultPosition, wxDefaultSize, 0, _T("ID_STATICTEXT2"));
	FlexGridSizer2->Add(StaticText2, 1, wxALL|wxEXPAND, 5);
	TextCtrlKeywords1 = new wxTextCtrl(this, ID_TEXTCTRL2, wxEmptyString, wxDefaultPosition, wxDefaultSize, 0, wxDefaultValidator, _T("ID_TEXTCTRL2"));
	FlexGridSizer2->Add(TextCtrlKeywords1, 1, wxALL|wxEXPAND, 5);
	StaticText3 = new wxStaticText(this, ID_STATICTEXT3, _("AND"), wxDefaultPosition, wxDefaultSize, 0, _T("ID_STATICTEXT3"));
	FlexGridSizer2->Add(StaticText3, 1, wxALL|wxALIGN_CENTER_HORIZONTAL|wxALIGN_CENTER_VERTICAL, 5);
	StaticText4 = new wxStaticText(this, ID_STATICTEXT4, _("Keywords in Group 2"), wxDefaultPosition, wxDefaultSize, 0, _T("ID_STATICTEXT4"));
	FlexGridSizer2->Add(StaticText4, 1, wxALL|wxEXPAND, 5);
	TextCtrlKeywords2 = new wxTextCtrl(this, ID_TEXTCTRL3, wxEmptyString, wxDefaultPosition, wxDefaultSize, 0, wxDefaultValidator, _T("ID_TEXTCTRL3"));
	FlexGridSizer2->Add(TextCtrlKeywords2, 1, wxALL|wxEXPAND, 5);
	ButtonGetSamples = new wxButton(this, ID_BUTTON2, _("&Get Samples"), wxDefaultPosition, wxDefaultSize, 0, wxDefaultValidator, _T("ID_BUTTON2"));
	ButtonGetSamples->Disable();
	FlexGridSizer2->Add(ButtonGetSamples, 1, wxALL|wxALIGN_CENTER_HORIZONTAL|wxALIGN_CENTER_VERTICAL, 5);
	StaticText5 = new wxStaticText(this, ID_STATICTEXT5, _("Sampling Progress:"), wxDefaultPosition, wxDefaultSize, 0, _T("ID_STATICTEXT5"));
	FlexGridSizer2->Add(StaticText5, 1, wxALL|wxEXPAND, 5);
	GaugeSamplingProgress = new wxGauge(this, ID_GAUGE1, 100, wxDefaultPosition, wxDefaultSize, 0, wxDefaultValidator, _T("ID_GAUGE1"));
	FlexGridSizer2->Add(GaugeSamplingProgress, 1, wxALL|wxEXPAND, 5);
	StaticTextSamplingPrompt = new wxStaticText(this, ID_STATICTEXT6, _("0%"), wxDefaultPosition, wxDefaultSize, 0, _T("ID_STATICTEXT6"));
	FlexGridSizer2->Add(StaticTextSamplingPrompt, 1, wxALL|wxALIGN_CENTER_HORIZONTAL|wxALIGN_CENTER_VERTICAL, 5);
	StaticText6 = new wxStaticText(this, ID_STATICTEXT7, _("Samples to Inspect:"), wxDefaultPosition, wxDefaultSize, 0, _T("ID_STATICTEXT7"));
	FlexGridSizer2->Add(StaticText6, 1, wxALL|wxEXPAND, 5);
	ChoiceKeywordPair = new wxChoice(this, ID_CHOICE1, wxDefaultPosition, wxDefaultSize, 0, 0, 0, wxDefaultValidator, _T("ID_CHOICE1"));
	FlexGridSizer2->Add(ChoiceKeywordPair, 1, wxALL|wxEXPAND, 5);
	FlexGridSizer1->Add(FlexGridSizer2, 1, wxALL|wxEXPAND, 5);
	ListCtrlSamples = new wxListCtrl(this, ID_LISTCTRL1, wxDefaultPosition, wxDefaultSize, wxLC_REPORT|wxVSCROLL|wxHSCROLL, wxDefaultValidator, _T("ID_LISTCTRL1"));
	FlexGridSizer1->Add(ListCtrlSamples, 1, wxALL|wxEXPAND, 5);
	StaticText7 = new wxStaticText(this, ID_STATICTEXT8, _("Abstract:"), wxDefaultPosition, wxDefaultSize, 0, _T("ID_STATICTEXT8"));
	FlexGridSizer1->Add(StaticText7, 1, wxALL|wxEXPAND, 5);
	TextCtrlSampleAbstract = new wxTextCtrl(this, ID_TEXTCTRL4, wxEmptyString, wxDefaultPosition, wxSize(957,245), wxTE_MULTILINE|wxTE_READONLY|wxVSCROLL|wxALWAYS_SHOW_SB, wxDefaultValidator, _T("ID_TEXTCTRL4"));
	FlexGridSizer1->Add(TextCtrlSampleAbstract, 1, wxALL|wxEXPAND, 5);
	BoxSizer1 = new wxBoxSizer(wxHORIZONTAL);
	ButtonOK = new wxButton(this, ID_BUTTON3, _("&OK"), wxDefaultPosition, wxDefaultSize, 0, wxDefaultValidator, _T("ID_BUTTON3"));
	BoxSizer1->Add(ButtonOK, 1, wxALL|wxALIGN_CENTER_HORIZONTAL|wxALIGN_CENTER_VERTICAL, 5);
	BoxSizer1->Add(-1,-1,1, wxALL|wxALIGN_CENTER_HORIZONTAL|wxALIGN_CENTER_VERTICAL, 5);
	BoxSizer1->Add(-1,-1,1, wxALL|wxALIGN_CENTER_HORIZONTAL|wxALIGN_CENTER_VERTICAL, 5);
	ButtonCancel = new wxButton(this, ID_BUTTON4, _("&Cancel"), wxDefaultPosition, wxDefaultSize, 0, wxDefaultValidator, _T("ID_BUTTON4"));
	BoxSizer1->Add(ButtonCancel, 1, wxALL|wxALIGN_CENTER_HORIZONTAL|wxALIGN_CENTER_VERTICAL, 5);
	FlexGridSizer1->Add(BoxSizer1, 1, wxALL|wxALIGN_CENTER_HORIZONTAL|wxALIGN_CENTER_VERTICAL, 5);
	SetSizer(FlexGridSizer1);
	FlexGridSizer1->Fit(this);
	FlexGridSizer1->SetSizeHints(this);

	Connect(ID_BUTTON2,wxEVT_COMMAND_BUTTON_CLICKED,(wxObjectEventFunction)&OpenAlexImportDialog::OnButtonGetSamplesClick);
	Connect(ID_CHOICE1,wxEVT_COMMAND_CHOICE_SELECTED,(wxObjectEventFunction)&OpenAlexImportDialog::OnChoiceKeywordPairSelect);
	Connect(ID_LISTCTRL1,wxEVT_COMMAND_LIST_ITEM_SELECTED,(wxObjectEventFunction)&OpenAlexImportDialog::OnListCtrlSamplesItemSelect);
	Connect(ID_TEXTCTRL4,wxEVT_COMMAND_TEXT_UPDATED,(wxObjectEventFunction)&OpenAlexImportDialog::OnTextCtrlSampleAbstractText);
	Connect(ID_BUTTON3,wxEVT_COMMAND_BUTTON_CLICKED,(wxObjectEventFunction)&OpenAlexImportDialog::OnButtonOKClick);
	Connect(ID_BUTTON4,wxEVT_COMMAND_BUTTON_CLICKED,(wxObjectEventFunction)&OpenAlexImportDialog::OnButtonCancelClick);
	//*)


	_progressReporter = new MyProgressReporter(GaugeSamplingProgress);

	ListCtrlSamples->AppendColumn("Year");
    ListCtrlSamples->AppendColumn("Title", wxLIST_FORMAT_LEFT, 600);
    ListCtrlSamples->AppendColumn("Authors");
    ListCtrlSamples->AppendColumn("Source");
    ListCtrlSamples->AppendColumn("ID");
}

OpenAlexImportDialog::~OpenAlexImportDialog()
{
	//(*Destroy(OpenAlexImportDialog)
	//*)

	delete _progressReporter;
}

void OpenAlexImportDialog::OnTextCtrlSampleAbstractText(wxCommandEvent& event)
{
}

void OpenAlexImportDialog::OnButtonGetSamplesClick(wxCommandEvent& event)
{
}

void OpenAlexImportDialog::OnButtonOKClick(wxCommandEvent& event)
{
}

void OpenAlexImportDialog::OnButtonCancelClick(wxCommandEvent& event)
{
}

void OpenAlexImportDialog::OnChoiceKeywordPairSelect(wxCommandEvent& event)
{
    int idxKWPair = ChoiceKeywordPair->GetSelection();
    if (idxKWPair >= 0 && (size_t)idxKWPair < _keywordPairs.size())
    {
        showSamples(idxKWPair);
        TextCtrlSampleAbstract->ChangeValue("");
    }
}

void OpenAlexImportDialog::showSamples(int idxKWPair)
{
    if (idxKWPair < 0 || (size_t)idxKWPair >= _keywordPairs.size() || (size_t)idxKWPair >= _samples.size())
        return;
    for (Publication &p: _samples[idxKWPair])
    {
        std::stringstream ssYear;
        ssYear << p.year();
        long idxItem = ListCtrlSamples->InsertItem(0, ssYear.str());
        ListCtrlSamples->SetItem(idxItem, 1, p.title());
        std::stringstream ssAuthors;
        const std::vector<std::string> authors = p.authors();
        for (size_t i = 0; i < authors.size(); i++)
        {
            if (i > 0)
                ssAuthors << ", ";
            ssAuthors << authors[i];
        }
        ListCtrlSamples->SetItem(idxItem, 2, ssAuthors.str());
        ListCtrlSamples->SetItem(idxItem, 3, p.source());
        std::stringstream ssId;
        ssId <<p.id();
        ListCtrlSamples->SetItem(idxItem, 4, ssId.str());
    }
}

void OpenAlexImportDialog::showAbstract(int idxKWPair, int idxSample)
{
    if (idxKWPair < 0 || (size_t)idxKWPair >= _keywordPairs.size() || (size_t)idxKWPair >= _samples.size())
        return;
    if (idxSample < 0 || (size_t)idxSample >= _samples[idxKWPair].size())
        return;
    std::string ab = _samples[idxKWPair][idxSample].abstract();
    TextCtrlSampleAbstract->ChangeValue(ab);
}

void OpenAlexImportDialog::OnListCtrlSamplesItemSelect(wxListEvent& event)
{
    int idxKWPair = ChoiceKeywordPair->GetSelection();
    if (idxKWPair >= 0 && (size_t)idxKWPair < _keywordPairs.size())
    {
        int idxSample = (int)ListCtrlSamples->GetNextItem(-1, wxLIST_NEXT_ALL, wxLIST_STATE_SELECTED);
        showAbstract(idxKWPair, idxSample);
    }
}

void OpenAlexImportDialog::OnTextCtrlEmailText(wxCommandEvent& event)
{
    ButtonGetSamples->Disable();
}
