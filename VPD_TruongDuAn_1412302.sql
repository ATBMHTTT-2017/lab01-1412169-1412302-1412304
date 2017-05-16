--Cau 7: Truong du an chi duoc phep doc, ghi thong tin chi tieu cua du an minh quan ly
CREATE OR REPLACE FUNCTION Select_CHITIEU (
p_schema IN VARCHAR2 DEFAULT NULL,
p_object IN VARCHAR2 DEFAULT NULL)
RETURN VARCHAR2 
AS
duan varchar2(5);
num number;
BEGIN
  Select count (*) into num from PhongBan where user = truongPhong;
  if (num > 0) then
  RETURN '';
  ELSE
    BEGIN
    select MADA INTO duan from DUAN where TRUONGDA = USER;
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
policy_name => 'S_U_ChiTieu',
function_schema => 'sys_bt1',
policy_function => 'Select_CHITIEU',
statement_types => 'SELECT, UPDATE');
END;

--Xoa ham 
BEGIN
DBMS_RLS.drop_policy
(object_schema => 'sys_bt1',
object_name => 'NhanVien',
policy_name => 'S_U_ChiTieu');
END;