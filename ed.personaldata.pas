unit ed.personaldata;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinDarkRoom, cxTextEdit, cxDBEdit, cxControls,
  cxContainer, cxEdit, cxLabel, Menus, cxLookAndFeelPainters, StdCtrls,
  cxButtons, cxMaskEdit;

type
  TED_PersonalData = class(TForm)
    cxLabel5: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxLabel2: TcxLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel6: TcxLabel;
    cxButton4: TcxButton;
    cxButton1: TcxButton;
    cxDBMaskEdit1: TcxDBMaskEdit;
    cxDBMaskEdit2: TcxDBMaskEdit;
    cxDBMaskEdit3: TcxDBMaskEdit;
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ED_PersonalData: TED_PersonalData;

implementation

uses Base;

{$R *.dfm}

procedure TED_PersonalData.cxButton1Click(Sender: TObject);
begin
  Bases.PersonalCard.Post;
  Bases.gvSimpleView.Close;
  Bases.gvSimpleView.Open;
  Close;
end;

procedure TED_PersonalData.cxButton4Click(Sender: TObject);
begin
  Bases.PersonalCard.Cancel;
  Close;
end;

end.

