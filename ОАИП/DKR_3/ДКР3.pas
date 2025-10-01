Uses Crt;
var
  inputa, inputb, ans, inac: real;
  n, num: integer;
  input: boolean;
Function func(x: real): real;
begin
  func:=2*x*sqr(x)-sqr(x)-4*x+5;
end;
Function reacts(a, b: real; n: integer): real;
var
  h, s, j: real;
begin
  h := (b - a)/n;
  j:=0.0;
  while j <= (n-1) do 
  begin
    s+=h*func(a+h*(j+0.5));
    j+=1
  end;
  reacts:=s
end;
Function inaccuracy(a, b, ans: real): real;
var
  definteg, ina: real;
begin
  definteg:=(sqr(sqr(b))/2) - ((b*sqr(b))/3) - 2*sqr(b) + 5*b - ((sqr(sqr(a))/2) - ((a*sqr(a))/3) - 2*sqr(a) + 5*a);
  ina:=definteg-ans;
  inaccuracy:=(ina/definteg)*100
end;
begin
  writeln('���������� ������� ������ ������������ ������ y = 2x^3 - x^2 - 4x + 5 � ���� Ox.');
  input:=False;
  repeat
  begin
    writeln();
    writeln('��������� ��������:');
    writeln('1 - ����');
    writeln('2 - �����');
    writeln('3 - �����������');
    writeln('0 - �����');
    write('�������� ��������: ');
    readln(num);
    case num of
      1: 
      begin
        input:=true;
        write('������� ������� ������� ��������������: ');
        readln(inputb);
        write('������� ������ ������� ��������������: ');
        readln(inputa);
        write('���������� ������ ������: ');
        readln(n);
        ans:=reacts(inputa, inputb, n);
        inac:=inaccuracy(inputa, inputb, ans)
      end;
      2: if input then writeln('�����: ', ans) else writeln('������� ������ ���!');
      3: if input then writeln('�����������: ', inac) else writeln('������� ������ ���!');
    end
  end
  until num=0
end.