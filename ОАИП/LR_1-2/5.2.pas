var a, b, c, max, min, sub: integer;
begin
writeln('Введите массы гантелей качков');
read(a, b, c);
if (a>=b) and (a>=c) then
  max:=a;
if (b>=a) and (b>=c) then
  max:=b;
if (c>=a) and (c>=b) then
  max:=c;
if (a<=b) and (a<=c) then
  min:=a;
if (b<=a) and (b<=c) then
  min:=b;
if (c<=a) and (c<=b) then
  min:=c;
sub:=max-min;
write('Разница между гантелей самого сильного и самого слабого качков составляет ', sub, ' кг');
end.
