--APPLY CHINH SACH
BEGIN
sa_policy_admin.remove_table_policy
(policy_name => 'ACCESS_DUAN',
schema_name => 'bt_dba',
table_name => 'PHANCONG');
END;

--NV112
EXECUTE sa_components.create_level ('ACCESS_DUAN',610,'NV112','NV112');
EXECUTE sa_components.create_compartment ('ACCESS_DUAN',610,'NV112','NV112');

EXECUTE sa_label_admin.create_label ('ACCESS_DUAN',112,'NV112:NV112:');

UPDATE PHANCONG SET OLS_DUAN = char_to_label ('ACCESS_DUAN', 'NV112:NV112:')
WHERE manv = 'NV112';

BEGIN
sa_user_admin.set_user_labels
(policy_name => 'ACCESS_DUAN',
user_name => 'NV112',
max_read_label => 'NV112:NV112:',
max_write_label => '',
min_write_label => '',
def_label => 'NV112:NV112:',
row_label => '');
END;


--NV113
EXECUTE sa_components.create_level ('ACCESS_DUAN',615,'NV113','NV113');
EXECUTE sa_label_admin.create_label ('ACCESS_DUAN',113,'NV113:NV113:');
EXECUTE sa_components.create_compartment ('ACCESS_DUAN',615,'NV113','NV113');
UPDATE PHANCONG SET OLS_DUAN = char_to_label ('ACCESS_DUAN', 'NV113:NV113:')
WHERE manv = 'NV113';

BEGIN
sa_user_admin.set_user_labels
(policy_name => 'ACCESS_DUAN',
user_name => 'NV113',
max_read_label => 'NV113:NV113:',
max_write_label => '',
min_write_label => '',
def_label => 'NV113:NV113:',
row_label => '');
END;
GRANT SELECT ON PHANCONG TO NV113,NV143
--NV212
EXECUTE sa_components.create_level ('ACCESS_DUAN',620,'NV212','NV212');
EXECUTE sa_components.create_compartment ('ACCESS_DUAN',620,'NV212','NV212');
EXECUTE sa_label_admin.create_label ('ACCESS_DUAN',212,'NV212:NV212:');
UPDATE PHANCONG SET OLS_DUAN = char_to_label ('ACCESS_DUAN', 'NV212:NV212:')
WHERE manv = 'NV212';

BEGIN
sa_user_admin.set_user_labels
(policy_name => 'ACCESS_DUAN',
user_name => 'NV212',
max_read_label => 'NV212:NV212:',
max_write_label => '',
min_write_label => '',
def_label => 'NV212:NV212:',
row_label => '');
END;
--NV213
EXECUTE sa_components.create_level ('ACCESS_DUAN',630,'NV213','NV213');
EXECUTE sa_components.create_compartment ('ACCESS_DUAN',630,'NV213','NV213');
EXECUTE sa_label_admin.create_label ('ACCESS_DUAN',213,'NV213:NV213:');

UPDATE PHANCONG SET OLS_DUAN = char_to_label ('ACCESS_DUAN', 'NV213:NV213:')
WHERE manv = 'NV213';

BEGIN
sa_user_admin.set_user_labels
(policy_name => 'ACCESS_DUAN',
user_name => 'NV213',
max_read_label => 'NV213:NV213:',
max_write_label => '',
min_write_label => '',
def_label => 'NV213:NV213:',
row_label => '');
END;

--NV142
EXECUTE sa_components.create_level ('ACCESS_DUAN',640,'NV142','NV142');
EXECUTE sa_components.create_compartment ('ACCESS_DUAN',640,'NV142','NV142');
EXECUTE sa_label_admin.create_label ('ACCESS_DUAN',142,'NV142:NV142:');

UPDATE PHANCONG SET OLS_DUAN = char_to_label ('ACCESS_DUAN', 'NV142:NV142:')
WHERE manv = 'NV142';

BEGIN
sa_user_admin.set_user_labels
(policy_name => 'ACCESS_DUAN',
user_name => 'NV142',
max_read_label => 'NV142:NV142:',
max_write_label => '',
min_write_label => '',
def_label => 'NV142:NV142:',
row_label => '');
END;

--NV143
EXECUTE sa_components.create_level ('ACCESS_DUAN',650,'NV143','NV143');
EXECUTE sa_components.create_compartment ('ACCESS_DUAN',650,'NV143','NV143');
EXECUTE sa_label_admin.create_label ('ACCESS_DUAN',143,'NV143:NV143:');

UPDATE PHANCONG SET OLS_DUAN = char_to_label ('ACCESS_DUAN', 'NV143:NV143:')
WHERE manv = 'NV143';

BEGIN
sa_user_admin.set_user_labels
(policy_name => 'ACCESS_DUAN',
user_name => 'NV143',
max_read_label => 'NV143:NV143:',
max_write_label => '',
min_write_label => '',
def_label => 'NV143:NV143:',
row_label => '');
END;

--NV332
EXECUTE sa_components.create_level ('ACCESS_DUAN',660,'NV332','NV332');
EXECUTE sa_components.create_compartment ('ACCESS_DUAN',660,'NV332','NV332');
EXECUTE sa_label_admin.create_label ('ACCESS_DUAN',332,'NV332:NV332:');

UPDATE PHANCONG SET OLS_DUAN = char_to_label ('ACCESS_DUAN', 'NV332:NV332:')
WHERE manv = 'NV332';

BEGIN
sa_user_admin.set_user_labels
(policy_name => 'ACCESS_DUAN',
user_name => 'NV332',
max_read_label => 'NV332:NV332:',
max_write_label => '',
min_write_label => '',
def_label => 'NV332:NV332:',
row_label => '');
END;

--NV333
EXECUTE sa_components.create_level ('ACCESS_DUAN',670,'NV333','NV333');
EXECUTE sa_components.create_compartment ('ACCESS_DUAN',670,'NV333','NV333');
EXECUTE sa_label_admin.create_label ('ACCESS_DUAN',333,'NV333:NV333:');

UPDATE PHANCONG SET OLS_DUAN = char_to_label ('ACCESS_DUAN', 'NV333:NV333:')
WHERE manv = 'NV333';

BEGIN
sa_user_admin.set_user_labels
(policy_name => 'ACCESS_DUAN',
user_name => 'NV333',
max_read_label => 'NV333:NV333:',
max_write_label => '',
min_write_label => '',
def_label => 'NV333:NV333:',
row_label => '');
END;


--NV422
EXECUTE sa_components.create_level ('ACCESS_DUAN',680,'NV422','NV422');
EXECUTE sa_components.create_compartment ('ACCESS_DUAN',680,'NV422','NV422');
EXECUTE sa_label_admin.create_label ('ACCESS_DUAN',422,'NV422:NV422:');

UPDATE PHANCONG SET OLS_DUAN = char_to_label ('ACCESS_DUAN', 'NV422:NV422:')
WHERE manv = 'NV422';

BEGIN
sa_user_admin.set_user_labels
(policy_name => 'ACCESS_DUAN',
user_name => 'NV422',
max_read_label => 'NV422:NV422:',
max_write_label => '',
min_write_label => '',
def_label => 'NV422:NV422:',
row_label => '');
END;

BEGIN
sa_policy_admin.apply_table_policy
(policy_name => 'ACCESS_DUAN',
schema_name => 'bt_dba',
table_name => 'PHANCONG',
table_options => 'NO_CONTROL');
END;

BEGIN
sa_policy_admin.remove_table_policy
(policy_name => 'ACCESS_DUAN',
schema_name => 'bt_dba',
table_name => 'PHANCONG');
END;
BEGIN
sa_policy_admin.apply_table_policy
(policy_name => 'ACCESS_DUAN',
schema_name => 'bt_dba',
table_name => 'PHANCONG',
table_options =>
'READ_CONTROL,WRITE_CONTROL,CHECK_CONTROL');
END;
