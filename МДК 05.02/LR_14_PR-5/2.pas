function sumto(n: integer): integer;
begin
  sumto:=0;
  if n>1 then sumto:=n+sumto(n-1)
  else if n=1 then sumto:=1
end;
var
  input, ans: integer;
begin
  readln(input);
  ans:=sumto(input);
  writeln(ans)
end.