type zap=  record
      name: string;
      price: integer;
      age: string
end;
var toy: zap;
begin
  with toy do
  begin
    name:='Набор LEGO City';
    price:=100000;
    age:='1-99'
  end;
  with toy do
  begin
    writeln(name);
    writeln(price);
    writeln(age)
  end
end.