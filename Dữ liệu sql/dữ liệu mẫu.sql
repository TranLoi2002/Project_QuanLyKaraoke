


-- nhân viên
insert into tbl_NhanVien values ('NV001',N'Lê Trọng Tấn','1999-08-19 00:00:00','0909777554','097546545454', 1,N'121 Nguyễn Oanh, Gò Vấp, tp.HCM', N'Nhân viên', N'Đang làm việc')
insert into tbl_NhanVien values ('NV002',N'Nguyễn Bảo Kha','2003-09-25 00:00:00','0354689546','074133221546', 1,N'130 Nguyễn Oanh, Gò Vấp, tp.HCM', N'Nhân viên', N'Đang làm việc')
insert into tbl_NhanVien values ('NV003',N'Trần Văn Lợi','2002-05-11 00:00:00','0899626775','074654213215', 1,N'Nguyễn Văn Lượng, Gò Vấp, tp.HCM', N'Nhân viên', N'Đang làm việc')
insert into tbl_NhanVien values ('NV004',N'Nguyễn Trường An','2003-10-06 00:00:00','0964133949','074203444587', 1,N'Nguyễn Văn Lượng, Gò Vấp, tp.HCM', N'Nhân viên', N'Đang làm việc')
insert into tbl_NhanVien values ('NV005',N'Nguyễn Công Hậu','2003-04-04 00:00:00','0955465428','074555647886', 1,N'Nguyễn Văn Lượng, Gò Vấp, tp.HCM', N'Nhân viên', N'Nghỉ việc')
insert into tbl_NhanVien values ('NV006',N'Nguyễn Ngọc Tường Vi','2003-05-01 00:00:00','0888337377','074203546215', 0,N'Thủ Dầu Một, Bình Dương', N'Nhân viên', N'Đang làm việc')
insert into tbl_NhanVien values ('QL001',N'Nguyễn Thái Bảo','2003-02-10 00:00:00','0387776610','074203000973', 1,N'Nguyễn Thái Sơn, Gò Vấp, tp.HCM', N'Quản lý', N'Đang làm việc')

-- tài khoản
insert into tbl_TaiKhoan values ('bao1028', 'bao123', 'QL001')
insert into tbl_TaiKhoan values ('loi123', '123456', 'NV003')
insert into tbl_TaiKhoan values ('an123', '123456', 'NV004')
insert into tbl_TaiKhoan values ('kha123', '123456', 'NV002')

-- loại phòng

insert into tbl_LoaiPhong values ('T001', N'Thường')
insert into tbl_LoaiPhong values ('V001', N'Vip')

-- phòng hát
insert into tbl_PhongHat values ('PHT002', '002', 150000, N'Đang sử dụng', 6, 'T001')
insert into tbl_PhongHat values ('PHT003', '003', 150000, N'Trống', 10, 'T001')
insert into tbl_PhongHat values ('PHT004', '004', 150000, N'Trống', 15, 'T001')
insert into tbl_PhongHat values ('PHT005', '101', 150000, N'Phòng chờ', 15, 'T001')
insert into tbl_PhongHat values ('PHT009', '201', 150000, N'Trống', 20, 'T001')
insert into tbl_PhongHat values ('PHT010', '202', 150000, N'Trống', 10, 'T001')
insert into tbl_PhongHat values ('PHV001', '001', 250000, N'Trống', 10, 'V001')
insert into tbl_PhongHat values ('PHV006', '102', 250000, N'Trống', 20, 'V001')
insert into tbl_PhongHat values ('PHV007', '103', 250000, N'Đang sử dụng', 20, 'V001')
insert into tbl_PhongHat values ('PHV008', '104', 250000, N'Phòng chờ', 15, 'V001')
insert into tbl_PhongHat values ('PHV011', '203', 250000, N'Trống', 15, 'V001')
insert into tbl_PhongHat values ('PHV012', '204', 250000, N'Trống', 20, 'V001')

-- khách hàng
insert into tbl_KhachHang values ('KH0001',N'Trần Anh Minh','0909123578','024748374745', 1,N'Thành phố Hồ Chí Minh')
insert into tbl_KhachHang values ('KH0002',N'Nguyễn Thị Hoàng Thơ','0982948744','029488494884', 0,N'Thành phố Hồ Chí Minh')
insert into tbl_KhachHang values ('KH0003',N'Bùi Trần Thảo Linh','0382744622','092488473847', 0,N'Thành phố Hồ Chí Minh')
insert into tbl_KhachHang values ('KH0004',N'Nguyễn Thái Bảo','0387776610','074203000973', 1,N'Bình Dương')
insert into tbl_KhachHang values ('KH0005',N'Nguyễn Trường An','0935776768','092487435351', 1,N'Thành phố Hồ Chí Minh')
insert into tbl_KhachHang values ('KH0006',N'Nguyễn Văn Hậu','0745673575','092834727444', 1,N'Thành phố Hồ Chí Minh')
insert into tbl_KhachHang values ('KH0007',N'Hồ Văn Tài','0354656218','092867654234', 1,N'Thành phố Hồ Chí Minh')
insert into tbl_KhachHang values ('KH0008',N'Lê Thái Quý','0923154788','087466546212', 1,N'Thành phố Hồ Chí Minh')
insert into tbl_KhachHang values ('KH0009',N'Nguyễn Hằng','0955557852','087465433332', 0,N'Thành phố Hồ Chí Minh')
insert into tbl_KhachHang values ('KH0010',N'Nguyễn Xuân An','0365789555','089777555444', 0,N'Bình Dương')
insert into tbl_KhachHang values ('KH0011',N'Trần Thị Diễm','0974552858','024775566844', 0,N'Bình Phước')
insert into tbl_KhachHang values ('KH0012',N'Hồ Thủy Nhi','0984477568','045552857569', 0,N'Bình Dương')
insert into tbl_KhachHang values ('KH0013',N'Đỗ Duy Mạnh','0994222355','048321534644', 1,N'Thành phố Hồ Chí Minh')

-- dịch vụ
insert into tbl_DichVu values ('DV001', 'Bia', 340000, 15, N'Thùng', N'Sắp hết')
insert into tbl_DichVu values ('DV002', 'Number One', 20000, 100, N'Chai', N'Cònt')
insert into tbl_DichVu values ('DV003', 'Soda Chanh', 20000, 75, N'Chai', N'Còn')
insert into tbl_DichVu values ('DV004', 'Rượu', 380000, 110, N'Chai', N'Còn')
insert into tbl_DichVu values ('DV005', 'Trái cây', 100000, 22, N'Dĩa', N'Sắp hết')
insert into tbl_DichVu values ('DV006', 'Revive Chanh muối', 20000, 100, N'Chai', N'Còn')
insert into tbl_DichVu values ('DV007', 'Sting Dâu', 20000, 100, N'Chai', N'Còn')
insert into tbl_DichVu values ('DV008', 'Thuốc Lá', 35000, 70, N'Bao', N'Còn')
insert into tbl_DichVu values ('DV009', 'Bò Cụng', 25000, 100, N'Lon', N'Còn')
insert into tbl_DichVu values ('DV010', 'Wake up 247', 20000, 100, N'Chai', N'Còn')
insert into tbl_DichVu values ('DV011', 'Monster', 20000, 75, N'Lon', N'Còn')
insert into tbl_DichVu values ('DV012', 'Warrior', 20000, 60, N'Lon', N'Còn')
insert into tbl_DichVu values ('DV013', 'Nước suối', 10000, 50, N'Chai', N'Còn')
insert into tbl_DichVu values ('DV014', 'Đậu phộng', 30000, 50, N'Dĩa', N'Còn')
