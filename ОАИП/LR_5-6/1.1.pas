var 
  a: array[1..20] of integer;
  i: integer;
begin
  for i:=1 to 20 do
    read(a[i]);
  for i:=1 to 20 do
    if a[i]>0 then a[i]:=0
    else if a[i]<0 then a[i]:=sqr(a[i]);
  for i:=1 to 20 do
    writeln(a[i])
end.