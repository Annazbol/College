var
  a: array[1..100] of integer;
  i, n, count, max: integer;

begin
  read(n);
  for i := 1 to n do
    read(a[i]);
  max := 0;
  i := 1;
  count := 1;
  for i := 2 to n do
  begin
    if a[i - 1] <= a[i] then
    begin
      count += 1;
    end
    else 
    begin
      if count > max then 
      begin
        max := count
      end;
      count := 1
    end;
  end;
  if count > max then writeln(count)
  else writeln(max)
end.