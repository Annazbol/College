procedure nod(var a, b, ans: integer);
var
  n, x, y: integer;
begin
  if a>=0 then
  begin
    x:=a;
    y:=b
  end
  else
  begin
    x:=b;
    y:=a
  end;
  n:=x mod y;
  if n<>0 then nod(y, n, ans)
  else ans:=y
end;
var
  a, b, ans: integer;
begin
  readln(a, b);
  nod(a, b, ans);
  writeln(ans)
end.