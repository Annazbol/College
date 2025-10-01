var 
  x: real;
  i: integer;
begin
x:=0.000;
writeln('  x    sin x   cos x');
for i:=1 to 10 do
  begin
    writeln(x:2:4, ' ', SIN(x):2:4, ' ', COS(x):2:4);
    x += 0.1
  end;
end.
