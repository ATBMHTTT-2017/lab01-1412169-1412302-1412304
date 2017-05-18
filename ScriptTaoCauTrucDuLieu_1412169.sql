create table NhanVien(
  maNV varchar2(5) not null,
  hoTen varchar2(30) not null,
  diaChi varchar2(50) not null,
  dienThoai varchar2(11) not null,
  email varchar2(50) not null,
  maPhong varchar2(5),
  chiNhanh varchar2(5),
  luong float not null,
  primary key (maNV)
);

create table ChiNhanh(
  maCN varchar2(5) not null,
  tenCN varchar2(50) not null,
  truongChiNhanh varchar2(5),
  primary key (maCN)
);

create table ChiTieu(
  maChiTieu varchar2(5) not null,
  tenChiTieu varchar2(50) not null,
  soTien float not null,
  duAn varchar2(5),
  primary key (maChiTieu)
);

create table DuAn(
  maDA varchar2(5) not null,
  tenDA varchar2(50) not null,
  kinhPhi float not null,
  phongChuTri varchar2(5),
  truongDA varchar2(5),
  primary key (maDA)
);

create table PhanCong(
  maNV varchar2(5) not null,
  duAn varchar2(5) not null,
  vaiTro varchar2(30),
  phuCap float,
  primary key (maNV, duAn)
);

create table PhongBan(
  maPhong varchar2(5) not null,
  tenPhong varchar2(30) not null,
  truongPhong varchar2(5),
  ngayNhanChuc date not null,
  soNhanVien int not null,
  chiNhanh varchar2(5),
  primary key (maPhong)
);

Alter table NhanVien
  add constraint chiNhanh_maCN_NV
  foreign key (chiNhanh)
  references ChiNhanh(maCN);

Alter table NhanVien
  add constraint maPhong_maPhong
  foreign key (maPhong)
  references PhongBan(maPhong);  

Alter table ChiTieu
  add constraint duAn_maDA
  foreign key (duAn)
  references DuAn(maDA);

Alter table DuAn
  add constraint truongDA_maNV
  foreign key (truongDA)
  references NhanVien(maNV);
  
Alter table DuAn
  add constraint phongChuTri_maPhong
  foreign key (phongChuTri)
  references PhongBan(maPhong);
  
Alter table PhongBan
  add constraint chiNhanh_maCN
  foreign key (chiNhanh)
  references ChiNhanh(maCN);
 
Alter table PhanCong
  add constraint maNV_maNV
  foreign key (maNV)
  references NhanVien(maNV);
  
Alter table PhanCong
  add constraint duAn_maDA_PC
  foreign key (duAn)
  references DuAn(maDA);

Alter table ChiNhanh
  add constraint truongChiNhanh_maNV
  foreign key (truongChiNhanh)
  references NhanVien(maNV);
