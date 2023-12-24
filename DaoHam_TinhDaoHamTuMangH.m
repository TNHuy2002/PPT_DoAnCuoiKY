function [dx, message] = DaoHam_TinhDaoHamTuMangH(mangX,mangY,a,h,pp)
    [c] = find(mangX == a);
    if isempty(c)
        dx = '';
        message = 'Điểm cần tính đạo hàm phải tồn tại trong mảng X';
        return;
    end

    if pp == "Xấp xỉ tiến"
        if c >= length(mangX)
            message = "Không thể thực hiện khi index >= " + length(mangX) + " với O(h) (tiến)";
            dx = '';
            return;
        end
        dx = (mangY(c+1) - mangY(c))/h;
        message = '';

    elseif pp == "Xấp xỉ lùi"
        if c <= 1
            message = "Không thể thực hiện khi index <= 1 với O(h) (lùi)";
            dx = '';
            return;
        end
        dx = (mangY(c) - mangY(c-1))/h;
        message = '';

    else
        dx = '';
        message = '';
    end
end
