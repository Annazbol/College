var
  f1: file of char;
  c: char;
  n: longint;
begin
  assign(f1, 'C:\Users\User\Documents\Êמככוהז\ÎÀטÏ\ËÐ 13\Ôאיכ\1.txt');
  reset(f1);
  n:=Filesize(f1)-1;
  repeat
  begin
    seek(f1, n);
    read(f1, c);
    n-=1
  end
  until c=' ';
  seek(f1, n);
  truncate(f1);
  close(f1)
end.