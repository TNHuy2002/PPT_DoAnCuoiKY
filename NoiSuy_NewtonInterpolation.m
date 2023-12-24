function result = NoiSuy_NewtonInterpolation(xa,ya,x)
    n = length(xa);
    d = ya;
        for i = 1:n
            for j = 1:(i-1)
                d(i) = (d(j) - d(i))/(xa(j) - xa(i));
            end
        end
    m = length(d);
    result = d(m);
        for i = m-1:-1:1
            result = result .* (x - xa(i)) + d(i);
        end
    fprintf('Ket qua noi suy Newton cua x = %.4f la: %.4f\n', x, result);
end