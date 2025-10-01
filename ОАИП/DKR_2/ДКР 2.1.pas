var
  s: array of integer;
  min, i, j, n, m: integer;
begin
  writeln('Введите количество чисел в массиве');
  readln(n);
  SetLength(s, n);
  min := 32767;
  writeln('Введите числа массива');
  for i := 0 to (n-1) do
  begin
    readln(m);
    s[i] := m
  end;
  for i := 0 to (n-1) do
  begin
    for j := (i + 1) to (n-1) do
    begin
      if abs(s[i] - s[j]) < min then
      begin
        min := abs(s[i] - s[j])
      end
    end
  end;
  writeln('Минимальный модуль разности: ', min);
  writeln('Пары:');
  for i := 0 to (n-1) do
  begin
    for j := (i + 1) to (n-1) do
    begin
      if abs(s[i] - s[j]) = min then writeln(s[i], ' и ', s[j])
    end
  end
end.