var
s, ans: string;
begin
readln(s);
while length(s)<>0 do
begin
if pos('abc', s) = 1 then
begin
if (ord(s[(4)])>=48) and (ord(s[(4)])<=57) then 
begin
Delete(s, 1, 3)
end
end;
ans+=Copy(s, 1, 1);
Delete(s, 1, 1)
end;
writeln(ans)
end.