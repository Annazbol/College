var
  f1: file of real;
  f2: text;
  f3: text;
  input, output: real;
  n, i: integer;
begin
  assign(f1, 'C:\Users\User\Documents\Êמככוהז\ÎÀטÏ\ËÐ 13\Ôאיכ\3.1.txt');
  assign(f2, 'C:\Users\User\Documents\Êמככוהז\ÎÀטÏ\ËÐ 13\Ôאיכ\3.2.txt');
  assign(f3, 'C:\Users\User\Documents\Êמככוהז\ÎÀטÏ\ËÐ 13\Ôאיכ\3.3.txt');
  rewrite(f1);
  readln(n);
  for i:=1 to n do
  begin
    readln(input);
    write(f1, input);
  end;
  close(f1);
  reset(f1);
  rewrite(f2);
  rewrite(f3);
  for i:=1 to n do
  begin
    read(f1, output);
    if i mod 2 = 0 then writeln(f2, output)
    else writeln(f3, output)
  end;
  close(f1);
  close(f2);
  close(f3)
end.