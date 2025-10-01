var
  f1, f2: text;
  k, i: integer;
  s: string;
begin
  assign(f1,'C:\Users\User\Documents\Êמככוהז\־ְטֿ\ֻ׀ 12\װאיכû\4.1.txt');
  assign(f2,'C:\Users\User\Documents\Êמככוהז\־ְטֿ\ֻ׀ 12\װאיכû\4.2.txt');
  read(k);
  reset(f1);
  rewrite(f2);
  while not Eof(f1) do
  begin
    readln(f1, s);
    i+=1;
    if i=k then writeln(f2, ' ');
    writeln(f2, s);
  end;
  close(f1);
  close(f2)
end.