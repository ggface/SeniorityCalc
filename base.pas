unit base;

interface

uses
  SysUtils, Classes, DB, ADODB, main, glConnect;
type
  TBases = class(TDataModule)
    Trololo: TADOConnection;
    PersonalCard: TADOTable;
    PersonalCardDS: TDataSource;
    Seniority: TADOTable;
    SeniorityDS: TDataSource;
    LegalForms: TADOTable;
    LegalFormsDS: TDataSource;
    SeniorityID: TAutoIncField;
    SeniorityLegalForm: TIntegerField;
    SeniorityCompanyName: TWideStringField;
    SeniorityJobName: TWideStringField;
    SeniorityWorkBegin: TDateTimeField;
    SeniorityWorkEnd: TDateTimeField;
    SeniorityUserName: TIntegerField;
    PersonalCardID: TAutoIncField;
    PersonalCardFirstName: TWideStringField;
    PersonalCardLastName: TWideStringField;
    PersonalCardFatherName: TWideStringField;
    PersonalCardBirthday: TDateTimeField;
    PersonalCardIPC: TWideStringField;
    PersonalCardPassportSeries: TIntegerField;
    PersonalCardPassportNumber: TIntegerField;
    LegalFormsID: TAutoIncField;
    LegalFormsLegalFormName: TWideStringField;
    GetJobName: TADOQuery;
    GetJobNameDS: TDataSource;
    GetIntervals: TADOQuery;
    GetIntervalsDS: TDataSource;
    GetJobNameJobName: TWideStringField;
    gvSimpleView: TADOQuery;
    gvSimpleViewDS: TDataSource;
    gvSimpleViewID: TAutoIncField;
    gvSimpleViewFirstName: TWideStringField;
    gvSimpleViewLastName: TWideStringField;
    gvSimpleViewFatherName: TWideStringField;
    gvSimpleViewJobName: TStringField;
    gvSimpleViewallseniority: TStringField;
    GetIntervalsWorkBegin: TDateTimeField;
    GetIntervalsWorkEnd: TDateTimeField;
    SeniorityView: TADOQuery;
    SeniorityViewDS: TDataSource;
    SeniorityViewLegalFormName: TWideStringField;
    SeniorityViewCompanyName: TWideStringField;
    SeniorityViewJobName: TWideStringField;
    SeniorityViewWorkBegin: TDateTimeField;
    SeniorityViewWorkEnd: TDateTimeField;
    SeniorityViewUserName: TIntegerField;
    SeniorityViewID: TAutoIncField;
    SeniorityNotEndWorkTime: TBooleanField;
    SeniorityViewNotEndWorkTime: TBooleanField;
    glConnect1: TglConnect;
    DeleteSeniority: TADOQuery;
    DeleteUser: TADOQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure gvSimpleViewJobNameGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure gvSimpleViewallseniorityGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure SeniorityViewWorkEndGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    function GetJobNames(PersonalID: integer): string;
    function GetSeniority(PersonalID: integer): string;
    procedure SetParamSeniorityView(ID: integer; Refresh: boolean);
  end;

var
  Bases: TBases;
  //pass=GG1987
implementation

{$R *.dfm}

const
  pwd: string = #71#71#49#57#56#55;

procedure TBases.DataModuleCreate(Sender: TObject);
var
  i: integer;
begin
  glConnect1.Join(Trololo, 'orange.mdb', pwd);
  PersonalCard.Open;
  LegalForms.Open;
  Seniority.Open;
  Seniority.First;
  for I := 0 to Seniority.RecordCount - 1 do
  begin
    if Seniority.FieldByName('NotEndWorkTime').AsBoolean then
    begin
      Seniority.Edit;
      Seniority.FieldByName('WorkEnd').AsDateTime := Date;
      Seniority.Post;
    end;
    Seniority.Next;
  end;
  gvSimpleView.Open;
end;

procedure TBases.DataModuleDestroy(Sender: TObject);
begin
  Trololo.Close;
end;

function TBases.GetJobNames(PersonalID: integer): string;
var
  JobNames: string;
  i: integer;
begin
  with Bases do
  begin
    GetJobName.Close;
    GetJobName.Parameters.FindParam('PCID').Value := PersonalID;
    GetJobName.Open;
    GetJobName.DisableControls;
    GetJobName.First;
    for I := 0 to GetJobName.RecordCount - 1 do
    begin
      if Trim(JobNames) = '' then
        JobNames := GetJobName.FieldByName('JobName').AsString
      else
        JobNames := JobNames + ', ' + GetJobName.FieldByName('JobName').AsString;
      GetJobName.Next;
    end;
    GetJobName.EnableControls;
  end;
  GetJobName.Close;
  result := JobNames;
end;

function TBases.GetSeniority(PersonalID: integer): string;
var
  dd: array of TglDateDistance;
  i: integer;
  s: string;
begin
  with Bases do
  begin
    GetIntervals.Close;
    GetIntervals.Parameters.FindParam('UID').Value := PersonalID;
    GetIntervals.Open;
    GetIntervals.DisableControls;
    GetIntervals.First;
    SetLength(dd, GetIntervals.Recordset.RecordCount);
    for I := 0 to GetIntervals.Recordset.RecordCount - 1 do
    begin
      dd[i].BeginDate := GetIntervals.FieldByName('WorkBegin').AsDateTime;
      if GetIntervals.FieldByName('WorkEnd').AsDateTime = 0 then
        dd[i].EndDate := Date
      else
        dd[i].EndDate := GetIntervals.FieldByName('WorkEnd').AsDateTime;
      GetIntervals.Next;
    end;
    GetIntervals.EnableControls;
  end;
  GetIntervals.Close;
  s := MainForm.NumberToStr(MainForm.MakeNumber(MainForm.CalculateTime(dd)));
{  for I := 0 to Length(dd) - 1 do
  begin
    dd[i].BeginDate := 0;
    dd[i].EndDate := 0;
  end;
  SetLength(dd, 0);    }
  result := s;
end;

procedure TBases.gvSimpleViewallseniorityGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := GetSeniority(gvSimpleView.FieldByName('ID').AsInteger);
end;

procedure TBases.gvSimpleViewJobNameGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  Text := GetJobNames(gvSimpleView.FieldByName('ID').AsInteger);
end;

procedure TBases.SeniorityViewWorkEndGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  if Bases.SeniorityView.FieldByName('NotEndWorkTime').AsBoolean then
    Text := 'Отсутствует'
  else
    Text := DateToStr(Bases.SeniorityView.FieldByName('WorkEnd').AsDateTime);
end;

procedure TBases.SetParamSeniorityView(ID: integer; Refresh: boolean);
begin
  SeniorityView.Parameters.FindParam('UID').Value := ID;
  if Refresh then
  begin
    Bases.SeniorityView.Close;
    Bases.SeniorityView.Open;
  end;
end;

end.

