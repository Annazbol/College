uses GraphABC, fractal;
var 
  x, y, d, step, n: integer;
  bool: boolean:=false;
procedure control(k: integer);
begin
  case k of
    VK_Up:
      begin
        y-=5;
      end;
    VK_Down:
      begin
        y+=5;
      end;
    VK_Left:
      begin
        x-=5;
      end;
    VK_Right:
      begin
        x+=5;
      end;
   end;
   clearwindow
end;
procedure depth(b:integer); 
begin
  case b of
    VK_w:d+=1;
    VK_s:d-=1;
  end;
  clearwindow
end;
procedure scale(c: char);
begin
  case c of
    'd': step := step + 1;
    'a': 
      if step > 1 then
        step := step - 1;
  end;
  clearwindow
end;
begin
  lockdrawing;
  setwindowsize(1280, 720);
  d:=10;
  step:=1;
  x:=608;
  y:=360;
  repeat
  begin
    clearwindow;
    ris(x, y, x+64*step, y, d);
    onKeyDown:=control;
    onKeyUp:=depth;
    onKeyPress:=scale;
    redraw;
    sleep(1)
  end;
  until false
end.