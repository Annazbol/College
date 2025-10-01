var
s: string;
b: integer;
begin
readln(s);
b:=Pos('Nikolay', s);
while b<>0 do
begin
Delete(s, b, 7);
Insert('Oleg', s, b);
b:=Pos('Nikolay', s)
end;
writeln(s)
end.