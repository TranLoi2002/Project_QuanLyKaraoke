USE [master]
GO
/****** Object:  Database [QL_Karaoke]    Script Date: 10/31/2023 7:22:50 PM ******/
CREATE DATABASE [QL_Karaoke]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QL_Karaoke', FILENAME = N'Users/tranvanloi/Documents/N3.Học Kì 1/Phát triển ứng dụng/QL_Karaoke.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QL_Karaoke_log', FILENAME = N'Users/tranvanloi/Documents/N3.Học Kì 1/Phát triển ứng dụng\QL_Karaoke_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
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
/****** Object:  Table [dbo].[tbl_ChiTietHoaDon]    Script Date: 10/31/2023 7:22:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ChiTietHoaDon](
	[MaHoaDon] [varchar](10) NOT NULL,
	[MaDichVu] [varchar](10) NOT NULL,
	[NgaySuDung] [smalldatetime] NULL,
 CONSTRAINT [PK_tbl_ChiTietHoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC,
	[MaDichVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_DichVu]    Script Date: 10/31/2023 7:22:50 PM ******/
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
/****** Object:  Table [dbo].[tbl_DonDatPhong]    Script Date: 10/31/2023 7:22:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_DonDatPhong](
	[MaDonDatPhong] [varchar](10) NOT NULL,
	[NgayDat] [smalldatetime] NULL,
	[GioDat] [time](5) NULL,
	[TrangThai] [nvarchar](50) NULL,
	[MaPhongHat] [varchar](10) NULL,
	[MaKhachHang] [varchar](10) NULL,
 CONSTRAINT [PK_tbl_DonDatPhong] PRIMARY KEY CLUSTERED 
(
	[MaDonDatPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_HoaDonThuePhong]    Script Date: 10/31/2023 7:22:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_HoaDonThuePhong](
	[MaHoaDon] [varchar](10) NOT NULL,
	[NgayTaoHoaDon] [smalldatetime] NULL,
	[GioVao] [smalldatetime] NULL,
	[GioRa] [smalldatetime] NULL,
	[TienNhan] [float] NULL,
	[MaKhachHang] [varchar](10) NULL,
	[MaNhanVien] [varchar](10) NULL,
	[TrangThai] [nvarchar](30) NULL,
	[MaPhongHat] [varchar](10) NULL,
 CONSTRAINT [PK_tbl_HoaDonThuePhong] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_KhachHang]    Script Date: 10/31/2023 7:22:50 PM ******/
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
	[SoLanSuDung] [int] NULL,
 CONSTRAINT [PK_tbl_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_LoaiPhong]    Script Date: 10/31/2023 7:22:50 PM ******/
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
/****** Object:  Table [dbo].[tbl_NhanVien]    Script Date: 10/31/2023 7:22:50 PM ******/
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
/****** Object:  Table [dbo].[tbl_PhongHat]    Script Date: 10/31/2023 7:22:50 PM ******/
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
/****** Object:  Table [dbo].[tbl_TaiKhoan]    Script Date: 10/31/2023 7:22:50 PM ******/
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
USE [master]
GO
ALTER DATABASE [QL_Karaoke] SET  READ_WRITE 
GO
select TenDangNhap, MatKhau, tk.MaNhanVien from tbl_TaiKhoan tk join tbl_NhanVien nv on tk.MaNhanVien = nv.MaNhanVien
select TenDangNhap, MatKhau, tk.MaNhanVien from tbl_TaiKhoan tk join tbl_NhanVien nv on tk.MaNhanVien = nv.MaNhanVien where TenDangNhap = 'tranloi'