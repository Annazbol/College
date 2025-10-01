var
  f1, f2: text;
  input, max, min: int64;
begin
  assign(f1, 'C:\Users\User\Documents\Êîëëåäæ\ÎÀèÏ\ËĞ 12\Ôàéëû\5.1.txt');
  assign(f2, 'C:\Users\User\Documents\Êîëëåäæ\ÎÀèÏ\ËĞ 12\Ôàéëû\5.2.txt');
  reset(f1);
  rewrite(f2);
  min:=9223372036854775807;
  max:=-9223372036854775808;
  while not Eof(f1) do
  begin
    readln(f1, input);
    if min>input then min:=input;
    if max<input then max:=input
  end;
  writeln(f2, max);
  writeln(f2, min);
  close(f1);
  close(f2)
end.