var
  x, ans: real;

begin
  writeln('Введите x:');
  readln(x);
  if (x < (-9)) then 
    ans := (power(x, (0.1 * x)) / cos(x)) * (tan(x) / power(x, 3))
  else
    if (x < 0) then
      ans := power(x, (0.1 * x)) - x
    else
      if (x < 2) then
        ans := (power(x, 3) / tan(x)) + cos(x)  
      else
        ans := ln(x) * cos(x);
  writeln('Значение функции при числе ', x:5:1, ': ', ans)
end.