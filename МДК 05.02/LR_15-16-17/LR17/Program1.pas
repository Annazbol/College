type PNode = ^Node;
     Node = record
       data: integer;
       next: PNode;
     end;
procedure Push( var Head: PNode; x: integer);
var NewNode: PNode;
begin
  New(NewNode);
  NewNode^.data := x;    { ������ ������� }
  NewNode^.next := Head; { ������� ������ ����� }
  Head := NewNode;
end;
function Pop ( var Head: PNode ): integer;
var q: PNode;
begin
  if Head = nil then begin { �������������� ������, �.�. ������ }
    Exit;
  end;
  Result := Head^.data;  { ����� ������� ������ }
  q := Head;             { ���������� ������� } 
  Head := Head^.next; { ������� ������� }
  Dispose(q);            { �������� �� ������ }
end;
var
  f1, f2: text;
  head: PNode;
  num1, num2: integer;
begin
  assign(f1, '1.txt');
  assign(f2, '2.txt');
  head:=nil;
  reset(f1);
  while not eof(f1) do
  begin
    readln(f1, num1);
    Push(head, num1)
  end;
  close(f1);
  rewrite(f2);
  repeat
  begin
    num2:=Pop(head);
    writeln(f2, num2)
  end
  until head = nil;
  close(f2)
end.
    