var n: integer;
    a: integer;
    b: integer;
begin
writeln('Введите число');
read(n);
a := (n div 10) * 100;
b := (n mod 10);
n := a + b;
write(n);
end.
