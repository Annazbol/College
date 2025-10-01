var
  f1: file of real;
  input, output, sum: real;
  n, i: integer;
begin
  assign(f1, 'C:\Users\User\Documents\Êîëëåäæ\ÎÀèÏ\ËĞ 13\Ôàéë\4.txt');
  rewrite(f1);
  readln(n);
  for i:=1 to n do
  begin
    readln(input);
    write(f1, input);
  end;
  close(f1);
  reset(f1);
  sum:=0;
  for i:=1 to n do
  begin
    read(f1, output);
    if (i mod 2) = 0 then sum+=output
  end;
  writeln(sum)
end.