unit About;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, dxSkinsCore, dxSkinDarkRoom, Menus, cxLookAndFeelPainters,
  dxGDIPlusClasses, cxImage, cxButtons, cxControls, cxContainer, cxEdit, cxLabel;

type
  TAboutBox = class(TForm)
    cxLabel5: TcxLabel;
    cxButton1: TcxButton;
    cxImage1: TcxImage;
    cxLabel1: TcxLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutBox: TAboutBox;

implementation

{$R *.dfm}

end.
 
