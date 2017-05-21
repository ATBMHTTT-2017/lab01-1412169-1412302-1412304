--APLLY CHÍNH SÁCH CHO BẢNG CHI TIÊU
BEGIN
sa_policy_admin.apply_table_policy
(policy_name => 'ACCESS_DUAN',
schema_name => 'sys_bt1',
table_name => 'CHITIEU',
table_options => 'NO_CONTROL');
END;

--GÁN NHÃN DỮ LIỆU CHO BẢNG CHI TIÊU
UPDATE CHITIEU SET OLS_DUAN = char_to_label ('ACCESS_DUAN', 'GH:KH:DN')
WHERE MACHITIEU = 'CT101';
UPDATE CHITIEU SET OLS_DUAN = char_to_label ('ACCESS_DUAN', 'BMC:KT:DN')
WHERE MACHITIEU = 'CT102';
UPDATE CHITIEU SET OLS_DUAN = char_to_label ('ACCESS_DUAN', 'BM:NS:DN')
WHERE MACHITIEU = 'CT103';


UPDATE CHITIEU SET OLS_DUAN = char_to_label ('ACCESS_DUAN', 'GH:KH:HCM')
WHERE MACHITIEU = 'CT104';
UPDATE CHITIEU SET OLS_DUAN = char_to_label ('ACCESS_DUAN', 'BMC:KT:HCM')
WHERE MACHITIEU = 'CT105';
UPDATE CHITIEU SET OLS_DUAN = char_to_label ('ACCESS_DUAN', 'BM:NS:HCM')
WHERE MACHITIEU = 'CT106';

UPDATE CHITIEU SET OLS_DUAN = char_to_label ('ACCESS_DUAN', 'GH:KH:HN')
WHERE MACHITIEU = 'CT107';
UPDATE CHITIEU SET OLS_DUAN = char_to_label ('ACCESS_DUAN', 'BMC:KT:HN')
WHERE MACHITIEU = 'CT108';
UPDATE CHITIEU SET OLS_DUAN = char_to_label ('ACCESS_DUAN', 'BM:NS:HN')
WHERE MACHITIEU = 'CT109';
select * from chitieu
--GÁN NHÃN TƯƠNG ỨNG CHO CÁC USER LÀ TRƯỞNG CHI NHÁNH

--TRƯỞNG CHI NHÁNH ĐÀ NẴNG
BEGIN
sa_user_admin.set_user_labels
(policy_name => 'ACCESS_DUAN',
user_name => 'NV001',
max_read_label => 'BMC:NS,KT,KH:DN',
max_write_label => 'BMC:NS,KT,KH:DN',
min_write_label => 'GH',
def_label => 'BMC:NS,KT,KH:DN',
row_label => 'BMC:NS,KT,KH:DN');
END;
--TRƯỞNG CHI NHÁNH THÀNH PHỐ HỒ CHÍ MINH
BEGIN
sa_user_admin.set_user_labels
(policy_name => 'ACCESS_DUAN',
user_name => 'NV101',
max_read_label => 'BMC:NS,KT,KH:HCM',
max_write_label => 'BMC:NS,KT,KH:HCM',
min_write_label => 'GH',
def_label => 'BMC:NS,KT,KH:HCM',
row_label => 'BMC:NS,KT,KH:HCM');
END;
--TRƯỞNG CHI NHÁNH HÀ NỘI
BEGIN
sa_user_admin.set_user_labels
(policy_name => 'ACCESS_DUAN',
user_name => 'NV201',
max_read_label => 'BMC:NS,KT,KH:HN',
max_write_label => 'BMC:NS,KT,KH:HN',
min_write_label => 'GH',
def_label => 'BMC:NS,KT,KH:HN',
row_label => 'BMC:NS,KT,KH:HN');
END;
--XÓA CHÍNH SÁCH VÀ APPLY LẠI
BEGIN
sa_policy_admin.remove_table_policy
(policy_name => 'ACCESS_DUAN',
schema_name => 'sys_bt1',
table_name => 'CHITIEU');
END;
BEGIN
sa_policy_admin.apply_table_policy
(policy_name => 'ACCESS_DUAN',
schema_name => 'sys_bt1',
table_name => 'CHITIEU',
table_options =>
'READ_CONTROL,WRITE_CONTROL,CHECK_CONTROL');
END;



