--Cau 5: Chi truong phong, truong chi nhanh duoc cap quyen thuc thi store procedure
create or replace procedure CapNhatThongTin_TruongCN (maPhongCN in varchar2, tenPhongnew in varchar2, soNhanViennew in int)
AS
machinhanh varchar2(5);
num number;
BEGIN
  Select count(*) into num from ChiNhanh where truongChiNhanh = USER;
  if (num>0) then
  begin
      Select macn into machinhanh from ChiNhanh where truongChiNhanh = USER;
    update PhongBan set tenPhong = tenPhongnew, soNhanVien = soNhanViennew where chiNhanh = machinhanh and maPhong = maPhongCN;
  end;
  end if;
    commit;
END;

create or replace procedure CapNhatThongTin_TruongPhong (tenPhongnew in varchar2, soNhanViennew in int)
AS
phong varchar2(5);
num number;
BEGIN
  Select count(*) into num from PhongBan where truongPhong = USER;
  if (num>0) then
  begin
      Select maPhong into phong from PhongBan where truongPhong = USER;
      update PhongBan set tenPhong = tenPhongnew, soNhanVien = soNhanViennew where maPhong = phong;
      end;
  end if;
  commit;
END;
