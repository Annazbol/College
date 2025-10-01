var
  filetext: text;
  a:string;
  i:integer;
begin
assign(filetext,'C:\Users\User\Documents\Êמככוהז\־ְטֿ\ֻ׀ 12\װאיכû\1.txt');
rewrite(filetext);
for i:=1 to 10 do writeln(filetext, i);
close(filetext);
reset(filetext);
for i:=1 to 10 do 
begin
    readln(filetext, a);
    writeln(a)
end;
close(filetext);
end.