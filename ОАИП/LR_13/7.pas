var
  f1, f2: file of char;
  i: int64;
  c: char;
begin
  assign(f1, 'C:\Users\User\Documents\Êמככוהז\ÎÀטÏ\ËÐ 13\Ôאיכ\7.1.txt');
  assign(f2, 'C:\Users\User\Documents\Êמככוהז\ÎÀטÏ\ËÐ 13\Ôאיכ\7.2.txt');
  i:=0;
  reset(f1);
  rewrite(f2);
  for i:=0 to filesize(f1)-1 do
  begin
    seek(f1, i);
    if (i+1) mod 2 = 0 then c:='!'
    else read(f1, c);
    write(f2, c)
  end;
  close(f1);
  close(f2)
end.