Program qq;
Var
  c: array [,] of integer;
  i, j: integer;
Procedure neg(arr: array [,] of integer);
var
  a, b: integer;
  s: array of integer;
  negative: boolean;
begin
  SetLength(s, 8);
  for a:=0 to 7 do
  begin
    negative:=False;
    for b:=0 to 5 do
    begin
      if arr[a, b]<0 then
      begin
        negative:=True;
        break
      end
    end;
    if negative then s[a]:=-1
    else s[a]:=1
  end;
  for a:=0 to 7 do writeln(s[a])
end;
begin
  SetLength(c, 8, 6);
  for i:=0 to 7 do
  begin
    writeln('Введите ', i+1, ' массив.');
    for j:=0 to 5 do readln(c[i, j])
  end;
  writeln('Новый массив:');
  neg(c)
end.
    