var
  filetext: text;
  i, j, n, k:integer;
begin
  assign(filetext,'C:\Users\User\Documents\Êמככוהז\־ְטֿ\ֻ׀ 12\װאיכû\2.txt');
  readln(n, k);
  rewrite(filetext);
  for i:=1 to n do 
  begin
    for j:=1 to k do
    begin
      write(filetext, '*');
    end;
    writeln(filetext)
  end;
  close(filetext)
end.