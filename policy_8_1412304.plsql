--Cau 8: Truong phong chi duoc phep doc thong tin chi tieu cua du an trong phong ban minh quan ly.
CREATE OR REPLACE FUNCTION Select_ChiTieu_TruongPhong (
p_schema IN VARCHAR2 DEFAULT NULL,
p_object IN VARCHAR2 DEFAULT NULL)
RETURN VARCHAR2 
AS
duan varchar2(5);
num number;
BEGIN
  Select count (*) into num from DuAn where user = truongDA;
  if (num > 0) then
  RETURN '';
  ELSE
    BEGIN
    select MADA INTO duan from DuAn where phongChuTri in (select maPhong from PhongBan where truongPhong = USER);
    RETURN 'DUAN='|| q'[']' || duan || q'[']';
    END;
  END IF;
EXCEPTION
      WHEN OTHERS THEN RETURN '1 = 0';
END;

BEGIN
DBMS_RLS.add_policy
(object_schema => 'sys_bt1',
object_name => 'ChiTieu',
policy_name => 'S_ChiTieu_TruongPhong',
function_schema => 'sys_bt1',
policy_function => 'Select_ChiTieu_TruongPhong',
sec_relevant_cols=>'soTien',
sec_relevant_cols_opt=>dbms_rls.ALL_ROWS);
END;

BEGIN
DBMS_RLS.drop_policy
(object_schema => 'sys_bt1',
object_name => 'ChiTieu',
policy_name => 'S_ChiTieu_TruongPhong');
END;
