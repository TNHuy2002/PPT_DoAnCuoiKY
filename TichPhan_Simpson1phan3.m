  function y = TichPhan_Simpson1phan3(fx,a,b,N) 
  syms x
  f = str2sym(fx);
  f = symfun(f, [x]);
  tongLe = 0;
  tongChan = 0;
  h = (b-a)/N;
  for i = 1:N-1
      if mod(i,2) ~= 0
        tongLe = tongLe + 4*f(a+i*h);
      else 
        tongChan = tongChan + 2*f(a+i*h);
      end
  end
  y = (h/3)*(f(a)+f(b)+tongLe+tongChan);
  end