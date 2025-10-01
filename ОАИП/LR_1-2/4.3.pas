var a, b, c: integer;
    r, s, m: real;
begin
writeln('Введите стороны треугольной площадки');
read(a, b, c);
r:=(a+b+c)/2;
s:=sqrt(r*(r-a)*(r-b)*(r-c));
m:=s/100;
writeln('Для того, чтобы засеять площадку газонной травкой понадобится ', m, ' кг.')
end.
