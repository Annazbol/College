var
  filetext: text;
  s: string;
begin
  assign(filetext,'C:\Users\User\Documents\Êמככוהז\־ְטֿ\ֻ׀ 12\װאיכû\3.txt');
  read(s);
  append(filetext);
  write(filetext, s);
  close(filetext)
end.  