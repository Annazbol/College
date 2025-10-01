unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  Buttons, Math;
const Pi = 3.14;
type

  { TForm1 }

  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  close
end;

procedure TForm1.Button1Click(Sender: TObject);
var a, b, f: real;
begin
   a:=StrToFloat(Edit1.Text);
   b:=StrToFLoat(Edit2.Text);
   f:=sqrt(Pi/8)*sqrt(sqrt(a+b)/(sqr(a)+sqr(b)))-a*power(b, 3);
   Memo1.Lines.Add('Результат: ' + FloatToStr(f))
end;

end.

