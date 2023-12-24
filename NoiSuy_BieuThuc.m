function [bieuThuc] = NoiSuy_BieuThuc(xa,ya)
    syms x;
    n = length(xa);
    d = ya;
        for i = 1:n
            for j = 1:(i-1)
                d(i) = (d(j) - d(i))/(xa(j) - xa(i));
            end
        end
    n = length(d);
    bieuThuc = d(n);
        for i = n-1:-1:1
            bieuThuc = bieuThuc * (x - xa(i)) + d(i);
        end
    bieuThuc = expand(bieuThuc);
    bieuThuc = vpa(bieuThuc, 5);
    bieuThuc = char(bieuThuc);
end
