var
  input, s, wor, cyrillic: string;
  count, max, i, num, a, b: integer;
  arr: array[1..100] of string;
begin
  readln(input);
  s:='';
  cyrillic:='абвгдежзийклмнопрстуфхцчшщъыьэюя';
  for i:=1 to length(input) do 
  begin
    case ord(input[i]) of
    32, 97..122, 224..255: s+=input[i];
    65..90: s+=char(ord(input[i])+32);
    192..223: s+=cyrillic[ord(input[i])-191];
    168: s+='ё';
    end
  end;
  if s[length(s)]<>' ' then s+=' ';
  wor:='';
  num:=1;
  for i:=1 to length(s) do
  begin
    if s[i]<>' ' then wor+=s[i]
    else
    begin
      arr[num]:=wor;
      wor:='';
      num+=1
    end
  end;
  max:=0;
  for a:=1 to (num-1) do
  begin
    count:=0;
    for b:=a to (num-1) do if arr[b]=arr[a] then count+=1;
    if max<count then
    begin
      max:=count;
    end
  end;
  writeln('Кол-во повторов чаще встречающихся слов: ', max);
  writeln('Слова:');
  for a:=1 to (num-1) do
  begin
    count:=0;
    for b:=a to (num-1) do if arr[b]=arr[a] then count+=1;
    if count=max then
    begin
      writeln(arr[a])
    end
  end;
end.