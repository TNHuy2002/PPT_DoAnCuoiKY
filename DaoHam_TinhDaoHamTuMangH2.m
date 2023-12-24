function [dx, message] = DaoHam_TinhDaoHamTuMangH2(mangX,mangY,a,h,pp)
    [c] = find(mangX == a);
    if isempty(c)
        dx = '';
        message = 'Điểm cần tính đạo hàm phải tồn tại trong mảng X';
        return;
    end

    if pp == "Xấp xỉ tiến"
        if c >= length(mangX) - 1
            message = "Không thể thực hiện khi index >= " + (length(mangX) - 1) + " với O(h^2) (tiến)";
            dx = '';
            return;
        end
        dx = (4*mangY(c+1) - 3*mangY(c) - mangY(c+2))/(2*h);
        message = '';
        
    elseif pp == "Xấp xỉ trung tâm"
        if c <= 1 || c >= length(mangX)
            message = "Không thể thực hiện khi index <= 1 hoặc index >= " + length(mangX) + " với O(h^2) (trung tâm)";
            dx = '';
            return;
        end
        dx = (mangY(c+1)-mangY(c-1))/(2*h);
        message = '';
        
    else
        if c <= 2
           message = "Không thể thực hiện khi index <= 2 với O(h^2) (lùi)";
           dx = '';
           return;
        end
        dx = (3*mangY(c) - 4*mangY(c-1) + mangY(c-2))/(2*h);
        message = '';
    end
end