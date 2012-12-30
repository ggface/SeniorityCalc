unit confirmation;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinDarkRoom, Menus, cxLookAndFeelPainters, StdCtrls,
  cxButtons, cxControls, cxContainer, cxEdit, cxLabel, dxGDIPlusClasses, cxImage;

type
  TConfirmationForm = class(TForm)
    cxLabel5: TcxLabel;
    cxButton4: TcxButton;
    cxButton1: TcxButton;
    cxImage1: TcxImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConfirmationForm: TConfirmationForm;

implementation

{$R *.dfm}

end.
