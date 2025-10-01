var
  i: integer;
  x, ans: real;

begin
  for i:=0 to 75 do
  begin
  x:=i*0.2-11;
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
  writeln(x:5:1, ': ', ans)
  end
end.