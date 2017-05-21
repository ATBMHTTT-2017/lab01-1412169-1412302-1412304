
--THAY GROUP CỦA TRƯỞNG CHI NHÁNH HÀ HỘI TỪ HN(HÀ NỘI) THÀNH TCT(TỔNG CÔNG TY)
--TCNHN
BEGIN
sa_user_admin.set_user_labels
(policy_name => 'ACCESS_DUAN',
user_name => 'NV201',
max_read_label => 'BMC:NS,KT,KH:TCT',
max_write_label => 'BMC:NS,KT,KH:TCT',
min_write_label => 'GH',
def_label => 'BMC:NS,KT,KH:TCT',
row_label => 'BMC:NS,KT,KH:TCT');
END;
--XÓA CHÍNH SÁCH VÀ APPLY LẠI
BEGIN
sa_policy_admin.remove_table_policy
(policy_name => 'ACCESS_DUAN',
schema_name => 'bt_dba',
table_name => 'CHITIEU');
END;
BEGIN
sa_policy_admin.apply_table_policy
(policy_name => 'ACCESS_DUAN',
schema_name => 'bt_dba',
table_name => 'CHITIEU',
table_options =>
'READ_CONTROL,WRITE_CONTROL,CHECK_CONTROL');
END;
