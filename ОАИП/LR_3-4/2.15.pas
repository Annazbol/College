var n1, n2, p1, p2, years: integer;
begin
  writeln('������� ��������� ������� ������.');
  readln(n1);
  writeln('������� ��������� ������� ������.');
  readln(n2);
  writeln('������� ������� ��������� � ������ ������.');
  readln(p1);
  writeln('������� ������� ��������� �� ������ ������.');
  readln(p2);
  years:=0;
  while n2>=n1 do
    begin
      n1+=p1;
      n2+=p2;
      years+=1
    end;
  writeln('����� ', years, ' ��� ��������� 1-�� ������ ������ ������ ��������� 2-��.' )
end.