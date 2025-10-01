type PNode = ^Node;   
     Node = record
       element: integer;
       next: PNode;
     end;

procedure AddAfter ( p, NewNode: PNode );
begin
  NewNode^.next := p^.next;
  p^.next := NewNode
end;

procedure AddFirst ( var Head: PNode; NewNode: PNode );
begin
  NewNode^.next := Head;
  Head := NewNode;
end;

procedure AddLast ( var Head: PNode; NewNode: PNode );
var pp: PNode;
begin
  if Head = nil then
    AddFirst ( Head, NewNode )
  else begin
    pp := Head;
    while pp^.next <> nil do
      pp := pp^.next;
    AddAfter ( pp, NewNode );
  end;
end;

function CreateNode(NewElement: integer): PNode;
var NewNode: PNode;
begin
  New(NewNode);
  NewNode^.element := NewElement;
  NewNode^.next := nil;
  Result := NewNode;
end;

var
  i, input: integer;
  head, newnode, p: PNode;
begin
  head:=nil;
  for i:=1 to 10 do
  begin
    readln(input);
    newnode:=CreateNode(input);
    AddLast(head, newnode)
  end;
  p:=head;
  writeln('Результат:');
  for i:=1 to 10 do
  begin
    if i mod 2 = 0 then writeln(p^.element);
    p := p^.next
  end
end.