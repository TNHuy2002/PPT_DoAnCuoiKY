function result = NoiSuy_Lagrange(xa, ya, x)
    n = length(xa);
    result = 0;

    for i = 1:n
        term = ya(i);
        for j = 1:n
            if j ~= i
                term = term .* (x - xa(j)) / (xa(i) - xa(j));
            end
        end
        result = result + term;
    end
    fprintf('Ket qua noi suy lagrange cua x = %.4f la: %.4f\n', x, result);
end
