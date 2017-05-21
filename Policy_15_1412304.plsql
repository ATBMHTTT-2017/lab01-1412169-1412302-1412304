--level
EXECUTE sa_components.create_LEVEL ('ACCESS_CHITIEU',1000,'KNC','KHONGNHAYCAM');
EXECUTE sa_components.create_LEVEL ('ACCESS_CHITIEU',2000,'NC','NHAYCAM');
EXECUTE sa_components.create_LEVEL ('ACCESS_CHITIEU',3000,'BM','BIMAT');
--compartment

EXECUTE sa_components.create_COMPARTMENT ('ACCESS_CHITIEU',1000,'LU','LUONG');
EXECUTE sa_components.create_COMPARTMENT ('ACCESS_CHITIEU',2000,'QL','QUANLY');
EXECUTE sa_components.create_COMPARTMENT ('ACCESS_CHITIEU',3000,'VL','VATLIEU');

--label
EXECUTE sa_label_admin.create_label ('ACCESS_CHITIEU',11000,'KNC:LU:');
EXECUTE sa_label_admin.create_label ('ACCESS_CHITIEU',11100,'KNC:QL:');
EXECUTE sa_label_admin.create_label ('ACCESS_CHITIEU',11200,'KNC:VL:');

EXECUTE sa_label_admin.create_label ('ACCESS_CHITIEU',12000,'NC:LU:');
EXECUTE sa_label_admin.create_label ('ACCESS_CHITIEU',12100,'NC:QL:');
EXECUTE sa_label_admin.create_label ('ACCESS_CHITIEU',12200,'NC:VL:');

EXECUTE sa_label_admin.create_label ('ACCESS_CHITIEU',13000,'BM:LU:');
EXECUTE sa_label_admin.create_label ('ACCESS_CHITIEU',13100,'BM:QL:');
EXECUTE sa_label_admin.create_label ('ACCESS_CHITIEU',13200,'BM:VL:');

EXECUTE sa_label_admin.create_label ('ACCESS_CHITIEU',14000,'KNC:LU,QL,VL:');
EXECUTE sa_label_admin.create_label ('ACCESS_CHITIEU',14100,'NC:LU,QL,VL:');
EXECUTE sa_label_admin.create_label ('ACCESS_CHITIEU',14200,'BM:LU,QL,VL:');

--APPLY CHÍNH SÁCH TRÊN BẢNG CHI TIÊU
BEGIN
sa_policy_admin.apply_table_policy
(policy_name => 'ACCESS_CHITIEU',
schema_name => 'bt_dba',
table_name => 'CHITIEU',
table_options => 'NO_CONTROL');
END;
--SET DATA LABEL

--GAN NHAN KNC CHO CAC THONG TIN CHI TIEU VATLIEU
update chitieu set ols_chitieu=char_to_label ('ACCESS_CHITIEU', 'KNC:VL:')
WHERE MACHITIEU = 'CT101' OR MACHITIEU='CT104' OR MACHITIEU='CT107' OR MACHITIEU='CT110';
--GAN NHAN NC CHO CAC THONG TIN CHI TIEU QUANLY
update chitieu set ols_chitieu=char_to_label ('ACCESS_CHITIEU', 'NC:QL:')
WHERE MACHITIEU = 'CT103' OR MACHITIEU='CT106' OR MACHITIEU='CT109' OR MACHITIEU='CT112';
  
--GAN NHAN BM CHO CAC THONG TIN CHI TIEU LUONG 
update chitieu set ols_chitieu=char_to_label ('ACCESS_CHITIEU', 'BM:LU:')
WHERE MACHITIEU = 'CT102' OR MACHITIEU='CT105' OR MACHITIEU='CT108' OR MACHITIEU='CT111';

--GÁN NHÃN CHO CÁC USER
BEGIN
sa_user_admin.set_user_labels
(policy_name => 'ACCESS_CHITIEU',
user_name => 'NV113',
max_read_label => 'KNC:LU,QL,VL:',
max_write_label => '',
min_write_label => '',
def_label => 'KNC:LU,QL,VL:',
row_label => '');
END;

BEGIN
sa_user_admin.set_user_labels
(policy_name => 'ACCESS_CHITIEU',
user_name => 'NV213',
max_read_label => 'NC:LU,QL,VL:',
max_write_label => '',
min_write_label => '',
def_label => 'NC:LU,QL,VL:',
row_label => '');
END;

BEGIN
sa_user_admin.set_user_labels
(policy_name => 'ACCESS_CHITIEU',
user_name => 'NV333',
max_read_label => 'BM:LU,QL,VL:',
max_write_label => '',
min_write_label => '',
def_label => 'BM:LU,QL,VL:',
row_label => '');
END;

--XÓA CHÍNH SÁCH VÀ APPPLY LẠI
BEGIN
sa_policy_admin.remove_table_policy
(policy_name => 'ACCESS_CHITIEU',
schema_name => 'bt_dba',
table_name => 'CHITIEU');
END;
BEGIN
sa_policy_admin.apply_table_policy
(policy_name => 'ACCESS_CHITIEU',
schema_name => 'bt_dba',
table_name => 'CHITIEU',
table_options =>
'READ_CONTROL,WRITE_CONTROL,CHECK_CONTROL');
END;


