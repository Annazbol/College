var
s1, s2, ans: string;
a, b, len: integer;
begin
readln(s1);
readln(s2);
a:=Length(s1);
b:=Length(s2);
len:=abs(a-b);
if a>b then ans:=s1
else ans:=s2;
while len<>0 do 
begin
writeln(ans);
len-=1
end
end.
