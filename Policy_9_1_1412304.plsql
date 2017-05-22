--LEVEL
BEGIN
sa_components.create_level (policy_name => 'ACCESS_DUAN', long_name => 'THONGTHUONG', short_name => 'TT',level_num => 500);
END;
BEGIN
sa_components.create_level (policy_name => 'ACCESS_DUAN', long_name => 'GIOIHAN', short_name => 'GH',level_num => 1000);
END;
BEGIN
sa_components.create_level (policy_name => 'ACCESS_DUAN', long_name => 'BIMAT', short_name => 'BM',level_num => 2000);
END;
BEGIN
sa_components.create_level (policy_name => 'ACCESS_DUAN', long_name => 'BIMATCAO', short_name => 'BMC',level_num => 3000);
END;
--COMPARTMENT
EXECUTE sa_components.create_compartment ('ACCESS_DUAN',1000,'NS','NHANSU');
EXECUTE sa_components.create_compartment ('ACCESS_DUAN',2000,'KT','KETOAN');
EXECUTE sa_components.create_compartment ('ACCESS_DUAN',3000,'KH','KEHOACH');
--GROUP 
BEGIN
sa_components.create_group
(policy_name => 'ACCESS_DUAN',
long_name => 'TONGCTY',
short_name => 'TCT',
group_num => 1000,
parent_name => NULL);
END;
EXECUTE sa_components.create_group ('ACCESS_DUAN',2000,'DN','DANANG','TCT');
EXECUTE sa_components.create_group ('ACCESS_DUAN',3000,'HCM','HOCHIMINH','TCT');
EXECUTE sa_components.create_group ('ACCESS_DUAN',4000,'HN','HN','TCT');
--LABEL
EXECUTE sa_label_admin.create_label ('ACCESS_DUAN',100,'GH');
EXECUTE sa_label_admin.create_label ('ACCESS_DUAN',50000,'BMC:NS,KT,KH:DN');
EXECUTE sa_label_admin.create_label ('ACCESS_DUAN',60000,'BMC:NS,KT,KH:HCM');
EXECUTE sa_label_admin.create_label ('ACCESS_DUAN',65000,'BMC:NS,KT,KH:HN');
EXECUTE sa_label_admin.create_label ('ACCESS_DUAN',70000,'BMC:NS,KT,KH:TCT');
EXECUTE sa_label_admin.create_label ('ACCESS_DUAN',1000,'TT:KH:DN');
EXECUTE sa_label_admin.create_label ('ACCESS_DUAN',1100,'TT:KT:DN');
EXECUTE sa_label_admin.create_label ('ACCESS_DUAN',1200,'TT:NS:DN');
EXECUTE sa_label_admin.create_label ('ACCESS_DUAN',2000,'TT:KH:HCM');
EXECUTE sa_label_admin.create_label ('ACCESS_DUAN',2600,'TT:KT:HCM');
EXECUTE sa_label_admin.create_label ('ACCESS_DUAN',2500,'TT:NS:HCM');
EXECUTE sa_label_admin.create_label ('ACCESS_DUAN',3000,'GH:KH:DN');
EXECUTE sa_label_admin.create_label ('ACCESS_DUAN',3100,'GH:KT:DN');
EXECUTE sa_label_admin.create_label ('ACCESS_DUAN',3200,'GH:NS:DN');
EXECUTE sa_label_admin.create_label ('ACCESS_DUAN',3300,'GH:KH:HCM');
EXECUTE sa_label_admin.create_label ('ACCESS_DUAN',3400,'GH:KT:HCM');
EXECUTE sa_label_admin.create_label ('ACCESS_DUAN',3500,'GH:NS:HCM');
EXECUTE sa_label_admin.create_label ('ACCESS_DUAN',3600,'GH:KH:HN');
EXECUTE sa_label_admin.create_label ('ACCESS_DUAN',3700,'GH:KT:HN');
EXECUTE sa_label_admin.create_label ('ACCESS_DUAN',3800,'GH:NS:HN');
EXECUTE sa_label_admin.create_label ('ACCESS_DUAN',9000,'BM:KH:DN');
EXECUTE sa_label_admin.create_label ('ACCESS_DUAN',9500,'BM:KT:DN');
EXECUTE sa_label_admin.create_label ('ACCESS_DUAN',10500,'BM:NS:DN');
EXECUTE sa_label_admin.create_label ('ACCESS_DUAN',11500,'BM:KH:HCM');
EXECUTE sa_label_admin.create_label ('ACCESS_DUAN',12500,'BM:KT:HCM');
EXECUTE sa_label_admin.create_label ('ACCESS_DUAN',13500,'BM:NS:HCM');
EXECUTE sa_label_admin.create_label ('ACCESS_DUAN',16000,'BM:KH:HN');
EXECUTE sa_label_admin.create_label ('ACCESS_DUAN',17000,'BM:KT:HN');
EXECUTE sa_label_admin.create_label ('ACCESS_DUAN',17500,'BM:NS:HN');
EXECUTE sa_label_admin.create_label ('ACCESS_DUAN',40000,'BMC:NS:DN');
EXECUTE sa_label_admin.create_label ('ACCESS_DUAN',41000,'BMC:KT:DN');
EXECUTE sa_label_admin.create_label ('ACCESS_DUAN',42000,'BMC:KH:DN');
EXECUTE sa_label_admin.create_label ('ACCESS_DUAN',43000,'BMC:NS:HCM');
EXECUTE sa_label_admin.create_label ('ACCESS_DUAN',44000,'BMC:KT:HCM');
EXECUTE sa_label_admin.create_label ('ACCESS_DUAN',45000,'BMC:KH:HCM');
EXECUTE sa_label_admin.create_label ('ACCESS_DUAN',46000,'BMC:NS:HN');
EXECUTE sa_label_admin.create_label ('ACCESS_DUAN',47000,'BMC:KT:HN');
EXECUTE sa_label_admin.create_label ('ACCESS_DUAN',48000,'BMC:KH:HN');
