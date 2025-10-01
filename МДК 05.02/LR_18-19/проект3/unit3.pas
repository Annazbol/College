unit unit3;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons;

type

  { TForm1 }

  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.BitBtn2Click(Sender: TObject);
var k1, k2, i, t: integer;
begin
  k1:=StrToInt(Edit1.Text);
  k2:=StrToInt(Edit2.Text);
  t:=1;
  for i:=1 to k2 do t*=k1;
  Memo1.Lines.add('число '+Edit1.Text+' в степени '+Edit2.Text+' равно: '+IntToStr(t))
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  Close
end;

end.

