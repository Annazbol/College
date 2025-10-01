type massiv=array[1..100000] of integer;


function cmp(a, b: integer; c: boolean  ): boolean;
begin
  if c then cmp:=a>b else cmp:=a<b
end;


procedure merge(var A: massiv; first, last: integer; c: boolean);
var 
  middle, start, final , j: integer;
  mas: massiv;
begin
  middle:=(first+last) div 2;
  start:=first;
  final:=middle+1;
  for j:=first to last do
    if (start<=middle) and ((final>last) or cmp(A[final], A[start], c)) then
    begin
      mas[j]:=A[start];
      inc(start);
    end
    else
    begin
      mas[j]:=A[final];
      inc(final);
    end;
  for j:=first to last do A[j]:=mas[j];
end;


procedure mergesort(var A: massiv; first, last: integer; c: boolean);
begin
  if first<last then
  begin
    MergeSort(A, first, (first+last) div 2, c); {сортировка левой части}
    MergeSort(A, (first+last) div 2+1, last, c); {сортировка правой части}
    Merge(A, first, last, c); {слияние двух частей}
  end;
end;


var
  f1, f2: text;
  n, i, input: integer;
  pluscons: char;
  c: boolean;
  arr: massiv;
begin
  assign(f1, 'C:\Users\User\Documents\Колледж\ОАиП\ДКР5\Input.txt');
  assign(f2, 'C:\Users\User\Documents\Колледж\ОАиП\ДКР5\Output2.txt');
  reset(f1);
  n:=0;
  while not eof(f1) do
  begin
    readln(f1, input);
    inc(n)
  end;
  close(f1);
  reset(f1);
  for i:=1 to n do
  begin
    readln(f1, input);
    arr[i]:=input;
  end;
  close(f1);
  readln(pluscons);
  if pluscons='+' then c:=True else c:=False;
  mergesort(arr, 1, n, c);
  rewrite(f2);
  for i:=1 to n do 
  begin
    writeln(f2, arr[i])
  end;
  close(f2)
end.