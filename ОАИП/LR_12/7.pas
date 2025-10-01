var
  f1, f2: text;
  n, i, j, count, sum: integer;
begin
  assign(f1,'C:\Users\User\Documents\Êמככוהז\־ְטֿ\ֻ׀ 12\װאיכû\7.1.txt');
  assign(f2,'C:\Users\User\Documents\Êמככוהז\־ְטֿ\ֻ׀ 12\װאיכû\7.2.txt');
  reset(f1);
  rewrite(f2);
  readln(f1, n);
  sum:=0;
  for i:=1 to n do
  begin
    count:=2;
    for j:=2 to (i div 2) do if i mod j = 0 then count+=1;
    if count=5 then sum+=i
  end;
  writeln(f2, sum);
  close(f1);
  close(f2)
end.