--Cau6: Tat ca nhan vien binh thuong chi duoc phep xem thong tin nhanh vien trong phong ban cua minh 
--      va chi duoc xem luong cua ban than
--Tao ham
CREATE OR REPLACE FUNCTION Select_NhanVien (
p_schema IN VARCHAR2 DEFAULT NULL,
p_object IN VARCHAR2 DEFAULT NULL)
RETURN VARCHAR2 
AS
num number;
BEGIN
  Select count (*) into num from PhongBan, ChiNhanh, DuAn where user = truongPhong or user = truongChiNhanh or user = truongDA;
  if (num > 0) then
  RETURN '';
  ELSE
  RETURN 'USER=maNV';
  END IF;
EXCEPTION
      WHEN OTHERS THEN RETURN '1 = 0';
END;

--Gan ham vao chinh sach
BEGIN
DBMS_RLS.add_policy
(object_schema => 'sys_bt1',
object_name => 'NhanVien',
policy_name => 'S_NhanVien',
function_schema => 'sys_bt1',
policy_function => 'Select_NhanVien',
sec_relevant_cols=>'Luong',
sec_relevant_cols_opt=>dbms_rls.ALL_ROWS);
END;

--Xoa ham 
BEGIN
DBMS_RLS.drop_policy
(object_schema => 'sys_bt1',
object_name => 'NhanVien',
policy_name => 'S_NhanVien');
END;


CREATE OR REPLACE FUNCTION Select_Phong(
p_schema IN VARCHAR2 DEFAULT NULL,
p_object IN VARCHAR2 DEFAULT NULL)
RETURN VARCHAR2 
AS
phong varchar2(5);
num number;
begin
  Select count (*) into num from PhongBan, ChiNhanh, DuAn where user = truongPhong or user = truongChiNhanh or user = truongDA;
  if (num > 0) then
  RETURN '';
  else
  select maphong into phong from NhanVien where MANV= user;
  RETURN 'maPhong = ' || q'[']' || phong || q'[']';
  end if;
END;

--Gan ham vao chinh sach
BEGIN
DBMS_RLS.add_policy
(object_schema => 'sys_bt1',
object_name => 'nhanvien',
policy_name => 'Phong_NhanVien',
function_schema => 'sys_bt1',
policy_function => 'Select_Phong',
statement_types => 'SELECT');
END;

--Xoa ham 
BEGIN
DBMS_RLS.drop_policy
(object_schema => 'sys_bt1',
object_name => 'NhanVien',
policy_name => 'Phong_NhanVien');
END;