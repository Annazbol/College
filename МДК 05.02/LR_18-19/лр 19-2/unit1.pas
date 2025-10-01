unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons, Math;
const Pi = 3.14;
type

  { TForm1 }

  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Memo1: TMemo;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
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
  Close
end;

procedure TForm1.Button1Click(Sender: TObject);
var s, a, d, s1: real;
begin
  s:=StrToFloat(Edit1.Text);
  a:=sqrt(s);
  d:=sqrt(2)*a;
  s1:=Pi*sqr(d/2);
  Memo1.Lines.Add('Длина квадрата: ' + FloatToStr(a));
  Memo1.Lines.Add('Диагональ квадрата: ' + FloatToStr(d));
  Memo1.Lines.Add('Площадь круга, описанного около квадрата: ' + FloatToStr(s1))
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin

end;

end.

