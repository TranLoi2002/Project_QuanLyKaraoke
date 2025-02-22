USE [master]
GO
/****** Object:  Database [QL_Karaoke]    Script Date: 12/14/2023 11:58:29 AM ******/
CREATE DATABASE [QL_Karaoke]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QL_Karaoke', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\QL_Karaoke.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QL_Karaoke_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\QL_Karaoke_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QL_Karaoke] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QL_Karaoke].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QL_Karaoke] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QL_Karaoke] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QL_Karaoke] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QL_Karaoke] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QL_Karaoke] SET ARITHABORT OFF 
GO
ALTER DATABASE [QL_Karaoke] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QL_Karaoke] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QL_Karaoke] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QL_Karaoke] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QL_Karaoke] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QL_Karaoke] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QL_Karaoke] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QL_Karaoke] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QL_Karaoke] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QL_Karaoke] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QL_Karaoke] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QL_Karaoke] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QL_Karaoke] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QL_Karaoke] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QL_Karaoke] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QL_Karaoke] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QL_Karaoke] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QL_Karaoke] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QL_Karaoke] SET  MULTI_USER 
GO
ALTER DATABASE [QL_Karaoke] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QL_Karaoke] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QL_Karaoke] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QL_Karaoke] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QL_Karaoke] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QL_Karaoke] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QL_Karaoke] SET QUERY_STORE = ON
GO
ALTER DATABASE [QL_Karaoke] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QL_Karaoke]
GO
/****** Object:  Table [dbo].[tbl_HoaDonThuePhong]    Script Date: 12/14/2023 11:58:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_HoaDonThuePhong](
	[MaHoaDon] [varchar](10) NOT NULL,
	[NgayTaoHoaDon] [smalldatetime] NULL,
	[GioVao] [smalldatetime] NULL,
	[GioRa] [smalldatetime] NULL,
	[MaKhachHang] [varchar](10) NULL,
	[MaNhanVien] [varchar](10) NULL,
	[MaPhongHat] [varchar](10) NULL,
 CONSTRAINT [PK_tbl_HoaDonThuePhong] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[View_tbl_HoaDonThuePhong]    Script Date: 12/14/2023 11:58:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_tbl_HoaDonThuePhong]
AS
SELECT    MaHoaDon, NgayTaoHoaDon, GioVao, GioRa, MaKhachHang, MaNhanVien, MaPhongHat
FROM         dbo.tbl_HoaDonThuePhong
GO
/****** Object:  Table [dbo].[tbl_ChiTietHoaDon]    Script Date: 12/14/2023 11:58:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ChiTietHoaDon](
	[MaHoaDon] [varchar](10) NOT NULL,
	[MaDichVu] [varchar](10) NOT NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_tbl_ChiTietHoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC,
	[MaDichVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_DichVu]    Script Date: 12/14/2023 11:58:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_DichVu](
	[MaDichVu] [varchar](10) NOT NULL,
	[TenDichVu] [nvarchar](50) NULL,
	[GiaDichVu] [float] NULL,
	[SoLuong] [int] NULL,
	[DonVi] [nvarchar](50) NULL,
	[TrangThai] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_DichVu] PRIMARY KEY CLUSTERED 
(
	[MaDichVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[View_tbl_HoaDonDichVu]    Script Date: 12/14/2023 11:58:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_tbl_HoaDonDichVu]
AS
SELECT    dbo.tbl_DichVu.TenDichVu, dbo.tbl_DichVu.SoLuong, dbo.tbl_HoaDonThuePhong.MaPhongHat
FROM         dbo.tbl_HoaDonThuePhong INNER JOIN
                      dbo.tbl_ChiTietHoaDon ON dbo.tbl_HoaDonThuePhong.MaHoaDon = dbo.tbl_ChiTietHoaDon.MaHoaDon INNER JOIN
                      dbo.tbl_DichVu ON dbo.tbl_ChiTietHoaDon.MaDichVu = dbo.tbl_DichVu.MaDichVu
GROUP BY dbo.tbl_DichVu.TenDichVu, dbo.tbl_DichVu.SoLuong, dbo.tbl_HoaDonThuePhong.MaPhongHat
GO
/****** Object:  Table [dbo].[tbl_DonDatPhong]    Script Date: 12/14/2023 11:58:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_DonDatPhong](
	[MaDonDatPhong] [varchar](10) NOT NULL,
	[NgayDat] [smalldatetime] NULL,
	[GioDat] [time](5) NULL,
	[MaPhongHat] [varchar](10) NULL,
	[MaKhachHang] [varchar](10) NULL,
 CONSTRAINT [PK_tbl_DonDatPhong] PRIMARY KEY CLUSTERED 
(
	[MaDonDatPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_HoaDonTT]    Script Date: 12/14/2023 11:58:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_HoaDonTT](
	[MaHoaDonTT] [varchar](10) NOT NULL,
	[NgayThanhToan] [date] NULL,
	[TongThoiGianSuDung] [int] NULL,
	[TienPhong] [float] NULL,
	[TienDichVu] [float] NULL,
	[TienNhan] [float] NULL,
	[TongTien] [float] NULL,
	[MaHoaDon] [varchar](10) NULL,
 CONSTRAINT [PK_tbl_HoaDonTT] PRIMARY KEY CLUSTERED 
(
	[MaHoaDonTT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_KhachHang]    Script Date: 12/14/2023 11:58:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_KhachHang](
	[MaKhachHang] [varchar](10) NOT NULL,
	[TenKhachHang] [nvarchar](50) NULL,
	[SoDienThoai] [varchar](20) NULL,
	[CCCD] [varchar](20) NULL,
	[GioiTinh] [bit] NULL,
	[DiaChi] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_LoaiPhong]    Script Date: 12/14/2023 11:58:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_LoaiPhong](
	[MaLoaiPhong] [varchar](10) NOT NULL,
	[TenLoaiPhong] [nvarchar](30) NULL,
 CONSTRAINT [PK_tbl_LoaiPhong] PRIMARY KEY CLUSTERED 
(
	[MaLoaiPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_NhanVien]    Script Date: 12/14/2023 11:58:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_NhanVien](
	[MaNhanVien] [varchar](10) NOT NULL,
	[TenNhanVien] [nvarchar](50) NULL,
	[NgaySinh] [smalldatetime] NULL,
	[SoDienThoai] [varchar](20) NULL,
	[CCCD] [varchar](20) NULL,
	[GioiTinh] [bit] NULL,
	[DiaChi] [nvarchar](50) NULL,
	[ChucVu] [nvarchar](30) NULL,
	[TrangThai] [nvarchar](30) NULL,
 CONSTRAINT [PK_tbl_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_PhongHat]    Script Date: 12/14/2023 11:58:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_PhongHat](
	[MaPhongHat] [varchar](10) NOT NULL,
	[TenPhongHat] [nvarchar](30) NULL,
	[GiaPhong] [float] NULL,
	[TinhTrang] [nvarchar](30) NULL,
	[SucChua] [int] NULL,
	[MaLoaiPhong] [varchar](10) NULL,
 CONSTRAINT [PK_tbl_PhongHat] PRIMARY KEY CLUSTERED 
(
	[MaPhongHat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_TaiKhoan]    Script Date: 12/14/2023 11:58:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_TaiKhoan](
	[TenDangNhap] [varchar](20) NOT NULL,
	[MatKhau] [varchar](20) NULL,
	[MaNhanVien] [varchar](10) NULL,
 CONSTRAINT [PK_tbl_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[TenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ChiTietHoaDon_tbl_DichVu] FOREIGN KEY([MaDichVu])
REFERENCES [dbo].[tbl_DichVu] ([MaDichVu])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_ChiTietHoaDon] CHECK CONSTRAINT [FK_tbl_ChiTietHoaDon_tbl_DichVu]
GO
ALTER TABLE [dbo].[tbl_ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ChiTietHoaDon_tbl_HoaDonThuePhong] FOREIGN KEY([MaHoaDon])
REFERENCES [dbo].[tbl_HoaDonThuePhong] ([MaHoaDon])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_ChiTietHoaDon] CHECK CONSTRAINT [FK_tbl_ChiTietHoaDon_tbl_HoaDonThuePhong]
GO
ALTER TABLE [dbo].[tbl_DonDatPhong]  WITH CHECK ADD  CONSTRAINT [FK_tbl_DonDatPhong_tbl_KhachHang] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[tbl_KhachHang] ([MaKhachHang])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_DonDatPhong] CHECK CONSTRAINT [FK_tbl_DonDatPhong_tbl_KhachHang]
GO
ALTER TABLE [dbo].[tbl_DonDatPhong]  WITH CHECK ADD  CONSTRAINT [FK_tbl_DonDatPhong_tbl_PhongHat] FOREIGN KEY([MaPhongHat])
REFERENCES [dbo].[tbl_PhongHat] ([MaPhongHat])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_DonDatPhong] CHECK CONSTRAINT [FK_tbl_DonDatPhong_tbl_PhongHat]
GO
ALTER TABLE [dbo].[tbl_HoaDonTT]  WITH CHECK ADD  CONSTRAINT [FK_tbl_HoaDonTT_tbl_HoaDonThuePhong] FOREIGN KEY([MaHoaDon])
REFERENCES [dbo].[tbl_HoaDonThuePhong] ([MaHoaDon])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_HoaDonTT] CHECK CONSTRAINT [FK_tbl_HoaDonTT_tbl_HoaDonThuePhong]
GO
ALTER TABLE [dbo].[tbl_HoaDonThuePhong]  WITH CHECK ADD  CONSTRAINT [FK_tbl_HoaDonThuePhong_tbl_KhachHang] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[tbl_KhachHang] ([MaKhachHang])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_HoaDonThuePhong] CHECK CONSTRAINT [FK_tbl_HoaDonThuePhong_tbl_KhachHang]
GO
ALTER TABLE [dbo].[tbl_HoaDonThuePhong]  WITH CHECK ADD  CONSTRAINT [FK_tbl_HoaDonThuePhong_tbl_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[tbl_NhanVien] ([MaNhanVien])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_HoaDonThuePhong] CHECK CONSTRAINT [FK_tbl_HoaDonThuePhong_tbl_NhanVien]
GO
ALTER TABLE [dbo].[tbl_HoaDonThuePhong]  WITH CHECK ADD  CONSTRAINT [FK_tbl_HoaDonThuePhong_tbl_PhongHat] FOREIGN KEY([MaPhongHat])
REFERENCES [dbo].[tbl_PhongHat] ([MaPhongHat])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_HoaDonThuePhong] CHECK CONSTRAINT [FK_tbl_HoaDonThuePhong_tbl_PhongHat]
GO
ALTER TABLE [dbo].[tbl_PhongHat]  WITH CHECK ADD  CONSTRAINT [FK_tbl_PhongHat_tbl_LoaiPhong] FOREIGN KEY([MaLoaiPhong])
REFERENCES [dbo].[tbl_LoaiPhong] ([MaLoaiPhong])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_PhongHat] CHECK CONSTRAINT [FK_tbl_PhongHat_tbl_LoaiPhong]
GO
ALTER TABLE [dbo].[tbl_TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_tbl_TaiKhoan_tbl_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[tbl_NhanVien] ([MaNhanVien])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_TaiKhoan] CHECK CONSTRAINT [FK_tbl_TaiKhoan_tbl_NhanVien]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tbl_DichVu"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 170
               Right = 242
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_HoaDonThuePhong"
            Begin Extent = 
               Top = 7
               Left = 532
               Bottom = 170
               Right = 743
            End
            DisplayFlags = 280
            TopColumn = 4
         End
         Begin Table = "tbl_ChiTietHoaDon"
            Begin Extent = 
               Top = 7
               Left = 290
               Bottom = 170
               Right = 484
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1176
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1356
         SortOrder = 1416
         GroupBy = 1350
         Filter = 1356
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_tbl_HoaDonDichVu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_tbl_HoaDonDichVu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tbl_HoaDonThuePhong"
            Begin Extent = 
               Top = 0
               Left = 354
               Bottom = 163
               Right = 565
            End
            DisplayFlags = 280
            TopColumn = 4
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_tbl_HoaDonThuePhong'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_tbl_HoaDonThuePhong'
GO
USE [master]
GO
ALTER DATABASE [QL_Karaoke] SET  READ_WRITE 
GO
