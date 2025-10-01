var
  f1: file of real;
  input, output1, output2, output3, ans: real;
  n, i: integer;
begin
  randomize;
  assign(f1, 'C:\Users\User\Documents\Êמככוהז\ÎÀטÏ\ËÐ 13\Ôאיכ\5.txt');
  rewrite(f1);
  n:=random(100)+1;
  for i:=1 to n do
  begin
    input:=(random(10000)+1)/100;
    write(f1, input);
    writeln(input)
  end;
  close(f1);
  reset(f1);
  for i:=1 to n-3 do
  begin
    if i<>1 then seek(f1, i);
    read(f1, output1);
    read(f1, output2);
    read(f1, output3);
    if (output2>output1) and (output2>output3) then ans:=output2
  end;
  writeln('Îעגוע: ', ans);
  close(f1)
end.