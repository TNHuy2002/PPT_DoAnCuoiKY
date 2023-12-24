function [root, iteration, message] = Nghiem_PhuongPhapLap(g, x0, b, epsilon, maxIter)
    message = '';
    syms x;
    gx = g(x);
    g_prime = diff(gx);
    g_prime_negative_sub = -g_prime;
    g_prime_negative = matlabFunction(g_prime_negative_sub);
    [~, g_max] = fminbnd(g_prime_negative, x0, b);
    if(g_max >= 1 || g_max <= -1)
        root = 'NaN';
        iteration = 'NaN';
        message = 'Hàm g(x) không hội tụ! Hãy tim g(x) theo cách khác.';
        return;
    end
    
    
    iteration = 0;
    while iteration < maxIter
        x1 = g(x0);
        if abs(x1 - x0) < epsilon
            break;
        end
        x0 = x1;
        iteration = iteration + 1;
    end
    root = x1;
end