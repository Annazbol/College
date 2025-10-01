unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Math;

type

  { TCal_culator }

  TCal_culator = class(TForm)
    OpNegative: TButton;
    CleanBackspace: TButton;
    Num7: TButton;
    Num0: TButton;
    comma: TButton;
    OpPlus: TButton;
    OpMinus: TButton;
    OpMultiply: TButton;
    OpDivision: TButton;
    Equal: TButton;
    OpFraction: TButton;
    OpSquare: TButton;
    Clean: TButton;
    Num8: TButton;
    CleanEntry: TButton;
    Backspace: TButton;
    OpRoot: TButton;
    Num9: TButton;
    Num4: TButton;
    Num5: TButton;
    Num6: TButton;
    Num1: TButton;
    Num2: TButton;
    Num3: TButton;
    Display: TEdit;
    procedure OpNegativeClick(Sender: TObject);
    procedure CleanBackspaceClick(Sender: TObject);
    procedure CleanClick(Sender: TObject);
    procedure CleanEntryClick(Sender: TObject);
    procedure commaClick(Sender: TObject);
    procedure EqualClick(Sender: TObject);
    procedure Num0Click(Sender: TObject);
    procedure Num1Click(Sender: TObject);
    procedure Num2Click(Sender: TObject);
    procedure Num3Click(Sender: TObject);
    procedure Num4Click(Sender: TObject);
    procedure Num5Click(Sender: TObject);
    procedure Num6Click(Sender: TObject);
    procedure Num7Click(Sender: TObject);
    procedure Num8Click(Sender: TObject);
    procedure Num9Click(Sender: TObject);
    procedure OpDivisionClick(Sender: TObject);
    procedure OpFractionClick(Sender: TObject);
    procedure OpMinusClick(Sender: TObject);
    procedure OpMultiplyClick(Sender: TObject);
    procedure OpPlusClick(Sender: TObject);
    procedure OpRootClick(Sender: TObject);
    procedure OpSquareClick(Sender: TObject);
  private
    FirstNum, SecondNum, Answer: string;
    op: char;
  public

  end;

var
  Cal_culator: TCal_culator;

implementation

{$R *.lfm}

{ TCal_culator }

procedure TCal_culator.Num1Click(Sender: TObject);
begin
  if (Display.Text = '0') or (Display.Text = 'Ошибка!') or (StrToFloat(Display.Text) >= power(10, 15)) then Display.Text := '1'
  else Display.Text := Display.Text + '1'
end;

procedure TCal_culator.commaClick(Sender: TObject);
begin
  if (pos(',', Display.Text) = 0) and (Display.Text <> 'Ошибка!') then Display.Text := Display.Text + ','
end;

procedure TCal_culator.CleanBackspaceClick(Sender: TObject);
var s: string;
begin
  if (length(Display.Text)>1) and (Display.Text <> 'Ошибка!') and not ((length(Display.Text) = 2) and (pos('-', Display.Text) <> 0)) then
  begin
    s := Display.Text;
    Delete(s, length(s), 1);
    Display.Text := s
  end
  else Display.Text := '0'
end;

procedure TCal_culator.OpNegativeClick(Sender: TObject);
begin
  if not ((Display.Text = '0') or (Display.Text = 'Ошибка!')) then
  if (pos('-', Display.Text) = 0) then Display.Text := '-' + Display.Text
  else Display.Text := FloatToStr(StrToFloat(Display.Text) * (-1))
end;

procedure TCal_culator.CleanClick(Sender: TObject);
begin
  Display.Text := '0'
end;

procedure TCal_culator.CleanEntryClick(Sender: TObject);
begin
   Display.Text := '0';
   FirstNum := chr(0);
   SecondNum := chr(0);
   op := chr(0)
end;

procedure TCal_culator.EqualClick(Sender: TObject);
begin
if Display.Text <> 'Ошибка!' then
begin
  SecondNum := Display.Text;
  case op of
       '+': Answer:=FloatToStr(StrToFloat(FirstNum)+StrToFloat(SecondNum));
       '-': Answer:=FloatToStr(StrToFloat(FirstNum)-StrToFloat(SecondNum));
       '*': Answer:=FloatToStr(StrToFloat(FirstNum)*StrToFloat(SecondNum));
       '/':
         if SecondNum <> '0' then Answer:=FloatToStr(StrToFloat(FirstNum)/StrToFloat(SecondNum))
         else if FirstNum = '0' then Answer:='0'
         else Answer:='Ошибка!';
  end;
  Display.Text := Answer;
  op := chr(0)
end;
end;

procedure TCal_culator.Num0Click(Sender: TObject);
begin
  if (Display.Text = '0') or (Display.Text = 'Ошибка!') or (StrToFloat(Display.Text) >= power(10, 15)) then Display.Text := '0'
  else Display.Text := Display.Text + '0'
end;

procedure TCal_culator.Num2Click(Sender: TObject);
begin
  if (Display.Text = '0') or (Display.Text = 'Ошибка!') or (StrToFloat(Display.Text) >= power(10, 15)) then Display.Text := '2'
  else Display.Text := Display.Text + '2'
end;

procedure TCal_culator.Num3Click(Sender: TObject);
begin
  if (Display.Text = '0') or (Display.Text = 'Ошибка!') or (StrToFloat(Display.Text) >= power(10, 15)) then Display.Text := '3'
  else Display.Text := Display.Text + '3'
end;

procedure TCal_culator.Num4Click(Sender: TObject);
begin
  if (Display.Text = '0') or (Display.Text = 'Ошибка!') or (StrToFloat(Display.Text) >= power(10, 15)) then Display.Text := '4'
  else Display.Text := Display.Text + '4'
end;

procedure TCal_culator.Num5Click(Sender: TObject);
begin
  if (Display.Text = '0') or (Display.Text = 'Ошибка!') or (StrToFloat(Display.Text) >= power(10, 15)) then Display.Text := '5'
  else Display.Text := Display.Text + '5'
end;

procedure TCal_culator.Num6Click(Sender: TObject);
begin
  if (Display.Text = '0') or (Display.Text = 'Ошибка!') or (StrToFloat(Display.Text) >= power(10, 15)) then Display.Text := '6'
  else Display.Text := Display.Text + '6'
end;

procedure TCal_culator.Num7Click(Sender: TObject);
begin
  if (Display.Text = '0') or (Display.Text = 'Ошибка!') or (StrToFloat(Display.Text) >= power(10, 15)) then Display.Text := '7'
  else Display.Text := Display.Text + '7'
end;

procedure TCal_culator.Num8Click(Sender: TObject);
begin
  if (Display.Text = '0') or (Display.Text = 'Ошибка!') or (StrToFloat(Display.Text) >= power(10, 15)) then Display.Text := '8'
  else Display.Text := Display.Text + '8'
end;

procedure TCal_culator.Num9Click(Sender: TObject);
begin
  if (Display.Text = '0') or (Display.Text = 'Ошибка!') or (StrToFloat(Display.Text) >= power(10, 15)) then Display.Text := '9'
  else Display.Text := Display.Text + '9'
end;

procedure TCal_culator.OpDivisionClick(Sender: TObject);
begin
if Display.Text <> 'Ошибка!' then
begin
  if op = chr(0) then
  begin
       op := '/';
       FirstNum := Display.Text;
       Display.Text := '0'
  end
  else
  begin
    SecondNum := Display.Text;
    case op of
       '+': Answer:=FloatToStr(StrToFloat(FirstNum)+StrToFloat(SecondNum));
       '-': Answer:=FloatToStr(StrToFloat(FirstNum)-StrToFloat(SecondNum));
       '*': Answer:=FloatToStr(StrToFloat(FirstNum)*StrToFloat(SecondNum));
       '/':
         if SecondNum <> '0' then Answer:=FloatToStr(StrToFloat(FirstNum)/StrToFloat(SecondNum))
         else if FirstNum = '0' then Answer:='0'
         else Answer:='Ошибка!';
    end;
    if Answer <> 'Ошибка!' then
    begin
       op := '/';
       FirstNum := Answer;
       Display.Text := '0'
    end
    else
    begin
       Display.Text := 'Ошибка!';
       op := chr(0)
    end;
  end;
end;
end;

procedure TCal_culator.OpFractionClick(Sender: TObject);
var Frac: real;
begin
if Display.Text <> 'Ошибка!' then
begin
  if Display.Text <> '0' then
  begin
       Frac:=1/StrToFloat(Display.Text);
       Display.Text:=FloatToStr(Frac)
  end
  else Display.Text := 'Ошибка!'
end;
end;

procedure TCal_culator.OpMinusClick(Sender: TObject);
begin
if Display.Text <> 'Ошибка!' then
begin
  if op = chr(0) then
  begin
       op := '-';
       FirstNum := Display.Text;
       Display.Text := '0'
  end
  else
  begin
  SecondNum := Display.Text;
  case op of
       '+': Answer:=FloatToStr(StrToFloat(FirstNum)+StrToFloat(SecondNum));
       '-': Answer:=FloatToStr(StrToFloat(FirstNum)-StrToFloat(SecondNum));
       '*': Answer:=FloatToStr(StrToFloat(FirstNum)*StrToFloat(SecondNum));
       '/':
         if SecondNum <> '0' then Answer:=FloatToStr(StrToFloat(FirstNum)/StrToFloat(SecondNum))
         else Answer:='Ошибка!';
  end;
    if Answer <> 'Ошибка!' then
    begin
       op := '-';
       FirstNum := Answer;
       Display.Text := '0'
    end
    else
    begin
       Display.Text := 'Ошибка!';
       op := chr(0)
    end;
  end;
end;
end;

procedure TCal_culator.OpMultiplyClick(Sender: TObject);
begin
if Display.Text <> 'Ошибка!' then
begin
  if op = chr(0) then
  begin
       op := '*';
       FirstNum := Display.Text;
       Display.Text := '0'
  end
  else
  begin
  SecondNum := Display.Text;
  case op of
       '+': Answer:=FloatToStr(StrToFloat(FirstNum)+StrToFloat(SecondNum));
       '-': Answer:=FloatToStr(StrToFloat(FirstNum)-StrToFloat(SecondNum));
       '*': Answer:=FloatToStr(StrToFloat(FirstNum)*StrToFloat(SecondNum));
       '/':
         if SecondNum <> '0' then Answer:=FloatToStr(StrToFloat(FirstNum)/StrToFloat(SecondNum))
         else Answer:='Ошибка!';
  end;
    if Answer <> 'Ошибка!' then
    begin
       op := '*';
       FirstNum := Answer;
       Display.Text := '0'
    end
    else
    begin
       Display.Text := 'Ошибка!';
       op := chr(0)
    end;
  end;
end;
end;

procedure TCal_culator.OpPlusClick(Sender: TObject);
begin
if Display.Text <> 'Ошибка!' then
begin
  if op = chr(0) then
  begin
       op := '+';
       FirstNum := Display.Text;
       Display.Text := '0'
  end
  else
  begin
    SecondNum := Display.Text;
    case op of
       '+': Answer:=FloatToStr(StrToFloat(FirstNum)+StrToFloat(SecondNum));
       '-': Answer:=FloatToStr(StrToFloat(FirstNum)-StrToFloat(SecondNum));
       '*': Answer:=FloatToStr(StrToFloat(FirstNum)*StrToFloat(SecondNum));
       '/':
         if SecondNum <> '0' then Answer:=FloatToStr(StrToFloat(FirstNum)/StrToFloat(SecondNum))
         else Answer:='Ошибка!';
    end;
    if Answer <> 'Ошибка!' then
    begin
       op := '+';
       FirstNum := Answer;
       Display.Text := '0'
    end
    else
    begin
       Display.Text := 'Ошибка!';
       op := chr(0)
    end;
  end;
end;
end;

procedure TCal_culator.OpRootClick(Sender: TObject);
var Root: real;
begin
if Display.Text <> 'Ошибка!' then
begin
  if StrToFloat(Display.Text) >= 0 then
  begin
    Root:=sqrt(StrToFloat(Display.Text));
    Display.Text:=FloatToStr(Root)
  end
  else Display.Text:='Ошибка!'
end;
end;

procedure TCal_culator.OpSquareClick(Sender: TObject);
var Square: real;
begin
if Display.Text <> 'Ошибка!' then
begin
  Square:=sqr(StrToFloat(Display.Text));
  Display.Text:=FloatToStr(Square)
end;
end;

end.

