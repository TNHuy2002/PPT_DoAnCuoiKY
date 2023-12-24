function [daThuc] = NoiSuy_DaThuc(xa,ya)
    syms x;
    n = length(xa);
    daThuc = 0;
    for i = 1:n
        product = ya(i);
        for j = 1:n
            if j ~= i
                product = product * (x - xa(j)) / (xa(i) - xa(j));
            end
        end
        daThuc = daThuc + product;
    end
    daThuc = expand(daThuc);
    daThuc = vpa(daThuc, 5);
    daThuc = char(daThuc);
end