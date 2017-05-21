
--GROUP

EXECUTE sa_components.create_GROUP ('ACCESS_CHITIEU',1000,'NV','NHANVIEN','QL');
EXECUTE sa_components.create_GROUP ('ACCESS_CHITIEU',2000,'QL','QUANLY',null);

--LABEL
EXECUTE sa_label_admin.create_label ('ACCESS_CHITIEU',15200,'KNC:VL:NV');
EXECUTE sa_label_admin.create_label ('ACCESS_CHITIEU',17400,'NC:QL:QL');
EXECUTE sa_label_admin.create_label ('ACCESS_CHITIEU',17800,'BM:LU:QL');
EXECUTE sa_label_admin.create_label ('ACCESS_CHITIEU',18000,'KNC:LU,QL,VL:NV');
EXECUTE sa_label_admin.create_label ('ACCESS_CHITIEU',19000,'BM:LU,QL,VL:QL');
EXECUTE sa_label_admin.create_label ('ACCESS_CHITIEU',19100,'NC:LU,QL,VL:QL');
EXECUTE sa_label_admin.create_label ('ACCESS_CHITIEU',16000,'NC:LU:NV');
EXECUTE sa_label_admin.create_label ('ACCESS_CHITIEU',16100,'NC:QL:NV');
EXECUTE sa_label_admin.create_label ('ACCESS_CHITIEU',16200,'NC:VL:NV');
EXECUTE sa_label_admin.create_label ('ACCESS_CHITIEU',17000,'BM:LU:NV');
EXECUTE sa_label_admin.create_label ('ACCESS_CHITIEU',17100,'BM:QL:NV');
EXECUTE sa_label_admin.create_label ('ACCESS_CHITIEU',17200,'BM:VL:NV');

--gan nhan cho khong nhay cam cho cac du lieu vat lieu va group la nhan vien
update chitieu set ols_chitieu=char_to_label ('ACCESS_CHITIEU', 'KNC:VL:NV')
WHERE MACHITIEU = 'CT101' OR MACHITIEU='CT104' OR MACHITIEU='CT107' OR MACHITIEU='CT110';

--gan nhan cho nhay cam cho cac du lieu vat lieu va group la quanly

update chitieu set ols_chitieu=char_to_label ('ACCESS_CHITIEU', 'NC:QL:QL')
WHERE MACHITIEU = 'CT103' OR MACHITIEU='CT106' OR MACHITIEU='CT109' OR MACHITIEU='CT112';

--gan nhan cho bimat cho cac du lieu luong va group la quanly
update chitieu set ols_chitieu=char_to_label ('ACCESS_CHITIEU', 'BM:LU:QL')
WHERE MACHITIEU = 'CT102' OR MACHITIEU='CT105' OR MACHITIEU='CT108' OR MACHITIEU='CT111';

--GÁN NHÃN CHO USER
--gan level khong nhay cam cho nhan vien NV143 voi tat ca cac compartment va group la nhanvien
BEGIN
sa_user_admin.set_user_labels
(policy_name => 'ACCESS_CHITIEU',
user_name => 'NV143',
max_read_label => 'KNC:LU,QL,VL:NV',
max_write_label => '',
min_write_label => '',
def_label => 'KNC:LU,QL,VL:NV',
row_label => '');
END;
--gan level nhay cam cho nhan vien NV112 voi tat ca cac comp voi group quan ly
BEGIN
sa_user_admin.set_user_labels
(policy_name => 'ACCESS_CHITIEU',
user_name => 'NV112',
max_read_label => 'NC:LU,QL,VL:QL',
max_write_label => '',
min_write_label => '',
def_label => 'NC:LU,QL,VL:QL',
row_label => '');
END;

--gan level bi mat cho nhan vien NV111 voi tat ca cac comp voi group quan ly
BEGIN
sa_user_admin.set_user_labels
(policy_name => 'ACCESS_CHITIEU',
user_name => 'NV111',
max_read_label => 'BM:LU,QL,VL:QL',
max_write_label => '',
min_write_label => '',
def_label => 'BM:LU,QL,VL:QL',
row_label => '');
END;

--XÓA CHÍNH SÁCH VÀ APPLY LẠI
BEGIN
sa_policy_admin.remove_table_policy
(policy_name => 'ACCESS_CHITIEU',
schema_name => 'sys_bt1',
table_name => 'CHITIEU');
END;
BEGIN
sa_policy_admin.apply_table_policy
(policy_name => 'ACCESS_CHITIEU',
schema_name => 'sys_bt1',
table_name => 'CHITIEU',
table_options =>
'READ_CONTROL,WRITE_CONTROL,CHECK_CONTROL');
END;

