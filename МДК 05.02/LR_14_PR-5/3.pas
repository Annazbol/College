var x,y: integer;
function stepen (a,b: integer):integer;
begin
  if b=0 then stepen:=1
  else if b>0 then stepen:=a*stepen(a, b-1);
end;
begin
  writeln('�����?');
  readln(x);
  writeln('�������?');
  readln(y);
  writeln(stepen(x,y));
end.