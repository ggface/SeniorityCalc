program scalc;

uses
  Forms,
  main in 'main.pas' {MainForm},
  ed.personaldata in 'ed.personaldata.pas' {ED_PersonalData},
  base in 'base.pas' {Bases: TDataModule},
  confirmation in 'confirmation.pas' {ConfirmationForm},
  ed.seniority in 'ed.seniority.pas' {ED_Seniority},
  ed.quickseniority in 'ed.quickseniority.pas' {ED_QuickSeniority},
  ABOUT in 'about.pas' {AboutBox};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TED_PersonalData, ED_PersonalData);
  Application.CreateForm(TBases, Bases);
  Application.CreateForm(TConfirmationForm, ConfirmationForm);
  Application.CreateForm(TED_Seniority, ED_Seniority);
  Application.CreateForm(TED_QuickSeniority, ED_QuickSeniority);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.Run;
end.
