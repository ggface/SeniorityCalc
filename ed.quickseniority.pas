unit ed.quickseniority;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinDarkRoom, Menus, cxLookAndFeelPainters, StdCtrls,
  cxButtons, cxTextEdit, cxDBEdit, cxControls, cxContainer, cxEdit, cxLabel,
  cxGraphics, cxDropDownEdit, cxCalendar, cxMaskEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxCheckBox;

type
  TED_QuickSeniority = class(TForm)
    cxLabel5: TcxLabel;
    cxLabel1: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxLabel2: TcxLabel;
    cxLabel4: TcxLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    cxButton1: TcxButton;
    cxButton4: TcxButton;
    cxLabel3: TcxLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ED_QuickSeniority: TED_QuickSeniority;

implementation

uses base, main;

{$R *.dfm}

procedure TED_QuickSeniority.cxButton1Click(Sender: TObject);
begin
  Bases.Seniority.FieldByName('UserName').Value := CUR_USER;
  Bases.Seniority.Post;
  Close;
end;

procedure TED_QuickSeniority.cxButton4Click(Sender: TObject);
begin
  Bases.Seniority.Cancel;
  Close;
end;

procedure TED_QuickSeniority.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Bases.SeniorityView.Close;
  Bases.SeniorityView.Open;
end;

end.

