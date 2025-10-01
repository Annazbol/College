var n1, n2, p1, p2, years: integer;
begin
  writeln('¬ведите население первого города.');
  readln(n1);
  writeln('¬ведите население второго города.');
  readln(n2);
  writeln('¬ведите прирост населени€ в первом городе.');
  readln(p1);
  writeln('¬ведите прирост населени€ во втором городе.');
  readln(p2);
  years:=0;
  while n2>=n1 do
    begin
      n1+=p1;
      n2+=p2;
      years+=1
    end;
  writeln('„ерез ', years, ' лет население 1-го города станет больше населени€ 2-го.' )
end.