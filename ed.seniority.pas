unit ed.seniority;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, dxSkinsCore, dxSkinDarkRoom, dxSkinscxPCPainter,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid, Menus,
  cxLookAndFeelPainters, StdCtrls, cxButtons, cxDBLookupComboBox, Grids, DBGrids;

type
  TED_Seniority = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxButton2: TcxButton;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ED_Seniority: TED_Seniority;

implementation

uses base, ed.quickseniority, confirmation;

{$R *.dfm}

procedure TED_Seniority.cxButton1Click(Sender: TObject);
var
  i:integer;
begin
  i := Bases.SeniorityView.FieldByName('ID').AsInteger;
  Bases.Seniority.Locate('ID', i, []);
  Bases.Seniority.Edit;
  ED_QuickSeniority.ShowModal;
end;

procedure TED_Seniority.cxButton2Click(Sender: TObject);
begin
  Bases.Seniority.Append;
  ED_QuickSeniority.ShowModal;
end;

procedure TED_Seniority.cxButton3Click(Sender: TObject);
begin
  ConfirmationForm.ShowModal;
  if ConfirmationForm.ModalResult = mrOk then
  begin
    Bases.Seniority.Delete;
    Bases.SeniorityView.Close;
    Bases.SeniorityView.Open;
  end;
end;

procedure TED_Seniority.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Bases.gvSimpleView.Close;
  Bases.gvSimpleView.Open;
end;

end.

