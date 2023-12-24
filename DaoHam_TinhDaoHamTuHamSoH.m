function [dx] = DaoHam_TinhDaoHamTuHamSoH(fx,a,h,pp)
    syms x
    fx = str2sym(fx);
    fx = symfun(fx, [x]);
    if pp == "Xấp xỉ tiến"
        dx = (fx(a+h) - fx(a))/h;
    elseif pp == "Xấp xỉ lùi"
        dx = (fx(a) - fx(a-h))/h;
    else
        dx =0;
    end
end
