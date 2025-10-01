unit fractal;
uses GraphABC;
procedure ris(x1,y1,x2,y2,k:integer); //параметризация
  var xn,yn:integer;
  begin
    if k>0 then 
    begin
      xn:=(x1+x2) div 2 +(y2-y1) div 2;
      yn:=(y1+y2) div 2 -(x2-x1) div 2; 
      ris(x1,y1,xn,yn,k-1); //декомпозиция
      ris(x2,y2,xn,yn,k-1); //декомпозиция
    end
    else begin line(x1,y1,x2,y2); end; //база рекурсии
    end;
end.