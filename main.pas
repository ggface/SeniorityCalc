unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, dxSkinsCore, dxSkinDarkRoom, dxSkinscxPCPainter,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, dxSkinsdxStatusBarPainter, dxSkinsdxBarPainter, cxGridDBTableView,
  cxGrid, dxBar, cxClasses, cxGridCustomPopupMenu, cxGridPopupMenu,
  cxLookAndFeels, dxSkinsForm, StdCtrls, dxStatusBar, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxControls, cxGridCustomView, Grids, DBGrids;

type
  TglDateDistance = record
    BeginDate, EndDate: TDateTime;
  end;
  TglCalcTime = record
    ctYear, ctMonth, ctDay: integer;
  end;
  TglDDResult = (ddFirstInSecond, ddSecondInFirst, ddNone, ddFirstInput,
    ddFirstOutput);
  TGVState = (gvsSimpleView);
  TMainForm = class(TForm)
    dxSkinController1: TdxSkinController;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxStatusBar1: TdxStatusBar;
    cxGridPopupMenu1: TcxGridPopupMenu;
    dxBarManager1: TdxBarManager;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarManager1Bar1: TdxBar;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarSubItem3: TdxBarSubItem;
    dxBarSubItem4: TdxBarSubItem;
    dxBarButton7: TdxBarButton;
    dxBarSubItem5: TdxBarSubItem;
    dxBarButton6: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    cxGridViewRepository1: TcxGridViewRepository;
    GV_SimpleView: TcxGridDBTableView;
    GV_SimpleViewColumn1: TcxGridDBColumn;
    GV_SimpleViewColumn2: TcxGridDBColumn;
    GV_SimpleViewColumn3: TcxGridDBColumn;
    GV_SimpleViewColumn4: TcxGridDBColumn;
    GV_SimpleViewColumn5: TcxGridDBColumn;
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure GV_SimpleViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure GV_SimpleViewCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    function CompareDateDistance(FirstDistance,
      SecondDistance: TglDateDistance): TglDDResult;
    function MergeDateDistance(FirstDistance,
      SecondDistance: TglDateDistance;
      DateDistanceType: TglDDResult): TglDateDistance;
    function CalculateTime(DistanceArr: array of TglDateDistance): TglCalcTime;
    function MakeNumber(Calculate: TglCalcTime): Double;
    function NumberToStr(Number: Double): string;
    function MonthToDay(MonthCount: integer): integer;
    function DayToMonth(DayCount: integer): integer;
    function GetDayCount(DistanceArr: array of TglDateDistance): integer;
    function GetIntegerPart(Src: Double): integer;
    function GetRemainderPart(Src: Double): integer;
  end;

var
  MainForm: TMainForm;
  CUR_USER: integer;

implementation

uses base, ed.personaldata, confirmation, ed.quickseniority, ed.seniority,
  about, DateUtils;

{$R *.dfm}

function TMainForm.CalculateTime(
  DistanceArr: array of TglDateDistance): TglCalcTime;
var
  i: integer;
  b_day, b_month, b_year: word;
  e_day, e_month, e_year: word;
  f_day, f_month, f_year: integer;
begin
  f_day := 0;
  f_month := 0;
  f_year := 0;
  for i := 0 to Length(DistanceArr) - 1 do
  begin
    DecodeDate(DistanceArr[i].BeginDate, b_year, b_month, b_day);
    DecodeDate(DistanceArr[i].EndDate, e_year, e_month, e_day);
    inc(f_year, e_year - b_year);
    inc(f_month, e_month - b_month);
    inc(f_day, e_day - b_day + 1);
  end;
  result.ctYear := f_year;
  result.ctMonth := f_month;
  result.ctDay := f_day;
end;

function TMainForm.CompareDateDistance(FirstDistance,
  SecondDistance: TglDateDistance): TglDDResult;
begin
  result := ddNone;
//FirstDistance полностью входит в SecondDistance
  if (SecondDistance.BeginDate <= FirstDistance.BeginDate) and
    (FirstDistance.EndDate <= SecondDistance.EndDate) then
  begin
    result := ddFirstInSecond;
    exit;
  end;
//SecondDistance полностью входит в FirstDistance
  if (FirstDistance.BeginDate <= SecondDistance.BeginDate) and
    (SecondDistance.EndDate <= FirstDistance.EndDate) then
  begin
    result := ddSecondInFirst;
    exit;
  end;
//FirstDistance начинается раньше, чем SecondDistance
//и заканчивается внутри SecondDistance
  if (FirstDistance.BeginDate <= SecondDistance.BeginDate) and
    (FirstDistance.EndDate > SecondDistance.BeginDate) and
    (FirstDistance.EndDate < SecondDistance.EndDate) then
  begin
    result := ddFirstInput;
    exit;
  end;
//FirstDistance начинается внутри SecondDistance
//и заканчивается после окончания SecondDistance
  if (FirstDistance.BeginDate > SecondDistance.BeginDate) and
    (FirstDistance.BeginDate < SecondDistance.EndDate) and
    (FirstDistance.EndDate >= SecondDistance.EndDate) then
  begin
    result := ddFirstOutput;
    exit;
  end;
end;

function TMainForm.DayToMonth(DayCount: integer): integer;
var
  i, d: integer;
begin
  d := 0;
  i := DayCount;
  repeat
    if i > 30 then
    begin
      inc(d, 1);
      dec(i, 30);
    end;
  until i <= 30;
  result := d;
end;

procedure TMainForm.dxBarButton1Click(Sender: TObject);
begin
  Bases.PersonalCard.Edit;
  ED_PersonalData.ShowModal;
end;

procedure TMainForm.dxBarButton2Click(Sender: TObject);
begin
  Bases.SetParamSeniorityView(CUR_USER, true);
  ED_Seniority.ShowModal;
end;

procedure TMainForm.dxBarButton3Click(Sender: TObject);
begin
  Bases.Seniority.Append;
  ED_QuickSeniority.ShowModal;
end;

procedure TMainForm.dxBarButton4Click(Sender: TObject);
begin
  ConfirmationForm.ShowModal;
  if ConfirmationForm.ModalResult = mrOk then
  begin
    Bases.DeleteSeniority.Parameters.FindParam('UID').Value := CUR_USER;
    Bases.DeleteSeniority.ExecSQL;
    Bases.DeleteUser.Parameters.FindParam('UID').Value := CUR_USER;
    Bases.DeleteUser.ExecSQL;
    Bases.gvSimpleView.Close;
    Bases.gvSimpleView.Open;
  end;
end;

procedure TMainForm.dxBarButton5Click(Sender: TObject);
begin
  Bases.PersonalCard.Append;
  ED_PersonalData.ShowModal;
end;

procedure TMainForm.dxBarButton7Click(Sender: TObject);
begin
  AboutBox.ShowModal;
end;

function TMainForm.GetDayCount(DistanceArr: array of TglDateDistance): integer;
var
  i, a, days: integer;
  dd: array of TglDateDistance;
begin
  days := 0;
  SetLength(dd, Length(DistanceArr));
  for i := 0 to Length(DistanceArr) - 1 do
    dd[i] := DistanceArr[i];

  for i := 1 to Length(dd) - 1 do
    for a := i + 1 to Length(dd) - 1 do
      if CompareDateDistance(dd[i], dd[a]) <> ddNone then
      begin
        dd[i] := MergeDateDistance(dd[i], dd[a],
          CompareDateDistance(dd[i], dd[a]));
        dd[a] := dd[Length(dd) - 1];
        SetLength(dd, Length(dd) - 1);
      end;

  for I := 0 to Length(dd) - 1 do
    inc(days, DaysBetween(dd[i].BeginDate, dd[i].EndDate) + 1);
  result := days;
end;

function TMainForm.GetIntegerPart(Src: Double): integer;
var
  s: string;
begin
  s := FloatToStr(Src);
  Delete(s, Pos(',', s), Length(s));
  result := StrToInt(s);
end;

function TMainForm.GetRemainderPart(Src: Double): integer;
var
  s1, s2: string;
begin
  s1 := FloatToStr(Src);
  s2 := Copy(s1, Pos(',', s1) + 1, Length(s1));
  result := StrToInt(s2);
end;

procedure TMainForm.GV_SimpleViewCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  CUR_USER := Bases.gvSimpleView.FieldByName('ID').AsInteger;
end;

procedure TMainForm.GV_SimpleViewCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  dxBarButton2Click(self);
end;

function TMainForm.MakeNumber(Calculate: TglCalcTime): Double;
begin
  result := StrToFloat(IntToStr(Calculate.ctYear) + ',' +
    IntToStr(MonthToDay(Calculate.ctMonth) + Calculate.ctDay));
end;

function TMainForm.MergeDateDistance(FirstDistance,
  SecondDistance: TglDateDistance;
  DateDistanceType: TglDDResult): TglDateDistance;
begin
  case DateDistanceType of
    ddFirstInSecond: result := SecondDistance;
    ddSecondInFirst: result := FirstDistance;
    ddFirstInput:
      begin
        result.BeginDate := FirstDistance.BeginDate;
        result.EndDate := SecondDistance.EndDate;
      end;
    ddFirstOutput:
      begin
        result.BeginDate := SecondDistance.BeginDate;
        result.EndDate := FirstDistance.EndDate;
      end;
  end;
end;

function TMainForm.MonthToDay(MonthCount: integer): integer;
var
  i, d: integer;
begin
  d := 0;
  i := MonthCount;
  repeat
    if i > 0 then
    begin
      inc(d, 30);
      dec(i, 1);
    end;
  until i <= 0;
  result := d;
end;

function TMainForm.NumberToStr(Number: Double): string;
var
  day, month, year: integer;
  y, d, m: string;
begin
  year := GetIntegerPart(Number);
  day := GetRemainderPart(Number);
  month := DayToMonth(day);
  day := day - (month * 30);

  repeat
    if month > 12 then
    begin
      year := year + 1;
      month := month - 1;
    end;
  until month <= 12;

  if year = 0 then y := ''
  else
    y := IntToStr(year) + ' г. ';

  if month = 0 then m := ''
  else
    m := IntToStr(month) + ' м. ';

  if day = 0 then d := ''
  else
    d := IntToStr(day) + ' д.';

  result := y + m + d;
end;

end.

