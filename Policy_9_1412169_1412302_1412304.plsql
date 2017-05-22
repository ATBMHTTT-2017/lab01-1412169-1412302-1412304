SELECT * FROM DUAN
--TAO 3 COMPARTMENT UNG VOI 3 CHI NHANH
EXECUTE sa_components.create_compartment ('ACCESS_DUAN',4000,'DN','DANANG');
EXECUTE sa_components.create_compartment ('ACCESS_DUAN',5000,'HCM','HOCHIMINH');
EXECUTE sa_components.create_compartment ('ACCESS_DUAN',6000,'HN','HANOI');
--TAO LABEL

EXECUTE sa_label_admin.create_label ('ACCESS_DUAN',14500,'BMC:NS,KT,KH,DN:');
EXECUTE sa_label_admin.create_label ('ACCESS_DUAN',15500,'BMC:NS,KT,KH,HCM:');
EXECUTE sa_label_admin.create_label ('ACCESS_DUAN',16500,'BMC:NS,KT,KH,HN:');

EXECUTE sa_label_admin.create_label ('ACCESS_DUAN',14510,'BMC:NS,DN:');
EXECUTE sa_label_admin.create_label ('ACCESS_DUAN',14520,'BMC:KT,DN:');
EXECUTE sa_label_admin.create_label ('ACCESS_DUAN',14530,'BMC:KH,DN:');
EXECUTE sa_label_admin.create_LABEL ('ACCESS_DUAN',14550,'BM:NS,DN:');
EXECUTE sa_label_admin.create_label ('ACCESS_DUAN',14560,'GH:KH,DN:');


EXECUTE sa_label_admin.create_label ('ACCESS_DUAN',15510,'BMC:NS,HCM:');
EXECUTE sa_label_admin.create_label ('ACCESS_DUAN',15520,'BMC:KT,HCM:');
EXECUTE sa_label_admin.create_label ('ACCESS_DUAN',15530,'BMC:KH,HCM:');
EXECUTE sa_label_admin.CREATE_label ('ACCESS_DUAN',15550,'BM:NS,HCM:');
EXECUTE sa_label_admin.create_label ('ACCESS_DUAN',15560,'GH:KH,HCM:');

EXECUTE sa_label_admin.create_label ('ACCESS_DUAN',16510,'BMC:NS,HN:');
EXECUTE sa_label_admin.create_label ('ACCESS_DUAN',16520,'BMC:KT,HN:');
EXECUTE sa_label_admin.create_label ('ACCESS_DUAN',16530,'BMC:KH,HN:');
EXECUTE sa_label_admin.CREATE_label ('ACCESS_DUAN',16550,'BM:NS,HN:');
EXECUTE sa_label_admin.create_label ('ACCESS_DUAN',16560,'GH:KH,HN:');


UPDATE DUAN SET OLS_DUAN = char_to_label ('ACCESS_DUAN', 'GH:KH,DN:')
WHERE mada = 'DA002';
UPDATE DUAN SET OLS_DUAN = char_to_label ('ACCESS_DUAN', 'BMC:KT,DN:')
WHERE mada = 'DA003';
UPDATE DUAN SET OLS_DUAN = char_to_label ('ACCESS_DUAN', 'BM:NS,DN:')
WHERE mada = 'DA004';

UPDATE DUAN SET OLS_DUAN = char_to_label ('ACCESS_DUAN', 'GH:KH,HCM:')
WHERE mada = 'DA101';
UPDATE DUAN SET OLS_DUAN = char_to_label ('ACCESS_DUAN', 'GH:KH,HCM:')
WHERE mada = 'DA102';
UPDATE DUAN SET OLS_DUAN = char_to_label ('ACCESS_DUAN', 'BMC:KT,HCM:')
WHERE mada = 'DA103';
UPDATE DUAN SET OLS_DUAN = char_to_label ('ACCESS_DUAN', 'BM:NS,HCM:')
WHERE mada = 'DA104';

UPDATE DUAN SET OLS_DUAN = char_to_label ('ACCESS_DUAN', 'GH:KH,HN')
WHERE mada = 'DA202';
UPDATE DUAN SET OLS_DUAN = char_to_label ('ACCESS_DUAN', 'BMC:KT,HN')
WHERE mada = 'DA203';
UPDATE DUAN SET OLS_DUAN = char_to_label ('ACCESS_DUAN', 'BM:NS,HN')
WHERE mada = 'DA204';

SELECT * FROM DUAN
--tp nhan su - dn
BEGIN
sa_user_admin.set_user_labels
(policy_name => 'ACCESS_DUAN',
user_name => 'NV031',
max_read_label => 'BMC:NS,KT,KH,DN:',
max_write_label => 'BMC:NS,DN:',
min_write_label => 'GH::',
def_label => 'BMC:NS,KT,KH,DN:',
row_label => 'BMC:NS,DN:');
END;

--tpke toan -dn
BEGIN
sa_user_admin.set_user_labels
(policy_name => 'ACCESS_DUAN',
user_name => 'NV021',
max_read_label => 'BMC:NS,KT,KH,DN:',
max_write_label => 'BMC:KT,DN:',
min_write_label => 'GH::',
def_label => 'BMC:NS,KT,KH,DN:',
row_label => 'BMC:KT,DN:');
END;

--tp ke hoach -dn
BEGIN
sa_user_admin.set_user_labels
(policy_name => 'ACCESS_DUAN',
user_name => 'NV011',
max_read_label => 'BMC:NS,KT,KH,DN:',
max_write_label => 'BMC:KH,DN:',
min_write_label => 'GH::',
def_label => 'BMC:NS,KT,KH,DN:',
row_label => 'BMC:KH,DN:');
END;

--tp nhan su - Ho Chi Minh
BEGIN
sa_user_admin.set_user_labels
(policy_name => 'ACCESS_DUAN',
user_name => 'NV131',
max_read_label => 'BMC:NS,KT,KH,HCM:',
max_write_label => 'BMC:NS,HCM:',
min_write_label => 'GH::',
def_label => 'BMC:NS,KT,KH,HCM:',
row_label => 'BMC:NS,HCM:');
END;

--tpke toan - Ho Chi Minh
BEGIN
sa_user_admin.set_user_labels
(policy_name => 'ACCESS_DUAN',
user_name => 'NV121',
max_read_label => 'BMC:NS,KT,KH,HCM:',
max_write_label => 'BMC:KT,HCM:',
min_write_label => 'GH::',
def_label => 'BMC:NS,KT,KH,HCM:',
row_label => 'BMC:KT,HCM:');
END;

--tp ke hoach - Ho Chi Minh
BEGIN
sa_user_admin.set_user_labels
(policy_name => 'ACCESS_DUAN',
user_name => 'NV111',
max_read_label => 'BMC:NS,KT,KH,HCM:',
max_write_label => 'BMC:KH,HCM:',
min_write_label => 'GH::',
def_label => 'BMC:NS,KT,KH,HCM:',
row_label => 'BMC:KH,HCM:');
END;

--tp nhan su - Ha Noi
BEGIN
sa_user_admin.set_user_labels
(policy_name => 'ACCESS_DUAN',
user_name => 'NV231',
max_read_label => 'BMC:NS,KT,KH,HN:',
max_write_label => 'BMC:NS,HN:',
min_write_label => 'GH::',
def_label => 'BMC:NS,KT,KH,HN:',
row_label => 'BMC:NS,HN:');
END;

--tp ke toan - Ha Noi
BEGIN
sa_user_admin.set_user_labels
(policy_name => 'ACCESS_DUAN',
user_name => 'NV221',
max_read_label => 'BMC:NS,KT,KH,HN:',
max_write_label => 'BMC:KT,HN:',
min_write_label => 'GH::',
def_label => 'BMC:NS,KT,KH,HN:',
row_label => 'BMC:KT,HN:');
END;

--tp ke hoach - Ha Noi
BEGIN
sa_user_admin.set_user_labels
(policy_name => 'ACCESS_DUAN',
user_name => 'NV211',
max_read_label => 'BMC:NS,KT,KH,HN:',
max_write_label => 'BMC:KH,HN:',
min_write_label => 'GH::',
def_label => 'BMC:NS,KT,KH,HN:',
row_label => 'BMC:KH,HN:');
END;

--xoa chinh sach va apply lai
BEGIN
sa_policy_admin.remove_table_policy
(policy_name => 'ACCESS_DUAN',
schema_name => 'sys_bt1',
table_name => 'DUAN');
END;
BEGIN
sa_policy_admin.apply_table_policy
(policy_name => 'ACCESS_DUAN',
schema_name => 'sys_bt1',
table_name => 'DUAN',
table_options =>
'READ_CONTROL,WRITE_CONTROL,CHECK_CONTROL');
END;


GRANT SELECT,UPDATE ON DUAN TO Truong_Phong_CTY;
