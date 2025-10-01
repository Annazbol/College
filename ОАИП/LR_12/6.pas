var
  f1, f2: text;
  s: string;
begin
  assign(f1,'C:\Users\User\Documents\Êמככוהז\־ְטֿ\ֻ׀ 12\װאיכû\6.1.txt');
  assign(f2,'C:\Users\User\Documents\Êמככוהז\־ְטֿ\ֻ׀ 12\װאיכû\6.2.txt');
  reset(f1);
  rewrite(f2);
  while not eof(f1) do
  begin
    readln(f1,s);
    if s<>'' then writeln(f2,s)
  end;
  close(f1);
  close(f2)
end.
  