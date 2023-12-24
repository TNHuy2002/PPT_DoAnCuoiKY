function y = TichPhan_HinhThang(fx,a,b,N)
    syms x
    f = str2sym(fx);
    f = symfun(f, [x]);
    tong = 0;
    h = (b-a)/N;

    for i = 1:1:N-1
        tong = tong + 2*f(a + i*h);
    end
    y = (h/2)*(f(a)+f(b)+tong);
end