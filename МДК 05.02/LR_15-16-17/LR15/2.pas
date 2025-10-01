type anketa = record
  fio: string;
  birth: string;
  kurs: 1..5
end;
var 
  students: array[1..5] of anketa;
  i: integer;
begin
  students[1].fio:='Долгополов Я.М.';
  students[1].birth:='03.04.2007';
  students[1].kurs:=2;
  students[2].fio:='Комарова В.А.';
  students[2].birth:='06.05.2007';
  students[2].kurs:=2;
  students[3].fio:='Иванов И.И.';
  students[3].birth:='05.05.2005';
  students[3].kurs:=4;
  students[4].fio:='Михалков М.М.';
  students[4].birth:='06.06.2006';
  students[4].kurs:=3;
  students[5].fio:='Бердымухамедов Г.А.';
  students[5].birth:='02.03.2004';
  students[5].kurs:=5;
  writeln('Номер     ФИО          Дата Рождения    Курс');
  for i:=1 to 5 do writeln(i, '     ', students[i].fio, '   ', students[i].birth, '       ', students[i].kurs)
end.