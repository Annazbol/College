var n: integer;
begin
writeln('Введите год');
read(n);
if ((n mod 4 = 0) and not (n mod 100 = 0)) or (n mod 400 = 0) then
  writeln('Год является високосным')
else
  writeln('Год является не високосным');
end.
