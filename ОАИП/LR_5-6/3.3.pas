var
  a: array[1..21] of integer;
  i, count, pos: integer;

begin
  for i := 1 to 20 do
    read(a[i]);
  for i := 1 to 20 do
  begin
    if a[i] mod 2 = 0 then
      count += 1;
    if count = 1 then
      pos := i-1
  end;
  for i := 20 downto (pos + 1) do
    a[i + 1] := a[i];
  a[pos + 1] := count;
  for i := 1 to 21 do
    writeln(a[i])
end.