var
  max, min, input, output: real;
  f1, f2: file of real;
  i, posmin, posmax, n: integer;
begin
  randomize;
  max:=0;
  min:=100;
  assign(f1, 'C:\Users\User\Documents\Êמככוהז\ÎÀטÏ\ËÐ 13\Ôאיכ\6.1.txt');
  assign(f2, 'C:\Users\User\Documents\Êמככוהז\ÎÀטÏ\ËÐ 13\Ôאיכ\6.2.txt');
  rewrite(f1);
  n:=random(15)+1;
  writeln('Ïונגûי פאיכ:');
  for i:=1 to n do
  begin
    input:=(random(10000)+1)/100;
    write(f1, input);
    writeln(input)
  end;
  close(f1);
  reset(f1);
  for i:=1 to n do
  begin
    read(f1, output);
    if output>max then
    begin
      max:=output;
      posmax:=i
    end;
    if output<min then
    begin
      min:=output;
      posmin:=i
    end;
  end;
  close(f1);
  reset(f1);
  rewrite(f2);
  for i:=1 to n do
  begin
    read(f1, output);
    if i=posmin then write(f2, max)
    else if i=posmax then write(f2, min)
    else write(f2, output)
  end;
  close(f2);
  reset(f2);
  writeln('Âעמנמי פאיכ:');
  for i:=1 to n do
  begin
    read(f2, output);
    writeln(output)
  end
end.