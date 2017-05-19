--Cau 5: Chi truong phong, truong chi nhanh duoc cap quyen thuc thi store procedure
create or replace procedure CapNhatThongTin_TruongCN (maPhongCN in varchar2, tenPhongnew in varchar2, soNhanViennew in int)
AS
machinhanh varchar2(5);
BEGIN
  Select maCN into machinhanh from ChiNhanh where truongChiNhanh = USER;
  if (machinhanh != NULL) then
    update PhongBan set tenPhong = tenPhongnew, soNhanVien = soNhanViennew where chiNhanh = machinhanh and maPhong = maPhongCN;
    end if;
END;
  
create or replace procedure CapNhatThongTin_TruongPhong (tenPhongnew in varchar2, soNhanViennew in int)
AS
maphongnew varchar2(5);
BEGIN
  Select maPhong into maphongnew from PhongBan where truongPhong = USER;
  if (maphongnew != NULL) then
    update PhongBan set tenPhong = tenPhongnew, soNhanVien = soNhanViennew where maPhong = maphongnew;
    end if;
END;

grant execute on CapNhatThongTin_TruongCN to Truong_CN_CTY;
grant execute on CapNhatThongTin_TruongPhong to Truong_Phong_CTY;
