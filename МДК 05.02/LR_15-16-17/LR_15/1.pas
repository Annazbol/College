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
  writeln('������� ', student.fio, ', ', student.kurs, ' ����, ���� ��������: ', student.birth)
end.