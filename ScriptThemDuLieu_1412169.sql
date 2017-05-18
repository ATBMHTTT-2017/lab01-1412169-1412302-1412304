--INSERT CHINHANH
insert into chinhanh values ('CNDN', 'Chi nhanh Da Nang', null);
insert into chinhanh values ('CNHCM', 'Chi nhanh Ho Chi Minh', null);
insert into chinhanh values ('CNHN', 'Chi nhanh Ha Noi', null);
insert into chinhanh values ('CNHP', 'Chi nhanh Hai Phong', null);
insert into chinhanh values ('CNQN', 'Chi nhanh Quang Nam', null);


--INSERT PHONGBAN
--CN DA NANG
insert into phongban values ('PH001', 'Phong ke hoach', null, TO_DATE ('01/01/2014', 'dd/mm/yyyy'), 10, 'CNDN');
insert into phongban values ('PH002', 'Phong ke toan', null, TO_DATE ('02/02/2014', 'dd/mm/yyyy'), 10, 'CNDN');
insert into phongban values ('PH003', 'Phong nhan su', null, TO_DATE ('03/03/2014', 'dd/mm/yyyy'), 10, 'CNDN');
insert into phongban values ('PH004', 'Phong thuc hien de an', null, TO_DATE ('04/04/2014', 'dd/mm/yyyy'), 10, 'CNDN');

--CN HO CHI MINH
insert into phongban values ('PH101', 'Phong ke hoach', null, TO_DATE ('01/01/2015', 'dd/mm/yyyy'), 10, 'CNHCM');
insert into phongban values ('PH102', 'Phong ke toan', null, TO_DATE ('02/02/2015', 'dd/mm/yyyy'), 10, 'CNHCM');
insert into phongban values ('PH103', 'Phong nhan su', null, TO_DATE ('03/03/2015', 'dd/mm/yyyy'), 10, 'CNHCM');
insert into phongban values ('PH104', 'Phong thuc hien de an', null, TO_DATE ('04/04/2015', 'dd/mm/yyyy'), 10, 'CNHCM');

--CN HA NOI
insert into phongban values ('PH201', 'Phong ke hoach', null, TO_DATE ('01/01/2016', 'dd/mm/yyyy'), 10, 'CNHN');
insert into phongban values ('PH202', 'Phong ke toan', null, TO_DATE ('02/02/2016', 'dd/mm/yyyy'), 10, 'CNHN');
insert into phongban values ('PH203', 'Phong nhan su', null, TO_DATE ('03/03/2016', 'dd/mm/yyyy'), 10, 'CNHN');
insert into phongban values ('PH204', 'Phong thuc hien de an', null, TO_DATE ('04/04/2016', 'dd/mm/yyyy'), 10, 'CNHN');

--CN HAI PHONG
insert into phongban values ('PH301', 'Phong ke hoach', null, TO_DATE ('01/01/2017', 'dd/mm/yyyy'), 10, 'CNHP');
insert into phongban values ('PH302', 'Phong ke toan', null, TO_DATE ('01/01/2017', 'dd/mm/yyyy'), 10, 'CNHP');
insert into phongban values ('PH303', 'Phong nha su', null, TO_DATE ('01/01/2017', 'dd/mm/yyyy'), 10, 'CNHP');

--CN QUANG NINH
insert into phongban values ('PH401', 'Phong ke hoach', null, TO_DATE ('01/01/2017', 'dd/mm/yyyy'), 10, 'CNQN');
insert into phongban values ('PH402', 'Phong ke toan', null, TO_DATE ('01/01/2017', 'dd/mm/yyyy'), 10, 'CNQN');
insert into phongban values ('PH403', 'Phong nha su', null, TO_DATE ('01/01/2017', 'dd/mm/yyyy'), 10, 'CNQN');

--INSERT NHAN VIEN
insert into NhanVien values ('NV000', 'Huynh Tong Trach', 'Quan TQ', '01678269999', 'httrach@gmail.com', null, null, 10000000);
insert into NhanVien values ('NV001', 'Truong H A', 'Quan 1', '01678264940', 'tha@gmail.com', null, 'CNDN', 10000000);
insert into NhanVien values ('NV011', 'Truong H B', 'Quan 2', '02678264941', 'thb@gmail.com', 'PH001', 'CNDN', 8000000);
insert into NhanVien values ('NV012', 'Truong H C', 'Quan 3', '03678264942', 'thc@gmail.com', 'PH001', 'CNDN', 5000000);
insert into NhanVien values ('NV021', 'Truong H D', 'Quan 4', '04678264943', 'thd@gmail.com', 'PH002', 'CNDN', 8000000);
insert into NhanVien values ('NV022', 'Truong H E', 'Quan 5', '05678264944', 'the@gmail.com', 'PH002', 'CNDN', 5000000);
insert into NhanVien values ('NV031', 'Truong H F', 'Quan 6', '06678264945', 'thf@gmail.com', 'PH003', 'CNDN', 8000000);
insert into NhanVien values ('NV041', 'Truong H G', 'Quan 7', '07678264946', 'thg@gmail.com', 'PH004', 'CNDN', 8000000);
insert into NhanVien values ('NV042', 'Truong H H', 'Quan 8', '08678264947', 'thh@gmail.com', 'PH004', 'CNDN', 6000000);
insert into NhanVien values ('NV043', 'Truong H I', 'Quan 9', '09678264948', 'thi@gmail.com', 'PH004', 'CNDN', 5000000);

insert into NhanVien values ('NV101', 'Huynh C A', 'Quan 9', '09678270040', 'hca@gmail.com', null, 'CNHCM', 10000000);
insert into NhanVien values ('NV111', 'Huynh C B', 'Quan 8', '05678270041', 'hcb@gmail.com', 'PH101', 'CNHCM', 8000000);
insert into NhanVien values ('NV112', 'Huynh C C', 'Quan 7', '06678270042', 'hcc@gmail.com', 'PH101', 'CNHCM', 5000000);
insert into NhanVien values ('NV113', 'Huynh C O', 'Quan 7', '06678270042', 'hco@gmail.com', 'PH101', 'CNHCM', 5000000);
insert into NhanVien values ('NV121', 'Huynh C D', 'Quan 6', '04678270043', 'hcd@gmail.com', 'PH102', 'CNHCM', 8000000);
insert into NhanVien values ('NV122', 'Huynh C E', 'Quan 5', '03678270044', 'hce@gmail.com', 'PH102', 'CNHCM', 5000000);
insert into NhanVien values ('NV131', 'Huynh C F', 'Quan 4', '02678270045', 'hcf@gmail.com', 'PH103', 'CNHCM', 8000000);
insert into NhanVien values ('NV141', 'Huynh C G', 'Quan 3', '01678270046', 'hcg@gmail.com', 'PH104', 'CNHCM', 8000000);
insert into NhanVien values ('NV142', 'Huynh C H', 'Quan 2', '08678270047', 'hch@gmail.com', 'PH104', 'CNHCM', 6000000);
insert into NhanVien values ('NV143', 'Huynh C I', 'Quan 1', '07678270048', 'hci@gmail.com', 'PH104', 'CNHCM', 5000000);

insert into NhanVien values ('NV201', 'Ho T A', 'Quan 10', '09678270040', 'hca@gmail.com', null, 'CNHN', 10000000);
insert into NhanVien values ('NV211', 'Ho T B', 'Quan 11', '05678270041', 'hcb@gmail.com', 'PH201', 'CNHN', 8000000);
insert into NhanVien values ('NV212', 'Ho T C', 'Quan 12', '06678270042', 'hcc@gmail.com', 'PH201', 'CNHN', 5000000);
insert into NhanVien values ('NV213', 'Ho A C', 'Quan 12', '04678270042', 'hac@gmail.com', 'PH201', 'CNHN', 5000000);
insert into NhanVien values ('NV221', 'Ho T D', 'Quan 8', '04678270043', 'hcdgmail.com', 'PH202', 'CNHN', 8000000);
insert into NhanVien values ('NV231', 'Ho T F', 'Quan 4', '02678270045', 'hcf@gmail.com', 'PH203', 'CNHN', 8000000);
insert into NhanVien values ('NV232', 'Ho T E', 'Quan 6', '03678270044', 'hce@gmail.com', 'PH203', 'CNHN', 5000000);
insert into NhanVien values ('NV241', 'Ho T G', 'Quan 3', '01678270046', 'hcg@gmail.com', 'PH204', 'CNHN', 8000000);
insert into NhanVien values ('NV242', 'Ho T H', 'Quan 1', '08678270047', 'hch@gmail.com', 'PH204', 'CNHN', 6000000);
insert into NhanVien values ('NV243', 'Ho T I', 'Quan 2', '07678270048', 'hci@gmail.com', 'PH204', 'CNHN', 5000000);

insert into NhanVien values ('NV301', 'Nguyen X A', 'Quan 10', '09678270078', 'nxa@gmail.com', null, 'CNHP', 10000000);
insert into NhanVien values ('NV311', 'Nguyen X B', 'Quan 10', '09678270079', 'nxb@gmail.com', 'PH301', 'CNHP', 5000000);
insert into NhanVien values ('NV321', 'Nguyen X C', 'Quan 10', '09678270080', 'nxc@gmail.com', 'PH302', 'CNHP', 5000000);
insert into NhanVien values ('NV331', 'Nguyen X D', 'Quan 10', '09678270081', 'nxd@gmail.com', 'PH303', 'CNHP', 5000000);
insert into NhanVien values ('NV332', 'Nguyen X E', 'Quan 10', '09678270181', 'nxe@gmail.com', 'PH303', 'CNHP', 5000000);
insert into NhanVien values ('NV333', 'Nguyen X F', 'Quan 10', '09678271281', 'nxf@gmail.com', 'PH303', 'CNHP', 5000000);

insert into NhanVien values ('NV401', 'Tran X A', 'Quan 10', '09678720078', 'nxa@gmail.com', null, 'CNQN', 10000000);
insert into NhanVien values ('NV411', 'Tran X B', 'Quan 10', '09678780079', 'txb@gmail.com', null, 'CNQN', 5000000);
insert into NhanVien values ('NV421', 'Tran X C', 'Quan 10', '09678790080', 'txc@gmail.com', null, 'CNQN', 5000000);
insert into NhanVien values ('NV422', 'Tran X E', 'Quan 10', '09671290080', 'txe@gmail.com', null, 'CNQN', 5000000);
insert into NhanVien values ('NV431', 'Tran X D', 'Quan 10', '09674270081', 'txd@gmail.com', null, 'CNQN', 5000000);

--INSERT DU AN
insert into DuAn values ('DA101', 'Tuyen nhan su', 3000000, 'PH101', 'NV112');
insert into DuAn values ('DA102', 'iot', 3000000, 'PH202', 'NV212');
insert into DuAn values ('DA103', 'IT Support', 4000000, 'PH104', 'NV142');
insert into DuAn values ('DA104', 'Finance', 4000000, 'PH303', 'NV332');
insert into DuAn values ('DA105', 'Real estate', 4000000, 'PH402', 'NV422');

--INSERT CHI TIEU
insert into ChiTieu values ('CT101', 'Pho to to roi', 200000, 'DA101');
insert into ChiTieu values ('CT102', 'Pho to poster', 200000, 'DA101');
insert into ChiTieu values ('CT103', 'Nuoc suoi', 200000, 'DA101');
insert into ChiTieu values ('CT104', 'bia', 200000, 'DA102');
insert into ChiTieu values ('CT105', 'bia', 200000, 'DA103');
insert into ChiTieu values ('CT106', 'Bia', 200000, 'DA104');
insert into ChiTieu values ('CT107', 'Bia', 200000, 'DA105');

--INSERT PHANCONG
insert into PhanCong values ('NV112', 'DA101', 'Truong du an', 500000);
insert into PhanCong values ('NV113', 'DA101', 'Thanh vien', 200000);
insert into PhanCong values ('NV212', 'DA102', 'Truong du an', 500000);
insert into PhanCong values ('NV213', 'DA102', 'Thanh vien', 200000);
insert into PhanCong values ('NV142', 'DA103', 'Truong du an', 500000);
insert into PhanCong values ('NV143', 'DA103', 'Thanh vien', 200000);
insert into PhanCong values ('NV332', 'DA104', 'Truong du an', 500000);
insert into PhanCong values ('NV333', 'DA104', 'Thanh vien', 200000);
insert into PhanCong values ('NV422', 'DA105', 'Truong du an', 500000);

--Update ChiNhanh
update ChiNhanh set truongChiNhanh = 'NV001' where maCN = 'CNDN' ;
update ChiNhanh set truongChiNhanh = 'NV101' where maCN = 'CNHCM' ;
update ChiNhanh set truongChiNhanh = 'NV201' where maCN = 'CNHN' ;
update ChiNhanh set truongChiNhanh = 'NV301' where maCN = 'CNHP' ;
update ChiNhanh set truongChiNhanh = 'NV401' where maCN = 'CNQN' ;

--Update PhongBan - CN Da Nang
update PhongBan set truongPhong = 'NV011' where maPhong = 'PH001' ;
update PhongBan set truongPhong = 'NV021' where maPhong = 'PH002' ;
update PhongBan set truongPhong = 'NV031' where maPhong = 'PH003' ;
update PhongBan set truongPhong = 'NV041' where maPhong = 'PH004' ;

--Update PhongBan - CN Ho Chi Minh
update PhongBan set truongPhong = 'NV111' where maPhong = 'PH101' ;
update PhongBan set truongPhong = 'NV121' where maPhong = 'PH102' ;
update PhongBan set truongPhong = 'NV131' where maPhong = 'PH103' ;
update PhongBan set truongPhong = 'NV141' where maPhong = 'PH104' ;

--Update PhongBan - CN Ha Noi
update PhongBan set truongPhong = 'NV211' where maPhong = 'PH201' ;
update PhongBan set truongPhong = 'NV221' where maPhong = 'PH202' ;
update PhongBan set truongPhong = 'NV231' where maPhong = 'PH203' ;
update PhongBan set truongPhong = 'NV241' where maPhong = 'PH204' ;

--Update PhongBan - CN Hai Phong
update PhongBan set truongPhong = 'NV311' where maPhong = 'PH301' ;
update PhongBan set truongPhong = 'NV321' where maPhong = 'PH302' ;
update PhongBan set truongPhong = 'NV331' where maPhong = 'PH303' ;

--Update PhongBan - CN Quang Ninh
update PhongBan set truongPhong = 'NV411' where maPhong = 'PH401' ;
update PhongBan set truongPhong = 'NV421' where maPhong = 'PH402' ;
update PhongBan set truongPhong = 'NV431' where maPhong = 'PH403' ;

