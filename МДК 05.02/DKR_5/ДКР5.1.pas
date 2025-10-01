procedure countingsort(arr1, arr2: array of integer; c: boolean);
var
  max, min, i, j, k: integer;
  count: array of integer;
begin
  max:=-32768;
  min:=32767;
  for i:=0 to (length(arr1)-1) do
  begin
    if arr1[i]>max then max:=arr1[i];
    if min>arr1[i] then min:=arr1[i];
  end;
  setlength(count, max-min+1);
  for i:=0 to (length(arr1)-1) do
  begin
    inc(count[arr1[i]-min])
  end;
  k:=0;
  if c then
    for i:=0 to (length(count)-1) do
    begin
      if count[i]>0 then
      begin
        for j:=0 to (count[i]-1) do arr2[j+k]:=i+min;
        k+=(j+1)
      end
    end
  else
    for i:=(length(count)-1) downto 0 do
    begin
      if count[i]>0 then
      begin
        for j:=0 to (count[i]-1) do arr2[j+k]:=i+min;
        k+=(j+1)
      end
    end
end;


var
  f1, f2: text;
  pluscons: char;
  c: boolean;
  n, a, b, i, input: integer;
  arrinput, arroutput: array of integer;
begin
  assign(f1, 'C:\Users\User\Documents\Êîëëåäæ\ÎÀèÏ\ÄÊĞ5\Input.txt');
  assign(f2, 'C:\Users\User\Documents\Êîëëåäæ\ÎÀèÏ\ÄÊĞ5\Output1.txt');
  reset(f1);
  n:=0;
  while not eof(f1) do
  begin
    readln(f1, input);
    inc(n)
  end;
  close(f1);
  reset(f1);
  setlength(arrinput, n);
  for i:=0 to n-1 do
  begin
    readln(f1, input);
    arrinput[i]:=input;
  end;
  close(f1);
  setlength(arroutput, n);
  readln(pluscons);
  if pluscons='+' then c:=True else c:=False;
  countingsort(arrinput, arroutput, c);
  rewrite(f2);
  for i:=0 to n-1 do 
  begin
    writeln(f2, arroutput[i])
  end;
  close(f2)
end.