procedure fib (i,n: integer);
  begin
       writeln (i+n,' ');
       if (n+i)<89 then fib(n, n+i)
  end;
begin
  fib(0,1);
end.