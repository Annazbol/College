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
  i, input, count, min, max: integer;
  head, newnode, p: PNode;
begin
  head:=nil;
  write('Количество: ');
  read(count);
  for i:=1 to count do
  begin
    readln(input);
    newnode:=CreateNode(input);
    AddLast(head, newnode)
  end;
  p:=head;  
  writeln('Результат:');
  max:=-15000;
  min:=15000;
  while p<>nil do
  begin
    if p^.element>max then max := p^.element;
    if p^.element<min then min := p^.element;
    p := p^.next
  end;
  writeln('Максимальный элемент:', max);
  writeln('Минимальный элемент:', min)
end.