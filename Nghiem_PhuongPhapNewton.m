function [root, iteration] = Nghiem_PhuongPhapNewton(f, x0, epsilon, maxIter)
    df = @(x) (f(x + epsilon) - f(x)) / epsilon; % đạo hàm xấp xỉ
    iteration = 0;
    while iteration < maxIter
        x1 = x0 - f(x0)/df(x0);
        if abs(x1 - x0) < epsilon
            break;
        end
        x0 = x1;
        iteration = iteration + 1;
    end
    root = x1;
end