Program qq;
Var 
  s: array of integer;//глобальные переменные
  n, input, j: integer;//глобальные переменные
Procedure max(arr: array of integer; len: integer);//локальные переменные, формальные параметры
Var max, i, maxpos: integer;//локальные переменные
begin
  max:=-32768;
  maxpos:=1;
  for i:=0 to (len-1) do
  begin
    if arr[i]>max then
    begin
      max:=arr[i];
      maxpos:=i+1
    end
  end;
  writeln('Максимальный элемент: ', max, '.');
  writeln('Позиция максимального элемента: ', maxpos, '.')
end;
Procedure min(arr: array of integer; len: integer);//локальные переменные, формальные параметры, по значению
Var min, i, minpos: integer;//локальные переменные
begin
  min:=32767;
  minpos:=1;
  for i:=0 to (len-1) do
  begin
    if arr[i]<min then
    begin
      min:=arr[i];
      minpos:=i+1
    end
  end;
  writeln('Минимальный элемент: ', min, '.');
  writeln('Позиция минимального элемента: ', minpos, '.')
end;
Procedure maxneg(arr: array of integer; len: integer);//локальные переменные, формальные параметры, , по значению
Var //локальные переменные
  maxneg, i, maxnegpos: integer;
  negative: boolean;
begin
  maxneg:=-32768;
  negative:=False;
  maxnegpos:=1;
  for i:=0 to (len-1) do
  begin
    if arr[i]<0 then
    begin
      negative:=True;
      if arr[i]>maxneg then
      begin
        maxneg:=arr[i];
        maxnegpos:=i+1
      end
    end
  end;
  if negative then
  begin
    writeln('Максимальный отрицательный элемент: ', maxneg, '.');
    writeln('Позиция максимального отрицательного элемента: ', maxnegpos, '.')
  end
  else writeln('Отрицательных чисел нет.')
end;
begin
  readln(n);
  SetLength(s, n);
  for j:=0 to (n-1) do
  begin
    readln(input);
    s[j]:=input
  end;
  max(s, n);//фактические параметры
  min(s, n);//фактические параметры
  maxneg(s, n)//фактические параметры 
end.
