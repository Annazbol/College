type PNode = ^Node;   
     Node = record
       word: string[40];
       count: integer;
       next: PNode;
     end;

     
function CreateNode(NewWord: string): PNode;
var NewNode: PNode;
begin
  New(NewNode);
  NewNode^.word := NewWord;
  NewNode^.count := 1;
  NewNode^.next := nil;
  Result := NewNode;
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


procedure AddBefore( var Head: PNode; p, NewNode: PNode );
var pp: PNode;
begin
  pp := Head;
  if p = Head then
    AddFirst ( Head, NewNode )
  else begin
    while (pp <> nil)  and  (pp^.next <> p) do
      pp := pp^.next;
    if pp <> nil then AddAfter ( pp, NewNode );
  end;
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

function FindPlace(Head: PNode; NewWord: string): PNode;
var pp: PNode;
begin
  pp := Head;
  while (pp <> nil) and (NewWord > pp^.word) do
    pp := pp^.next;
  Result := pp;
end;

function TakeWord ( F: Text ) : string;
var c: char;
begin
  Result := '';
  c := ' ';
  while not eof(f) and (c <= ' ') do 
    read(F, c);    
  while not eof(f) and (c > ' ') do begin
    Result := Result + c;
    read(F, c);
  end;
end;

function FindWord(Head: PNode; NewWord: string): PNode;
var pp: PNode;
begin
  pp := Head;
  while (pp <> nil) and (NewWord <> pp^.word) do 
    pp := pp^.next;
  Result := pp;
end;

var
  f: text;
  s: string;
  count: integer;
  pp, head, insert, insertnode, p: PNode;
begin
  assign(f, 'C:\Users\User\Documents\Колледж\разработка кода ис\ЛР 16\2.txt');
  reset(f);
  head:=nil;
  while not eof(f) do
  begin
    s:=TakeWord(f);
    pp:=FindWord(head, s);
    if pp = nil then
    begin
      insertnode:=CreateNode(s);
      insert:=FindPlace(head, s);
      if insert = nil then AddLast(head, insertnode)
      else AddBefore(head, insert, insertnode)
    end
    else
    begin
      pp^.count+=1
    end
  end;
  close(f);
  count:=0;
  p:=head;
  while p<>nil do
  begin
  count+=1;
  p := p^.next
  end;
  writeln(count)
end.