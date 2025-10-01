var
  f1: file of char;
  f2: file of char;
  count, max, i, j: integer;
  s: string;
  c: char;
  arr: array of string;
begin
  assign(f1, 'C:\Users\User\Documents\Êîëëåäæ\ÎÀèÏ\ËÐ 13\Ôàéë\2.1.txt');
  assign(f2, 'C:\Users\User\Documents\Êîëëåäæ\ÎÀèÏ\ËÐ 13\Ôàéë\2.2.txt');
  reset(f1);
  max:=0;
  count:=0;
  while not eof(f1) do
  begin
    read(f1, c);
    if ord(c) = 10 then
    begin
      if length(s) > max then max:=length(s);
      s := '';
      count+=1
    end
    else s := s + c;
  end;
  close(f1);
  if length(s) > max then max:=length(s);
  s := '';
  count+=1;
  setlength(arr, count);
  i:=0;
  reset(f1);
  while not eof(f1) do
  begin
    read(f1, c);
    if ord(c) = 10 then
    begin
      if length(s) = max then 
      begin
        arr[i]:=s;
        i+=1
      end;
      writeln(s);
      s := ''
    end
    else s := s + c;
  end;
  close(f1);
  if length(s) = max then 
  begin
    arr[i]:=s;
    i+=1
  end;
  s := '';
  count:=i-1;
  rewrite(f2);
  for i:=count downto 0 do
  begin
    for j:=1 to length(arr[i]) do write(f2, arr[i][j]);
    write(f2, chr(10))
  end
end.