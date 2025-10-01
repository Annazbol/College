uses GraphABC;
var 
  i, j: integer;
  black: boolean;
begin
  setwindowsize(860, 860);
  black:=True;
  floodfill(1, 1, rgb(255, 228, 205));
  setpenwidth(5);
  rectangle(29, 29, 831, 831);
  for i:=0 to 7 do
  begin
    for j:=0 to 7 do
    begin
      if black then
      begin
        Rectangle(30+100*j, 30+100*i, 130+100*j, 130+100*i);
        floodfill(50+100*j, 50+100*i, clblack)
      end;
      black:= not black
    end;
    black := not black
  end
end.