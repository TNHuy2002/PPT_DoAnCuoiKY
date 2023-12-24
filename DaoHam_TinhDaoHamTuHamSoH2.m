function [dx] = DaoHam_TinhDaoHamTuHamSoH2(fx,a,h,pp)
    syms x
    fx = str2sym(fx);
    fx = symfun(fx, [x]);
    
    if pp == "Xấp xỉ tiến"
        dx = (4*fx(a+h) - 3*fx(a) - fx(a+2*h))/(2*h);
    elseif pp == "Xấp xỉ trung tâm"
        dx = (fx(a+h)-fx(a-h))/(2*h);
    else
        dx = (3*fx(a) - 4*fx(a-h) + fx(a-2*h))/(2*h);
    end
end