type zap =  record
      name: string[20];
      price: integer;
      age: string[5]
end;
var 
  toy1, toy2: zap;
  f: file of zap;
begin
  Assign(f,'C:\Users\User\Documents\Колледж\разработка кода ис\ЛР 15\4.1.txt');
  rewrite(f);
  with toy1 do
  begin
    name:='Набор LEGO City';
    price:=100000;
    age:='1-99'
  end;
  write(f, toy1);
  close(f);
  reset(f);
  read(f, toy2);
  with toy2 do
  begin
    writeln(name);
    writeln(price);
    writeln(age)
  end;
  close(f)
end.