  function y = TichPhan_Simpson3phan8(fx,a,b,N) 
  syms x
  f = str2sym(fx);
  f = symfun(f, [x]);
  tong3 = 0;
  tongconlai = 0;
  h = (b-a)/N;
  for i = 1:N-1
      if(mod(i,3) == 0)
          tong3 = tong3 + f(a+i*h);
      else
          tongconlai = tongconlai + f(a+i*h);
      end
  end
  y = (h*3/8)*(f(a)+f(b)+2*tong3+3*tongconlai);
  end