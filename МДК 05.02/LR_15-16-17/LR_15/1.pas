type anketa = record
  fio: string;
  birth: string;
  kurs: 1..5
end;
var 
  student: anketa;
begin
  readln(student.fio);
  readln(student.birth);
  readln(student.kurs);
  writeln('Студент ', student.fio, ', ', student.kurs, ' курс, день рождения: ', student.birth)
end.