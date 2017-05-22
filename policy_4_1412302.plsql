--Cau 4: Giam doc duoc phep xem thong tin DuAn
grant  EXEMPT ACCESS POLICY to GiamDoc;
create or replace view View_GiamDoc as select da.maDA, da.tenDA, da. kinhPhi, pb.tenphong as tenphongchutri, cn.tenCN as tenchinhanh, nv.hoTen as truongduan , sum(ct.soTien) as ChiPhi
                            from DuAn da, ChiNhanh cn, NhanVien nv, PhongBan pb, ChiTieu ct
                            where da.phongChuTri = pb.maPhong and pb.chiNhanh = cn.maCN and da.truongDA = nv.maNV and da.maDA = ct.duAn
                            group by da.maDA, da.tenDA, da. kinhPhi, pb.tenphong, cn.tenCN, nv.hoTen; 
grant select on View_GiamDoc to GiamDoc;