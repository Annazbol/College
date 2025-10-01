procedure rec(n: integer);
begin
  if n>1 then rec(n-2)
  else if n=1 then rec(n-1);
  writeln(n)
end;
begin
  rec(25)
end.