type t_chs = set of Char;
const
  lett: t_chs = ['a'..'z','A'..'Z','_'];
  num: t_chs = ['0'..'9'];
var
  str: string;
  i: byte;
  flag: boolean;
begin
  readln(str);
  flag:=true;
  for i:=1 to length(str) do
  begin
    if i=1 then if not (str[i] in lett) then flag:=false
    else if not ((str[i] in lett) or (str[i] in num)) then flag:=false;
    if not flag then break
  end;
  if flag then writeln('Нет недопустимых символов')
  else writeln('Есть недопустимые символы')
end.