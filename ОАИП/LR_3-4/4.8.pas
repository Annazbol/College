var n, num, min, min_num: integer;
begin
  n:=1;
  num:=0;
  min:=100000000;
  min_num:=0;
  writeln('������� ����� ������������ ������� ���������� (���� 0 - ����� �������)');
  repeat
    read(n);
    num+=1;
    if (n<min) and (n<>0) then
      begin
        min:=n; 
        min_num:=num
      end;
  until n=0;
  writeln('����� ����������, ��� ������������ �������� �������� ������������� ������ ����� ������� - ', min_num)
end.