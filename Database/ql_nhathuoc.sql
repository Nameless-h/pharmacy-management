USE [ql_nhathuoc]
GO
/****** Object:  Table [dbo].[chitietdonhang]    Script Date: 12/1/2023 1:01:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chitietdonhang](
	[MaChiTietDH] [int] IDENTITY(1,1) NOT NULL,
	[MaDH] [int] NOT NULL,
	[MaThuoc] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonGia] [float] NOT NULL,
	[ThanhTien] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChiTietDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chitietphieunhap]    Script Date: 12/1/2023 1:01:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chitietphieunhap](
	[MaChiTietPN] [int] IDENTITY(1,1) NOT NULL,
	[MaPN] [int] NOT NULL,
	[MaThuoc] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonGia] [float] NOT NULL,
	[ThanhTien] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChiTietPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[diemkhachhang]    Script Date: 12/1/2023 1:01:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[diemkhachhang](
	[MaBangDiem] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [int] NOT NULL,
	[DiemTichLuy] [int] NOT NULL,
	[DiemDaSuDung] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBangDiem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[doituong]    Script Date: 12/1/2023 1:01:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[doituong](
	[MaDT] [int] IDENTITY(1,1) NOT NULL,
	[TenDT] [nvarchar](20) NOT NULL,
	[TrangThai] [tinyint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[donhang]    Script Date: 12/1/2023 1:01:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[donhang](
	[MaDH] [int] IDENTITY(1,1) NOT NULL,
	[MaNV] [int] NOT NULL,
	[MaKH] [int] NOT NULL,
	[NgayLap] [date] NOT NULL,
	[MaQuyDoi] [int] NULL,
	[TongGia] [float] NOT NULL,
	[ThanhTien] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khachhang]    Script Date: 12/1/2023 1:01:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khachhang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](20) NOT NULL,
	[SDT] [nvarchar](10) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[TrangThai] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nhanvien]    Script Date: 12/1/2023 1:01:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhanvien](
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
	[TenNV] [nvarchar](20) NOT NULL,
	[SDT] [nvarchar](10) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](30) NOT NULL,
	[TrangThai] [tinyint] NULL,
	[TenDangNhap] [nvarchar](20) NULL,
	[MatKhau] [nvarchar](20) NULL,
	[MaQuyen] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[phieugiamgia]    Script Date: 12/1/2023 1:01:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phieugiamgia](
	[MaPhieuGiam] [int] IDENTITY(1,1) NOT NULL,
	[MoTaPG] [nvarchar](20) NOT NULL,
	[SoDiemQuyDoi] [int] NOT NULL,
	[PhanTramGiam] [int] NOT NULL,
	[MaQuyDoi] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhieuGiam] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[phieunhap]    Script Date: 12/1/2023 1:01:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phieunhap](
	[MaPN] [int] IDENTITY(1,1) NOT NULL,
	[MaNV] [int] NOT NULL,
	[NgayLap] [date] NOT NULL,
	[TongTien] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[quydoidiem]    Script Date: 12/1/2023 1:01:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[quydoidiem](
	[MaQuyDoi] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [int] NOT NULL,
	[NgayQuyDoi] [date] NOT NULL,
	[DaSuDung] [tinyint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaQuyDoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[quyen]    Script Date: 12/1/2023 1:01:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[quyen](
	[MaQuyen] [int] IDENTITY(1,1) NOT NULL,
	[TenQuyen] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[thuoc]    Script Date: 12/1/2023 1:01:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[thuoc](
	[MaThuoc] [int] IDENTITY(1,1) NOT NULL,
	[TenThuoc] [nvarchar](200) NULL,
	[MaDoiTuong] [int] NOT NULL,
	[GiaThuoc] [float] NOT NULL,
	[AnhThuoc] [nvarchar](20) NOT NULL,
	[TrangThai] [int] NOT NULL,
	[MaXuatXu] [int] NOT NULL,
	[SoLuong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaThuoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[xuatxu]    Script Date: 12/1/2023 1:01:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xuatxu](
	[MaXuatXu] [int] IDENTITY(1,1) NOT NULL,
	[TenXuatXu] [nvarchar](20) NOT NULL,
	[TrangThai] [tinyint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaXuatXu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[chitietdonhang] ON 

INSERT [dbo].[chitietdonhang] ([MaChiTietDH], [MaDH], [MaThuoc], [SoLuong], [DonGia], [ThanhTien]) VALUES (1, 1, 1, 2, 105000, 210000)
INSERT [dbo].[chitietdonhang] ([MaChiTietDH], [MaDH], [MaThuoc], [SoLuong], [DonGia], [ThanhTien]) VALUES (2, 2, 2, 3, 580800, 1742400)
INSERT [dbo].[chitietdonhang] ([MaChiTietDH], [MaDH], [MaThuoc], [SoLuong], [DonGia], [ThanhTien]) VALUES (3, 3, 6, 1, 195600, 195600)
INSERT [dbo].[chitietdonhang] ([MaChiTietDH], [MaDH], [MaThuoc], [SoLuong], [DonGia], [ThanhTien]) VALUES (4, 4, 182, 6, 147600, 885600)
INSERT [dbo].[chitietdonhang] ([MaChiTietDH], [MaDH], [MaThuoc], [SoLuong], [DonGia], [ThanhTien]) VALUES (5, 5, 2, 4, 580800, 2323200)
INSERT [dbo].[chitietdonhang] ([MaChiTietDH], [MaDH], [MaThuoc], [SoLuong], [DonGia], [ThanhTien]) VALUES (6, 6, 2, 10, 580800, 5808000)
SET IDENTITY_INSERT [dbo].[chitietdonhang] OFF
GO
SET IDENTITY_INSERT [dbo].[chitietphieunhap] ON 

INSERT [dbo].[chitietphieunhap] ([MaChiTietPN], [MaPN], [MaThuoc], [SoLuong], [DonGia], [ThanhTien]) VALUES (1, 1, 1, 5, 105000, 525000)
INSERT [dbo].[chitietphieunhap] ([MaChiTietPN], [MaPN], [MaThuoc], [SoLuong], [DonGia], [ThanhTien]) VALUES (2, 2, 182, 6, 123000, 738000)
INSERT [dbo].[chitietphieunhap] ([MaChiTietPN], [MaPN], [MaThuoc], [SoLuong], [DonGia], [ThanhTien]) VALUES (3, 3, 182, 5, 123000, 615000)
SET IDENTITY_INSERT [dbo].[chitietphieunhap] OFF
GO
SET IDENTITY_INSERT [dbo].[diemkhachhang] ON 

INSERT [dbo].[diemkhachhang] ([MaBangDiem], [MaKH], [DiemTichLuy], [DiemDaSuDung]) VALUES (1, 2, 554, 0)
INSERT [dbo].[diemkhachhang] ([MaBangDiem], [MaKH], [DiemTichLuy], [DiemDaSuDung]) VALUES (2, 3, 13, 0)
INSERT [dbo].[diemkhachhang] ([MaBangDiem], [MaKH], [DiemTichLuy], [DiemDaSuDung]) VALUES (3, 4, 0, 0)
INSERT [dbo].[diemkhachhang] ([MaBangDiem], [MaKH], [DiemTichLuy], [DiemDaSuDung]) VALUES (4, 5, 0, 0)
INSERT [dbo].[diemkhachhang] ([MaBangDiem], [MaKH], [DiemTichLuy], [DiemDaSuDung]) VALUES (5, 6, 0, 0)
INSERT [dbo].[diemkhachhang] ([MaBangDiem], [MaKH], [DiemTichLuy], [DiemDaSuDung]) VALUES (6, 7, 0, 0)
INSERT [dbo].[diemkhachhang] ([MaBangDiem], [MaKH], [DiemTichLuy], [DiemDaSuDung]) VALUES (7, 8, 0, 0)
INSERT [dbo].[diemkhachhang] ([MaBangDiem], [MaKH], [DiemTichLuy], [DiemDaSuDung]) VALUES (8, 9, 0, 0)
INSERT [dbo].[diemkhachhang] ([MaBangDiem], [MaKH], [DiemTichLuy], [DiemDaSuDung]) VALUES (9, 10, 0, 0)
INSERT [dbo].[diemkhachhang] ([MaBangDiem], [MaKH], [DiemTichLuy], [DiemDaSuDung]) VALUES (10, 11, 0, 0)
INSERT [dbo].[diemkhachhang] ([MaBangDiem], [MaKH], [DiemTichLuy], [DiemDaSuDung]) VALUES (11, 12, 0, 0)
INSERT [dbo].[diemkhachhang] ([MaBangDiem], [MaKH], [DiemTichLuy], [DiemDaSuDung]) VALUES (12, 13, 0, 0)
INSERT [dbo].[diemkhachhang] ([MaBangDiem], [MaKH], [DiemTichLuy], [DiemDaSuDung]) VALUES (13, 14, 0, 0)
INSERT [dbo].[diemkhachhang] ([MaBangDiem], [MaKH], [DiemTichLuy], [DiemDaSuDung]) VALUES (14, 15, 0, 0)
INSERT [dbo].[diemkhachhang] ([MaBangDiem], [MaKH], [DiemTichLuy], [DiemDaSuDung]) VALUES (15, 16, 0, 0)
INSERT [dbo].[diemkhachhang] ([MaBangDiem], [MaKH], [DiemTichLuy], [DiemDaSuDung]) VALUES (16, 17, 0, 0)
INSERT [dbo].[diemkhachhang] ([MaBangDiem], [MaKH], [DiemTichLuy], [DiemDaSuDung]) VALUES (17, 18, 0, 0)
INSERT [dbo].[diemkhachhang] ([MaBangDiem], [MaKH], [DiemTichLuy], [DiemDaSuDung]) VALUES (18, 19, 0, 0)
INSERT [dbo].[diemkhachhang] ([MaBangDiem], [MaKH], [DiemTichLuy], [DiemDaSuDung]) VALUES (19, 20, 0, 0)
INSERT [dbo].[diemkhachhang] ([MaBangDiem], [MaKH], [DiemTichLuy], [DiemDaSuDung]) VALUES (20, 22, 0, 0)
SET IDENTITY_INSERT [dbo].[diemkhachhang] OFF
GO
SET IDENTITY_INSERT [dbo].[doituong] ON 

INSERT [dbo].[doituong] ([MaDT], [TenDT], [TrangThai]) VALUES (1, N'Trẻ em', 1)
INSERT [dbo].[doituong] ([MaDT], [TenDT], [TrangThai]) VALUES (2, N'Người lớn', 1)
INSERT [dbo].[doituong] ([MaDT], [TenDT], [TrangThai]) VALUES (3, N'Người già', 1)
SET IDENTITY_INSERT [dbo].[doituong] OFF
GO
SET IDENTITY_INSERT [dbo].[donhang] ON 

INSERT [dbo].[donhang] ([MaDH], [MaNV], [MaKH], [NgayLap], [MaQuyDoi], [TongGia], [ThanhTien]) VALUES (1, 2, 3, CAST(N'2023-01-01' AS Date), NULL, 210000, 210000)
INSERT [dbo].[donhang] ([MaDH], [MaNV], [MaKH], [NgayLap], [MaQuyDoi], [TongGia], [ThanhTien]) VALUES (2, 1, 3, CAST(N'2023-11-30' AS Date), NULL, 1742400, 1742400)
INSERT [dbo].[donhang] ([MaDH], [MaNV], [MaKH], [NgayLap], [MaQuyDoi], [TongGia], [ThanhTien]) VALUES (3, 1, 3, CAST(N'2023-11-30' AS Date), 1, 195600, 185820)
INSERT [dbo].[donhang] ([MaDH], [MaNV], [MaKH], [NgayLap], [MaQuyDoi], [TongGia], [ThanhTien]) VALUES (4, 8, 1, CAST(N'2023-11-30' AS Date), NULL, 885600, 885600)
INSERT [dbo].[donhang] ([MaDH], [MaNV], [MaKH], [NgayLap], [MaQuyDoi], [TongGia], [ThanhTien]) VALUES (5, 9, 2, CAST(N'2023-12-01' AS Date), NULL, 2323200, 2323200)
INSERT [dbo].[donhang] ([MaDH], [MaNV], [MaKH], [NgayLap], [MaQuyDoi], [TongGia], [ThanhTien]) VALUES (6, 9, 2, CAST(N'2023-12-01' AS Date), 3, 5808000, 5227200)
SET IDENTITY_INSERT [dbo].[donhang] OFF
GO
SET IDENTITY_INSERT [dbo].[khachhang] ON 

INSERT [dbo].[khachhang] ([MaKH], [TenKH], [SDT], [NgaySinh], [TrangThai]) VALUES (1, N'Khách vãng lai', N'', CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[khachhang] ([MaKH], [TenKH], [SDT], [NgaySinh], [TrangThai]) VALUES (2, N'Cao Thị T', N'0912345678', CAST(N'1995-05-09' AS Date), 1)
INSERT [dbo].[khachhang] ([MaKH], [TenKH], [SDT], [NgaySinh], [TrangThai]) VALUES (3, N'Nguyễn Văn H', N'0987654321', CAST(N'1987-12-10' AS Date), 1)
INSERT [dbo].[khachhang] ([MaKH], [TenKH], [SDT], [NgaySinh], [TrangThai]) VALUES (4, N'Lê Thị D', N'0987654322', CAST(N'1998-06-20' AS Date), 1)
INSERT [dbo].[khachhang] ([MaKH], [TenKH], [SDT], [NgaySinh], [TrangThai]) VALUES (5, N'Ngô Sa T', N'0909876543', CAST(N'1990-03-25' AS Date), 1)
INSERT [dbo].[khachhang] ([MaKH], [TenKH], [SDT], [NgaySinh], [TrangThai]) VALUES (6, N'Trần Văn F', N'0912345679', CAST(N'1993-09-07' AS Date), 1)
INSERT [dbo].[khachhang] ([MaKH], [TenKH], [SDT], [NgaySinh], [TrangThai]) VALUES (7, N'Nguyễn Văn G', N'0901234568', CAST(N'1992-04-30' AS Date), 1)
INSERT [dbo].[khachhang] ([MaKH], [TenKH], [SDT], [NgaySinh], [TrangThai]) VALUES (8, N'Lê Văn H', N'0987654323', CAST(N'2005-11-11' AS Date), 1)
INSERT [dbo].[khachhang] ([MaKH], [TenKH], [SDT], [NgaySinh], [TrangThai]) VALUES (9, N'Phạm Thị Y', N'0987654324', CAST(N'2003-07-03' AS Date), 1)
INSERT [dbo].[khachhang] ([MaKH], [TenKH], [SDT], [NgaySinh], [TrangThai]) VALUES (10, N'Trần Văn K', N'0909876544', CAST(N'1996-02-28' AS Date), 1)
INSERT [dbo].[khachhang] ([MaKH], [TenKH], [SDT], [NgaySinh], [TrangThai]) VALUES (11, N'Nguyễn Văn L', N'0912345680', CAST(N'1994-08-14' AS Date), 1)
INSERT [dbo].[khachhang] ([MaKH], [TenKH], [SDT], [NgaySinh], [TrangThai]) VALUES (12, N'Lê Văn M', N'0901234569', CAST(N'1999-04-22' AS Date), 1)
INSERT [dbo].[khachhang] ([MaKH], [TenKH], [SDT], [NgaySinh], [TrangThai]) VALUES (13, N'Hồ Thị N', N'0987654325', CAST(N'1985-10-18' AS Date), 1)
INSERT [dbo].[khachhang] ([MaKH], [TenKH], [SDT], [NgaySinh], [TrangThai]) VALUES (14, N'Phạm Văn P', N'0912345681', CAST(N'1997-12-29' AS Date), 1)
INSERT [dbo].[khachhang] ([MaKH], [TenKH], [SDT], [NgaySinh], [TrangThai]) VALUES (15, N'Trần Văn Q', N'0909876545', CAST(N'2001-03-05' AS Date), 1)
INSERT [dbo].[khachhang] ([MaKH], [TenKH], [SDT], [NgaySinh], [TrangThai]) VALUES (16, N'Nguyễn Văn R', N'0987654326', CAST(N'1991-09-13' AS Date), 1)
INSERT [dbo].[khachhang] ([MaKH], [TenKH], [SDT], [NgaySinh], [TrangThai]) VALUES (17, N'Lê Văn S', N'0901234570', CAST(N'1998-05-24' AS Date), 1)
INSERT [dbo].[khachhang] ([MaKH], [TenKH], [SDT], [NgaySinh], [TrangThai]) VALUES (18, N'Hồ Văn T', N'0909876546', CAST(N'1989-07-08' AS Date), 1)
INSERT [dbo].[khachhang] ([MaKH], [TenKH], [SDT], [NgaySinh], [TrangThai]) VALUES (19, N'Phạm Thị U', N'0912345682', CAST(N'2004-06-02' AS Date), 1)
INSERT [dbo].[khachhang] ([MaKH], [TenKH], [SDT], [NgaySinh], [TrangThai]) VALUES (20, N'Nguyễn Văn ', N'0987654327', CAST(N'1993-01-12' AS Date), 0)
INSERT [dbo].[khachhang] ([MaKH], [TenKH], [SDT], [NgaySinh], [TrangThai]) VALUES (22, N'Test', N'0912312312', CAST(N'2023-11-23' AS Date), 1)
SET IDENTITY_INSERT [dbo].[khachhang] OFF
GO
SET IDENTITY_INSERT [dbo].[nhanvien] ON 

INSERT [dbo].[nhanvien] ([MaNV], [TenNV], [SDT], [DiaChi], [Email], [TrangThai], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (1, N'Hello', N'0912345778', N'ád', N'hello@gmail.com', 1, N'adminTest', N'123456', 2)
INSERT [dbo].[nhanvien] ([MaNV], [TenNV], [SDT], [DiaChi], [Email], [TrangThai], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (2, N'Trần Thị B', N'0912345678', N'456 Đư?ng XYZ, Qu?n 2', N'tranthib@email.com', 1, N'tranthib', N'123456', 3)
INSERT [dbo].[nhanvien] ([MaNV], [TenNV], [SDT], [DiaChi], [Email], [TrangThai], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (3, N'Hồ Văn C', N'0987654321', N'789 Đư?ng PQR, Qu?n 3', N'hovanc@email.com', 0, N'hovanc', N'123456', 2)
INSERT [dbo].[nhanvien] ([MaNV], [TenNV], [SDT], [DiaChi], [Email], [TrangThai], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (4, N'Phạm Văn E', N'0909876543', N'321 Đư?ng LMN, Qu?n 5', N'phamvane@email.com', 1, N'phamvane', N'123456', 2)
INSERT [dbo].[nhanvien] ([MaNV], [TenNV], [SDT], [DiaChi], [Email], [TrangThai], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (5, N'Tran abcd', N'0912345674', N'123 abc', N'abc@gmail.com', 1, N'quanly', N'123456', 3)
INSERT [dbo].[nhanvien] ([MaNV], [TenNV], [SDT], [DiaChi], [Email], [TrangThai], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (8, N'Trần Vĩ Hào', N'0912345678', N'123 abc', N'tranvihao40@gmail.com', 1, N'admin', N'123456', 1)
INSERT [dbo].[nhanvien] ([MaNV], [TenNV], [SDT], [DiaChi], [Email], [TrangThai], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (9, N'Nhan vien', N'0912323232', N'123 abc', N'tranvihao18@gmail.com', 1, N'nhanvien', N'123456', 2)
SET IDENTITY_INSERT [dbo].[nhanvien] OFF
GO
SET IDENTITY_INSERT [dbo].[phieugiamgia] ON 

INSERT [dbo].[phieugiamgia] ([MaPhieuGiam], [MoTaPG], [SoDiemQuyDoi], [PhanTramGiam], [MaQuyDoi]) VALUES (1, N'Phiếu giảm 5 %', 100, 5, 1)
INSERT [dbo].[phieugiamgia] ([MaPhieuGiam], [MoTaPG], [SoDiemQuyDoi], [PhanTramGiam], [MaQuyDoi]) VALUES (2, N'Phiếu giảm 5 %', 100, 5, 2)
INSERT [dbo].[phieugiamgia] ([MaPhieuGiam], [MoTaPG], [SoDiemQuyDoi], [PhanTramGiam], [MaQuyDoi]) VALUES (3, N'Phiếu giảm 10 %', 200, 10, 3)
SET IDENTITY_INSERT [dbo].[phieugiamgia] OFF
GO
SET IDENTITY_INSERT [dbo].[phieunhap] ON 

INSERT [dbo].[phieunhap] ([MaPN], [MaNV], [NgayLap], [TongTien]) VALUES (1, 1, CAST(N'2023-11-30' AS Date), 525000)
INSERT [dbo].[phieunhap] ([MaPN], [MaNV], [NgayLap], [TongTien]) VALUES (2, 8, CAST(N'2023-11-30' AS Date), 738000)
INSERT [dbo].[phieunhap] ([MaPN], [MaNV], [NgayLap], [TongTien]) VALUES (3, 5, CAST(N'2023-12-01' AS Date), 615000)
SET IDENTITY_INSERT [dbo].[phieunhap] OFF
GO
SET IDENTITY_INSERT [dbo].[quydoidiem] ON 

INSERT [dbo].[quydoidiem] ([MaQuyDoi], [MaKH], [NgayQuyDoi], [DaSuDung]) VALUES (1, 3, CAST(N'2023-11-30' AS Date), 1)
INSERT [dbo].[quydoidiem] ([MaQuyDoi], [MaKH], [NgayQuyDoi], [DaSuDung]) VALUES (2, 3, CAST(N'2023-12-01' AS Date), 0)
INSERT [dbo].[quydoidiem] ([MaQuyDoi], [MaKH], [NgayQuyDoi], [DaSuDung]) VALUES (3, 2, CAST(N'2023-12-01' AS Date), 1)
SET IDENTITY_INSERT [dbo].[quydoidiem] OFF
GO
SET IDENTITY_INSERT [dbo].[quyen] ON 

INSERT [dbo].[quyen] ([MaQuyen], [TenQuyen]) VALUES (1, N'Admin')
INSERT [dbo].[quyen] ([MaQuyen], [TenQuyen]) VALUES (2, N'Nhân viên')
INSERT [dbo].[quyen] ([MaQuyen], [TenQuyen]) VALUES (3, N'Quản lý')
SET IDENTITY_INSERT [dbo].[quyen] OFF
GO
SET IDENTITY_INSERT [dbo].[thuoc] ON 

INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (1, N'Viên uống S DiCanxi USV Pharma hỗ trợ bổ sung canxi (30 viên)', 3, 105000, N'1.jpg', 1, 3, 5)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (2, N'Cốm Pre-Vipteen 3 hỗ trợ bổ sung calci và các dưỡng chất thiết yếu (20 gói x 2g)', 3, 484000, N'2.jpg', 1, 2, 13)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (3, N'Miếng dán hạ nhiệt', 2, 12000, N'3.jpg', 1, 7, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (4, N'Viên uống Anica Phytextra bổ sung canxi và vitamin D3 (60 viên)', 3, 568000, N'4.jpg', 1, 1, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (5, N'Dung dịch Pediakid Vitamin D3 hỗ trợ duy trì phát triển xương và răng ở trẻ nhỏ (20ml)', 1, 370000, N'images/5.jpg', 1, 3, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (6, N'Cốm Canxi Baby New G&P France dùng cho trẻ còi xương, suy dinh dưỡng (30 túi x 3g)', 3, 163000, N'images/6.jpg', 1, 5, 47)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (7, N'Canxi Vitamin D3 KingPhar bổ sung canxi, vitamin D3 cho cơ thể (30 ống x 5ml)', 1, 115000, N'images/7.jpg', 1, 4, 48)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (8, N'Viên uống Calci K2 Dao Nordic Health bổ sung canxi giúp xương chắc khỏe (60 viên)', 3, 431000, N'images/8.jpg', 1, 1, 49)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (9, N'Viên uống Vipteen Vinh Gia hỗ trợ tăng chiều cao cho trẻ (20 viên)', 2, 589000, N'images/9.jpg', 1, 3, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (10, N'Viên uống Nubest Tall bổ sung nano canxi và các dưỡng chất (60 viên)', 2, 338000, N'images/10.jpg', 1, 1, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (11, N'Siro Special Kid Calcium Vitamine D Eric Favre vị dâu hỗ trợ phát triển chiều cao ở trẻ nhỏ (125ml)', 2, 461000, N'images/11.jpg', 1, 4, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (12, N'Siro Brauer Baby Kids hỗ trợ bổ sung canxi, kẽm, magie và vitamin D3 cho bé (200ml)', 3, 117000, N'images/12.jpg', 1, 8, 49)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (13, N'Miếng dán sưởi ấm Thiên Thanh giữ nhiệt 12 - 16 giờ (10 miếng x 10 cm x 13.3 cm)', 2, 449000, N'images/13.jpg', 1, 1, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (14, N'Miếng dán hạ sốt Lion Hiepita For Baby cho trẻ 0-2 tuổi (6 gói x 2 miếng)', 1, 455000, N'images/14.jpg', 1, 5, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (15, N'Miếng dán nhiệt Starbalm Aqua Gel Heat Patch hỗ trợ giảm đau nhanh, kháng viêm (4 miếng)', 2, 575000, N'images/15.jpg', 1, 5, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (16, N'Viên uống Xoang Bach Phuc Lohha hỗ trợ giảm triệu chứng viêm xoang (20 viên)', 2, 148000, N'images/16.jpg', 1, 7, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (17, N'Siro Ginkid HoCam New hỗ trợ bổ phế, giảm ho (80ml)', 3, 485000, N'images/17.jpg', 1, 6, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (18, N'Dung dịch Mật Ong Chanh Đào VIP New Star hỗ trợ bổ khí, giảm ho, đau họng (100ml)', 2, 383000, N'images/18.jpg', 1, 8, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (19, N'Dung dịch xịt Propolis Mint & Honey Tracybee hỗ trợ giảm ho, viêm họng (30ml)', 2, 251000, N'images/19.jpg', 1, 3, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (20, N'Miếng dán hạ sốt Sakura Tanaphar hiệu quả đến 10h', 2, 141000, N'images/20.jpg', 1, 2, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (21, N'Miếng dán hạ sốt Bye Bye Fever Hisamitsu hỗ trợ hạ nhiệt nhanh cho trẻ (16 miếng)', 1, 249000, N'images/21.jpg', 1, 5, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (22, N'Miếng dán hạ sốt Lion Hiepita For Child hỗ trợ giảm cơn sốt khó chịu (8 gói x 2 miếng)', 2, 327000, N'images/22.jpg', 1, 6, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (23, N'Miếng dán hạ sốt Bye Bye-Fever Hisamitsu làm mát lạnh nhanh và mạnh (6 miếng)', 1, 643000, N'images/23.jpg', 1, 7, 47)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (24, N'Cao dán Chỉ Thống Cao giảm đau nhức cơ thể, đau dây thần kinh (20 gói x 5 miếng)', 1, 83000, N'images/24.jpg', 1, 7, 47)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (25, N'Cao dán giảm đau Fujisip Thiên Ân hỗ trợ giảm các cơn đau nhức (10 miếng - 5cm x 7,5cm)', 3, 195000, N'images/25.jpg', 1, 8, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (26, N'Miếng dán hạ sốt Aikido Gel Cool Patch hỗ trợ chườm mát tại nơi dán (6 miếng)', 2, 447000, N'images/26.jpg', 1, 1, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (27, N'Cao dán Fujisip Cool Thiên Ân hỗ trợ dịu cơn đau vai, lưng, khớp, cơ (2 miếng x 10 túi)', 1, 228000, N'images/27.jpg', 1, 8, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (28, N'Siro Nopanho Kingphar giúp loãng đờm, giảm đau rát họng do ho kéo dài (125ml)', 1, 295000, N'images/28.jpg', 1, 2, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (29, N'Viên uống Thanh Phế Kim Thiên Bình giúp bổ phế, hỗ trợ giảm ho, tiêu đờm (30 viên)', 3, 366000, N'images/29.jpg', 1, 5, 49)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (30, N'Siro Cường Phế Lotus giúp tăng cường chức năng hô hấp (10 ống x 10ml)', 3, 145000, N'images/30.jpg', 1, 6, 49)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (31, N'Siro Ho Ong Vàng Herbal5 Thảo Dược Việt hỗ trợ làm ấm, sạch họng, giảm ho (100ml)', 1, 362000, N'images/31.jpg', 1, 8, 48)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (32, N'Viên uống Agera Extra Kingphar hỗ trợ giảm ngạt mũi, hắt hơi và sổ mũi, nhức đầu do viêm mũi dị ứng, viêm xoang (60 viên)', 3, 328000, N'images/32.jpg', 1, 1, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (33, N'Cao Niệm Từ Am Hiếu Tử Xuyên Bối Tỳ Bà Cao hỗ trợ giảm ho, nhuận phổi (300ml)', 2, 75000, N'images/33.jpg', 1, 4, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (34, N'Miếng dán giữ nhiệt Salonpas Jikabari Hisamitsu hỗ trợ làm ấm cơ thể (8 miếng)', 2, 402000, N'images/34.jpg', 1, 5, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (35, N'Miếng dán nhiệt Starbalm Aqua Gel Heat Patch hỗ trợ giảm đau nhanh, kháng viêm (4 miếng)', 1, 521000, N'images/35.jpg', 1, 5, 48)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (36, N'Cao dán giảm đau Fujisip Thiên Ân hỗ trợ giảm các cơn đau nhức (10 miếng - 5cm x 7,5cm)', 1, 326000, N'images/36.jpg', 1, 8, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (37, N'Siro bổ phế Bối Mẫu Forte Mom And Baby Tất Thành hỗ trợ giảm ho, đau rát họng, khản tiếng (125ml)', 2, 116000, N'images/37.jpg', 1, 4, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (38, N'Siro Nopanho Kingphar giúp loãng đờm, giảm đau rát họng do ho kéo dài (125ml)', 3, 512000, N'images/38.jpg', 1, 5, 48)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (39, N'Siro Cường Phế Lotus giúp tăng cường chức năng hô hấp (10 ống x 10ml)', 2, 490000, N'images/39.jpg', 1, 5, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (40, N'Dung dịch xịt Propolis Mint & Honey Tracybee hỗ trợ giảm ho, viêm họng (30ml)', 2, 301000, N'images/40.jpg', 1, 2, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (41, N'Viên uống Thanh Phế Kim Thiên Bình giúp bổ phế, hỗ trợ giảm ho, tiêu đờm (30 viên)', 2, 180000, N'images/41.jpg', 1, 4, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (42, N'Miếng dán hạ sốt Lion Hiepita For Baby cho trẻ 0-2 tuổi (6 gói x 2 miếng)', 1, 190000, N'images/42.jpg', 1, 7, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (43, N'Siro Ginkid HoCam New hỗ trợ bổ phế, giảm ho (80ml)', 2, 361000, N'images/43.jpg', 1, 8, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (44, N'Cao dán Chỉ Thống Cao giảm đau nhức cơ thể, đau dây thần kinh (20 gói x 5 miếng)', 1, 83000, N'images/44.jpg', 1, 4, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (45, N'Viên uống Agera Extra Kingphar hỗ trợ giảm ngạt mũi, hắt hơi và sổ mũi, nhức đầu do viêm mũi dị ứng, viêm xoang (60 viên)', 1, 541000, N'images/45.jpg', 1, 1, 49)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (46, N'Siro Ho Ong Vàng Herbal5 Thảo Dược Việt hỗ trợ làm ấm, sạch họng, giảm ho (100ml)', 3, 612000, N'images/46.jpg', 1, 7, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (47, N'Cao Niệm Từ Am Hiếu Tử Xuyên Bối Tỳ Bà Cao hỗ trợ giảm ho, nhuận phổi (300ml)', 2, 603000, N'images/47.jpg', 1, 8, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (48, N'Viên uống Xoang Bach Phuc Lohha hỗ trợ giảm triệu chứng viêm xoang (20 viên)', 2, 146000, N'images/48.jpg', 1, 8, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (49, N'Cao dán Fujisip Cool Thiên Ân hỗ trợ dịu cơn đau vai, lưng, khớp, cơ (2 miếng x 10 túi)', 3, 587000, N'images/49.jpg', 1, 8, 46)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (50, N'Miếng dán hạ sốt Aikido Gel Cool Patch hỗ trợ chườm mát tại nơi dán (6 miếng)', 1, 281000, N'images/50.jpg', 1, 3, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (51, N'Miếng dán sưởi ấm Thiên Thanh giữ nhiệt 12 - 16 giờ (10 miếng x 10 cm x 13.3 cm)', 2, 155000, N'images/51.jpg', 1, 7, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (52, N'Miếng dán hạ sốt Lion Hiepita For Child hỗ trợ giảm cơn sốt khó chịu (8 gói x 2 miếng)', 1, 196000, N'images/52.jpg', 1, 3, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (53, N'Miếng dán hạ sốt Bye Bye Fever Hisamitsu hỗ trợ hạ nhiệt nhanh cho trẻ (16 miếng)', 1, 601000, N'images/53.jpg', 1, 3, 49)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (54, N'Miếng dán hạ sốt Bye Bye-Fever Hisamitsu làm mát lạnh nhanh và mạnh (6 miếng)', 3, 434000, N'images/54.jpg', 1, 5, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (55, N'Miếng dán giữ nhiệt Salonpas Jikabari Hisamitsu hỗ trợ làm ấm cơ thể (8 miếng)', 3, 222000, N'images/55.jpg', 1, 8, 49)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (56, N'Dung dịch Mật Ong Chanh Đào VIP New Star hỗ trợ bổ khí, giảm ho, đau họng (100ml)', 3, 69000, N'images/56.jpg', 1, 4, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (57, N'Siro Hobezut Vinacare Pharma hỗ trợ giảm các triệu chứng ho, cảm (110ml)', 2, 63000, N'images/57.jpg', 1, 1, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (58, N'Miếng dán hạ sốt Sakura Tanaphar hiệu quả đến 10h', 1, 327000, N'images/58.jpg', 1, 4, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (59, N'Siro Hobezut Vinacare Pharma hỗ trợ giảm các triệu chứng ho, cảm (110ml)', 2, 69000, N'images/59.jpg', 1, 2, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (60, N'Miếng dán hạ sốt Bye Bye Fever Hisamitsu hỗ trợ hạ nhiệt nhanh cho trẻ (16 miếng)', 3, 144000, N'images/60.jpg', 1, 1, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (61, N'Miếng dán nhiệt Starbalm Aqua Gel Heat Patch hỗ trợ giảm đau nhanh, kháng viêm (4 miếng)', 2, 368000, N'images/61.jpg', 1, 2, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (62, N'Cao dán Chỉ Thống Cao giảm đau nhức cơ thể, đau dây thần kinh (20 gói x 5 miếng)', 1, 252000, N'images/62.jpg', 1, 1, 48)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (63, N'Miếng dán hạ sốt Bye Bye-Fever Hisamitsu làm mát lạnh nhanh và mạnh (6 miếng)', 2, 640000, N'images/63.jpg', 1, 7, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (64, N'Miếng dán giữ nhiệt Salonpas Jikabari Hisamitsu hỗ trợ làm ấm cơ thể (8 miếng)', 3, 403000, N'images/64.jpg', 1, 7, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (65, N'Viên uống Thanh Phế Kim Thiên Bình giúp bổ phế, hỗ trợ giảm ho, tiêu đờm (30 viên)', 1, 134000, N'images/65.jpg', 1, 1, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (66, N'Viên uống Agera Extra Kingphar hỗ trợ giảm ngạt mũi, hắt hơi và sổ mũi, nhức đầu do viêm mũi dị ứng, viêm xoang (60 viên)', 2, 192000, N'images/66.jpg', 1, 8, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (67, N'Dung dịch xịt Propolis Mint & Honey Tracybee hỗ trợ giảm ho, viêm họng (30ml)', 1, 553000, N'images/67.jpg', 1, 6, 49)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (68, N'Miếng dán hạ sốt Lion Hiepita For Baby cho trẻ 0-2 tuổi (6 gói x 2 miếng)', 3, 560000, N'images/68.jpg', 1, 1, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (69, N'Siro Cường Phế Lotus giúp tăng cường chức năng hô hấp (10 ống x 10ml)', 3, 607000, N'images/69.jpg', 1, 6, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (70, N'Siro Hobezut Vinacare Pharma hỗ trợ giảm các triệu chứng ho, cảm (110ml)', 2, 369000, N'images/70.jpg', 1, 6, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (71, N'Siro Nopanho Kingphar giúp loãng đờm, giảm đau rát họng do ho kéo dài (125ml)', 3, 171000, N'images/71.jpg', 1, 4, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (72, N'Miếng dán nhiệt Starbalm Aqua Gel Heat Patch hỗ trợ giảm đau nhanh, kháng viêm (4 miếng)', 2, 404000, N'images/72.jpg', 1, 5, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (73, N'Miếng dán hạ sốt Lion Hiepita For Baby cho trẻ 0-2 tuổi (6 gói x 2 miếng)', 3, 293000, N'images/73.jpg', 1, 7, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (74, N'Siro Nopanho Kingphar giúp loãng đờm, giảm đau rát họng do ho kéo dài (125ml)', 2, 123000, N'images/74.jpg', 1, 4, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (75, N'Viên uống Xoang Bach Phuc Lohha hỗ trợ giảm triệu chứng viêm xoang (20 viên)', 1, 398000, N'images/75.jpg', 1, 5, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (76, N'Dung dịch Mật Ong Chanh Đào VIP New Star hỗ trợ bổ khí, giảm ho, đau họng (100ml)', 3, 421000, N'images/76.jpg', 1, 8, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (77, N'Dung dịch Mật Ong Chanh Đào VIP New Star hỗ trợ bổ khí, giảm ho, đau họng (100ml)', 1, 364000, N'images/77.jpg', 1, 4, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (78, N'Viên uống Thanh Phế Kim Thiên Bình giúp bổ phế, hỗ trợ giảm ho, tiêu đờm (30 viên)', 1, 237000, N'images/78.jpg', 1, 6, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (79, N'Siro bổ phế Bối Mẫu Forte Mom And Baby Tất Thành hỗ trợ giảm ho, đau rát họng, khản tiếng (125ml)', 3, 107000, N'images/79.jpg', 1, 6, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (80, N'Miếng dán giữ nhiệt Salonpas Jikabari Hisamitsu hỗ trợ làm ấm cơ thể (8 miếng)', 1, 504000, N'images/80.jpg', 1, 5, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (81, N'Siro Ho Ong Vàng Herbal5 Thảo Dược Việt hỗ trợ làm ấm, sạch họng, giảm ho (100ml)', 2, 457000, N'images/81.jpg', 1, 4, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (82, N'Siro Hobezut Vinacare Pharma hỗ trợ giảm các triệu chứng ho, cảm (110ml)', 2, 138000, N'images/82.jpg', 1, 5, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (83, N'Miếng dán hạ sốt Sakura Tanaphar hiệu quả đến 10h', 1, 147000, N'images/83.jpg', 1, 7, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (84, N'Miếng dán hạ sốt Lion Hiepita For Child hỗ trợ giảm cơn sốt khó chịu (8 gói x 2 miếng)', 3, 390000, N'images/84.jpg', 1, 2, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (85, N'Cao Niệm Từ Am Hiếu Tử Xuyên Bối Tỳ Bà Cao hỗ trợ giảm ho, nhuận phổi (300ml)', 1, 280000, N'images/85.jpg', 1, 8, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (86, N'Miếng dán sưởi ấm Thiên Thanh giữ nhiệt 12 - 16 giờ (10 miếng x 10 cm x 13.3 cm)', 2, 455000, N'images/86.jpg', 1, 5, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (87, N'Siro bổ phế Bối Mẫu Forte Mom And Baby Tất Thành hỗ trợ giảm ho, đau rát họng, khản tiếng (125ml)', 1, 581000, N'images/87.jpg', 1, 6, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (88, N'Viên uống Agera Extra Kingphar hỗ trợ giảm ngạt mũi, hắt hơi và sổ mũi, nhức đầu do viêm mũi dị ứng, viêm xoang (60 viên)', 2, 79000, N'images/88.jpg', 1, 5, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (89, N'Dung dịch xịt Propolis Mint & Honey Tracybee hỗ trợ giảm ho, viêm họng (30ml)', 1, 123000, N'images/89.jpg', 1, 5, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (90, N'Miếng dán hạ sốt Lion Hiepita For Child hỗ trợ giảm cơn sốt khó chịu (8 gói x 2 miếng)', 3, 162000, N'images/90.jpg', 1, 7, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (91, N'Siro Ginkid HoCam New hỗ trợ bổ phế, giảm ho (80ml)', 2, 593000, N'images/91.jpg', 1, 3, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (92, N'Miếng dán hạ sốt Aikido Gel Cool Patch hỗ trợ chườm mát tại nơi dán (6 miếng)', 3, 179000, N'images/92.jpg', 1, 8, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (93, N'Miếng dán hạ sốt Aikido Gel Cool Patch hỗ trợ chườm mát tại nơi dán (6 miếng)', 2, 439000, N'images/93.jpg', 1, 5, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (94, N'Siro Ho Ong Vàng Herbal5 Thảo Dược Việt hỗ trợ làm ấm, sạch họng, giảm ho (100ml)', 1, 73000, N'images/94.jpg', 1, 8, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (95, N'Siro Cường Phế Lotus giúp tăng cường chức năng hô hấp (10 ống x 10ml)', 3, 356000, N'images/95.jpg', 1, 7, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (96, N'Siro Ginkid HoCam New hỗ trợ bổ phế, giảm ho (80ml)', 3, 495000, N'images/96.jpg', 1, 1, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (97, N'Cao Niệm Từ Am Hiếu Tử Xuyên Bối Tỳ Bà Cao hỗ trợ giảm ho, nhuận phổi (300ml)', 1, 89000, N'images/97.jpg', 1, 5, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (98, N'Viên uống Xoang Bach Phuc Lohha hỗ trợ giảm triệu chứng viêm xoang (20 viên)', 2, 522000, N'images/98.jpg', 1, 2, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (99, N'Cao dán Fujisip Cool Thiên Ân hỗ trợ dịu cơn đau vai, lưng, khớp, cơ (2 miếng x 10 túi)', 1, 475000, N'images/99.jpg', 1, 5, 50)
GO
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (100, N'Miếng dán hạ sốt Bye Bye Fever Hisamitsu hỗ trợ hạ nhiệt nhanh cho trẻ (16 miếng)', 1, 364000, N'images/100.jpg', 1, 7, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (101, N'Cao dán Chỉ Thống Cao giảm đau nhức cơ thể, đau dây thần kinh (20 gói x 5 miếng)', 3, 569000, N'images/101.jpg', 1, 2, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (102, N'Miếng dán hạ sốt Bye Bye-Fever Hisamitsu làm mát lạnh nhanh và mạnh (6 miếng)', 2, 130000, N'images/102.jpg', 1, 1, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (103, N'Cao dán giảm đau Fujisip Thiên Ân hỗ trợ giảm các cơn đau nhức (10 miếng - 5cm x 7,5cm)', 2, 614000, N'images/103.jpg', 1, 3, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (104, N'Miếng dán hạ sốt Sakura Tanaphar hiệu quả đến 10h', 1, 123000, N'images/104.jpg', 1, 1, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (105, N'Miếng dán sưởi ấm Thiên Thanh giữ nhiệt 12 - 16 giờ (10 miếng x 10 cm x 13.3 cm)', 1, 174000, N'images/105.jpg', 1, 8, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (106, N'Cao dán Fujisip Cool Thiên Ân hỗ trợ dịu cơn đau vai, lưng, khớp, cơ (2 miếng x 10 túi)', 2, 562000, N'images/106.jpg', 1, 1, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (107, N'Cao dán giảm đau Fujisip Thiên Ân hỗ trợ giảm các cơn đau nhức (10 miếng - 5cm x 7,5cm)', 2, 176000, N'images/107.jpg', 1, 4, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (108, N'Siro Nopanho Kingphar giúp loãng đờm, giảm đau rát họng do ho kéo dài (125ml)', 1, 84000, N'images/108.jpg', 1, 3, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (109, N'Siro Ginkid HoCam New hỗ trợ bổ phế, giảm ho (80ml)', 3, 137000, N'images/109.jpg', 1, 1, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (110, N'Viên uống Agera Extra Kingphar hỗ trợ giảm ngạt mũi, hắt hơi và sổ mũi, nhức đầu do viêm mũi dị ứng, viêm xoang (60 viên)', 1, 227000, N'images/110.jpg', 1, 4, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (111, N'Cao Niệm Từ Am Hiếu Tử Xuyên Bối Tỳ Bà Cao hỗ trợ giảm ho, nhuận phổi (300ml)', 1, 436000, N'images/111.jpg', 1, 6, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (112, N'Miếng dán hạ sốt Lion Hiepita For Baby cho trẻ 0-2 tuổi (6 gói x 2 miếng)', 1, 70000, N'images/112.jpg', 1, 4, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (113, N'Miếng dán sưởi ấm Thiên Thanh giữ nhiệt 12 - 16 giờ (10 miếng x 10 cm x 13.3 cm)', 2, 195000, N'images/113.jpg', 1, 5, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (114, N'Miếng dán hạ sốt Lion Hiepita For Child hỗ trợ giảm cơn sốt khó chịu (8 gói x 2 miếng)', 1, 526000, N'images/114.jpg', 1, 8, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (115, N'Siro Ho Ong Vàng Herbal5 Thảo Dược Việt hỗ trợ làm ấm, sạch họng, giảm ho (100ml)', 2, 599000, N'images/115.jpg', 1, 3, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (116, N'Siro Ho Ong Vàng Herbal5 Thảo Dược Việt hỗ trợ làm ấm, sạch họng, giảm ho (100ml)', 2, 487000, N'images/116.jpg', 1, 4, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (117, N'Dung dịch Mật Ong Chanh Đào VIP New Star hỗ trợ bổ khí, giảm ho, đau họng (100ml)', 3, 408000, N'images/117.jpg', 1, 6, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (118, N'Miếng dán hạ sốt Sakura Tanaphar hiệu quả đến 10h', 1, 363000, N'images/118.jpg', 1, 7, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (119, N'Viên uống Xoang Bach Phuc Lohha hỗ trợ giảm triệu chứng viêm xoang (20 viên)', 1, 459000, N'images/119.jpg', 1, 6, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (120, N'Dung dịch xịt Propolis Mint & Honey Tracybee hỗ trợ giảm ho, viêm họng (30ml)', 3, 229000, N'images/120.jpg', 1, 2, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (121, N'Miếng dán hạ sốt Lion Hiepita For Child hỗ trợ giảm cơn sốt khó chịu (8 gói x 2 miếng)', 3, 365000, N'images/121.jpg', 1, 3, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (122, N'Cao dán giảm đau Fujisip Thiên Ân hỗ trợ giảm các cơn đau nhức (10 miếng - 5cm x 7,5cm)', 2, 128000, N'images/122.jpg', 1, 3, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (123, N'Miếng dán giữ nhiệt Salonpas Jikabari Hisamitsu hỗ trợ làm ấm cơ thể (8 miếng)', 3, 489000, N'images/123.jpg', 1, 8, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (124, N'Cao dán Fujisip Cool Thiên Ân hỗ trợ dịu cơn đau vai, lưng, khớp, cơ (2 miếng x 10 túi)', 3, 74000, N'images/124.jpg', 1, 2, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (125, N'Siro Hobezut Vinacare Pharma hỗ trợ giảm các triệu chứng ho, cảm (110ml)', 1, 522000, N'images/125.jpg', 1, 6, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (126, N'Siro Ginkid HoCam New hỗ trợ bổ phế, giảm ho (80ml)', 2, 207000, N'images/126.jpg', 1, 6, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (127, N'Miếng dán nhiệt Starbalm Aqua Gel Heat Patch hỗ trợ giảm đau nhanh, kháng viêm (4 miếng)', 3, 346000, N'images/127.jpg', 1, 8, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (128, N'Miếng dán hạ sốt Bye Bye-Fever Hisamitsu làm mát lạnh nhanh và mạnh (6 miếng)', 2, 121000, N'images/128.jpg', 1, 8, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (129, N'Miếng dán giữ nhiệt Salonpas Jikabari Hisamitsu hỗ trợ làm ấm cơ thể (8 miếng)', 3, 369000, N'images/129.jpg', 1, 7, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (130, N'Siro Cường Phế Lotus giúp tăng cường chức năng hô hấp (10 ống x 10ml)', 2, 287000, N'images/130.jpg', 1, 5, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (131, N'Miếng dán hạ sốt Aikido Gel Cool Patch hỗ trợ chườm mát tại nơi dán (6 miếng)', 3, 585000, N'images/131.jpg', 1, 6, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (132, N'Cao dán giảm đau Fujisip Thiên Ân hỗ trợ giảm các cơn đau nhức (10 miếng - 5cm x 7,5cm)', 2, 208000, N'images/132.jpg', 1, 5, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (133, N'Miếng dán hạ sốt Bye Bye Fever Hisamitsu hỗ trợ hạ nhiệt nhanh cho trẻ (16 miếng)', 2, 428000, N'images/133.jpg', 1, 5, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (134, N'Siro bổ phế Bối Mẫu Forte Mom And Baby Tất Thành hỗ trợ giảm ho, đau rát họng, khản tiếng (125ml)', 1, 568000, N'images/134.jpg', 1, 1, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (135, N'Cao dán Chỉ Thống Cao giảm đau nhức cơ thể, đau dây thần kinh (20 gói x 5 miếng)', 3, 590000, N'images/135.jpg', 1, 4, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (136, N'Siro Nopanho Kingphar giúp loãng đờm, giảm đau rát họng do ho kéo dài (125ml)', 3, 511000, N'images/136.jpg', 1, 6, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (137, N'Dung dịch Mật Ong Chanh Đào VIP New Star hỗ trợ bổ khí, giảm ho, đau họng (100ml)', 2, 345000, N'images/137.jpg', 1, 2, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (138, N'Siro bổ phế Bối Mẫu Forte Mom And Baby Tất Thành hỗ trợ giảm ho, đau rát họng, khản tiếng (125ml)', 3, 639000, N'images/138.jpg', 1, 1, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (139, N'Siro Cường Phế Lotus giúp tăng cường chức năng hô hấp (10 ống x 10ml)', 2, 244000, N'images/139.jpg', 1, 5, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (140, N'Viên uống Xoang Bach Phuc Lohha hỗ trợ giảm triệu chứng viêm xoang (20 viên)', 3, 409000, N'images/140.jpg', 1, 3, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (141, N'Viên uống Thanh Phế Kim Thiên Bình giúp bổ phế, hỗ trợ giảm ho, tiêu đờm (30 viên)', 2, 243000, N'images/141.jpg', 1, 3, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (142, N'Viên uống Agera Extra Kingphar hỗ trợ giảm ngạt mũi, hắt hơi và sổ mũi, nhức đầu do viêm mũi dị ứng, viêm xoang (60 viên)', 3, 361000, N'images/142.jpg', 1, 7, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (143, N'Cao Niệm Từ Am Hiếu Tử Xuyên Bối Tỳ Bà Cao hỗ trợ giảm ho, nhuận phổi (300ml)', 3, 304000, N'images/143.jpg', 1, 1, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (144, N'Siro Hobezut Vinacare Pharma hỗ trợ giảm các triệu chứng ho, cảm (110ml)', 3, 524000, N'images/144.jpg', 1, 2, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (145, N'Viên uống Xoang Bach Phuc Lohha hỗ trợ giảm triệu chứng viêm xoang (20 viên)', 2, 288000, N'images/145.jpg', 1, 1, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (146, N'Siro Hobezut Vinacare Pharma hỗ trợ giảm các triệu chứng ho, cảm (110ml)', 2, 388000, N'images/146.jpg', 1, 2, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (147, N'Siro Nopanho Kingphar giúp loãng đờm, giảm đau rát họng do ho kéo dài (125ml)', 3, 430000, N'images/147.jpg', 1, 4, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (148, N'Miếng dán hạ sốt Bye Bye-Fever Hisamitsu làm mát lạnh nhanh và mạnh (6 miếng)', 1, 135000, N'images/148.jpg', 1, 4, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (149, N'Siro Ginkid HoCam New hỗ trợ bổ phế, giảm ho (80ml)', 1, 147000, N'images/149.jpg', 1, 5, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (150, N'Miếng dán hạ sốt Bye Bye Fever Hisamitsu hỗ trợ hạ nhiệt nhanh cho trẻ (16 miếng)', 2, 395000, N'images/150.jpg', 1, 3, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (151, N'Viên uống Agera Extra Kingphar hỗ trợ giảm ngạt mũi, hắt hơi và sổ mũi, nhức đầu do viêm mũi dị ứng, viêm xoang (60 viên)', 1, 311000, N'images/151.jpg', 1, 6, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (152, N'Siro Ho Ong Vàng Herbal5 Thảo Dược Việt hỗ trợ làm ấm, sạch họng, giảm ho (100ml)', 2, 143000, N'images/152.jpg', 1, 2, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (153, N'Dung dịch xịt Propolis Mint & Honey Tracybee hỗ trợ giảm ho, viêm họng (30ml)', 3, 206000, N'images/153.jpg', 1, 5, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (154, N'Dung dịch Mật Ong Chanh Đào VIP New Star hỗ trợ bổ khí, giảm ho, đau họng (100ml)', 1, 542000, N'images/154.jpg', 1, 3, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (155, N'Cao dán Chỉ Thống Cao giảm đau nhức cơ thể, đau dây thần kinh (20 gói x 5 miếng)', 3, 308000, N'images/155.jpg', 1, 5, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (156, N'Siro Cường Phế Lotus giúp tăng cường chức năng hô hấp (10 ống x 10ml)', 1, 83000, N'images/156.jpg', 1, 6, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (157, N'Miếng dán hạ sốt Aikido Gel Cool Patch hỗ trợ chườm mát tại nơi dán (6 miếng)', 2, 59000, N'images/157.jpg', 1, 3, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (158, N'Dung dịch xịt Propolis Mint & Honey Tracybee hỗ trợ giảm ho, viêm họng (30ml)', 2, 649000, N'images/158.jpg', 1, 3, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (159, N'Siro bổ phế Bối Mẫu Forte Mom And Baby Tất Thành hỗ trợ giảm ho, đau rát họng, khản tiếng (125ml)', 2, 93000, N'images/159.jpg', 1, 1, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (160, N'Cao dán Fujisip Cool Thiên Ân hỗ trợ dịu cơn đau vai, lưng, khớp, cơ (2 miếng x 10 túi)', 2, 178000, N'images/160.jpg', 1, 6, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (161, N'Cao Niệm Từ Am Hiếu Tử Xuyên Bối Tỳ Bà Cao hỗ trợ giảm ho, nhuận phổi (300ml)', 1, 622000, N'images/161.jpg', 1, 6, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (162, N'Miếng dán sưởi ấm Thiên Thanh giữ nhiệt 12 - 16 giờ (10 miếng x 10 cm x 13.3 cm)', 1, 586000, N'images/162.jpg', 1, 7, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (163, N'Viên uống Thanh Phế Kim Thiên Bình giúp bổ phế, hỗ trợ giảm ho, tiêu đờm (30 viên)', 2, 600000, N'images/163.jpg', 1, 1, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (164, N'Miếng dán hạ sốt Lion Hiepita For Child hỗ trợ giảm cơn sốt khó chịu (8 gói x 2 miếng)', 2, 357000, N'images/164.jpg', 1, 8, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (165, N'Miếng dán hạ sốt Lion Hiepita For Baby cho trẻ 0-2 tuổi (6 gói x 2 miếng)', 1, 171000, N'images/165.jpg', 1, 6, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (166, N'Miếng dán giữ nhiệt Salonpas Jikabari Hisamitsu hỗ trợ làm ấm cơ thể (8 miếng)', 1, 363000, N'images/166.jpg', 1, 1, 49)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (167, N'Miếng dán hạ sốt Sakura Tanaphar hiệu quả đến 10h', 1, 636000, N'images/167.jpg', 1, 1, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (168, N'Miếng dán hạ sốt Bye Bye Fever Hisamitsu hỗ trợ hạ nhiệt nhanh cho trẻ (16 miếng)', 2, 201000, N'images/168.jpg', 1, 4, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (169, N'Cao dán Fujisip Cool Thiên Ân hỗ trợ dịu cơn đau vai, lưng, khớp, cơ (2 miếng x 10 túi)', 1, 330000, N'images/169.jpg', 1, 7, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (170, N'Miếng dán hạ sốt Bye Bye-Fever Hisamitsu làm mát lạnh nhanh và mạnh (6 miếng)', 2, 188000, N'images/170.jpg', 1, 8, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (171, N'Miếng dán nhiệt Starbalm Aqua Gel Heat Patch hỗ trợ giảm đau nhanh, kháng viêm (4 miếng)', 3, 221000, N'images/171.jpg', 1, 4, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (172, N'Miếng dán hạ sốt Lion Hiepita For Baby cho trẻ 0-2 tuổi (6 gói x 2 miếng)', 2, 643000, N'images/172.jpg', 1, 6, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (173, N'Miếng dán sưởi ấm Thiên Thanh giữ nhiệt 12 - 16 giờ (10 miếng x 10 cm x 13.3 cm)', 2, 205000, N'images/173.jpg', 1, 7, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (174, N'Miếng dán nhiệt Starbalm Aqua Gel Heat Patch hỗ trợ giảm đau nhanh, kháng viêm (4 miếng)', 1, 589000, N'images/174.jpg', 1, 6, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (175, N'Miếng dán hạ sốt Sakura Tanaphar hiệu quả đến 10h', 2, 552000, N'images/175.jpg', 1, 1, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (176, N'Viên uống Thanh Phế Kim Thiên Bình giúp bổ phế, hỗ trợ giảm ho, tiêu đờm (30 viên)', 2, 114000, N'images/176.jpg', 1, 3, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (181, N'Vitamin', 1, 123000, N'177.jpg', 1, 2, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (182, N'Viên uống', 1, 123000, N'182.jpg', 1, 2, 5)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (183, N'Paracetamol', 1, 10000, N'183.jpg', 1, 3, 170)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (184, N'Aspirin', 2, 15000, N'184.jpg', 1, 2, 160)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (185, N'Ibuprofen', 3, 12000, N'185.jpg', 1, 3, 150)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (186, N'Amoxicillin', 3, 20000, N'186.jpg', 1, 7, 100)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (187, N'Ciprofloxacin', 3, 25000, N'187.jpg', 1, 8, 50)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (188, N'Omeprazole', 2, 18000, N'188.jpg', 1, 1, 100)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (189, N'Metformin', 1, 16000, N'189.jpg', 1, 2, 175)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (190, N'Simvastatin', 3, 22000, N'190.jpg', 1, 4, 75)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (191, N'Loratadine', 2, 14000, N'191.jpg', 1, 4, 180)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (192, N'Cetirizine', 2, 13000, N'192.jpg', 1, 8, 220)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (193, N'test', 2, 123000, N'193.jpg', 1, 2, 0)
INSERT [dbo].[thuoc] ([MaThuoc], [TenThuoc], [MaDoiTuong], [GiaThuoc], [AnhThuoc], [TrangThai], [MaXuatXu], [SoLuong]) VALUES (194, N'test 2', 2, 12000, N'194.jpg', 1, 2, 0)
SET IDENTITY_INSERT [dbo].[thuoc] OFF
GO
SET IDENTITY_INSERT [dbo].[xuatxu] ON 

INSERT [dbo].[xuatxu] ([MaXuatXu], [TenXuatXu], [TrangThai]) VALUES (1, N'Việt Nam', 1)
INSERT [dbo].[xuatxu] ([MaXuatXu], [TenXuatXu], [TrangThai]) VALUES (2, N'Canada', 1)
INSERT [dbo].[xuatxu] ([MaXuatXu], [TenXuatXu], [TrangThai]) VALUES (3, N'Úc', 1)
INSERT [dbo].[xuatxu] ([MaXuatXu], [TenXuatXu], [TrangThai]) VALUES (4, N'Hoa Kỳ', 1)
INSERT [dbo].[xuatxu] ([MaXuatXu], [TenXuatXu], [TrangThai]) VALUES (5, N'Thụy Sĩ', 1)
INSERT [dbo].[xuatxu] ([MaXuatXu], [TenXuatXu], [TrangThai]) VALUES (6, N'Nhật Bản', 1)
INSERT [dbo].[xuatxu] ([MaXuatXu], [TenXuatXu], [TrangThai]) VALUES (7, N'Đức', 1)
INSERT [dbo].[xuatxu] ([MaXuatXu], [TenXuatXu], [TrangThai]) VALUES (8, N'Hàn Quốc', 1)
SET IDENTITY_INSERT [dbo].[xuatxu] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UC_SDTS]    Script Date: 12/1/2023 1:01:47 PM ******/
ALTER TABLE [dbo].[khachhang] ADD  CONSTRAINT [UC_SDTS] UNIQUE NONCLUSTERED 
(
	[SDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__nhanvien__55F68FC0787EC0E5]    Script Date: 12/1/2023 1:01:47 PM ******/
ALTER TABLE [dbo].[nhanvien] ADD UNIQUE NONCLUSTERED 
(
	[TenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[khachhang] ADD  DEFAULT ((1)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[thuoc] ADD  DEFAULT ((1)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[chitietdonhang]  WITH CHECK ADD FOREIGN KEY([MaThuoc])
REFERENCES [dbo].[thuoc] ([MaThuoc])
GO
ALTER TABLE [dbo].[chitietdonhang]  WITH CHECK ADD FOREIGN KEY([MaDH])
REFERENCES [dbo].[donhang] ([MaDH])
GO
ALTER TABLE [dbo].[chitietphieunhap]  WITH CHECK ADD  CONSTRAINT [FK_ctphieunhap_phieunhap] FOREIGN KEY([MaPN])
REFERENCES [dbo].[phieunhap] ([MaPN])
GO
ALTER TABLE [dbo].[chitietphieunhap] CHECK CONSTRAINT [FK_ctphieunhap_phieunhap]
GO
ALTER TABLE [dbo].[diemkhachhang]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[khachhang] ([MaKH])
GO
ALTER TABLE [dbo].[donhang]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[khachhang] ([MaKH])
GO
ALTER TABLE [dbo].[donhang]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[nhanvien] ([MaNV])
GO
ALTER TABLE [dbo].[donhang]  WITH CHECK ADD FOREIGN KEY([MaQuyDoi])
REFERENCES [dbo].[quydoidiem] ([MaQuyDoi])
GO
ALTER TABLE [dbo].[nhanvien]  WITH CHECK ADD FOREIGN KEY([MaQuyen])
REFERENCES [dbo].[quyen] ([MaQuyen])
GO
ALTER TABLE [dbo].[phieugiamgia]  WITH CHECK ADD  CONSTRAINT [FK_PhieuGiamGia_QuyDoiDiem] FOREIGN KEY([MaQuyDoi])
REFERENCES [dbo].[quydoidiem] ([MaQuyDoi])
GO
ALTER TABLE [dbo].[phieugiamgia] CHECK CONSTRAINT [FK_PhieuGiamGia_QuyDoiDiem]
GO
ALTER TABLE [dbo].[phieunhap]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[nhanvien] ([MaNV])
GO
ALTER TABLE [dbo].[thuoc]  WITH CHECK ADD FOREIGN KEY([MaDoiTuong])
REFERENCES [dbo].[doituong] ([MaDT])
GO
ALTER TABLE [dbo].[thuoc]  WITH CHECK ADD  CONSTRAINT [FK_Thuoc_XuatXu] FOREIGN KEY([MaXuatXu])
REFERENCES [dbo].[xuatxu] ([MaXuatXu])
GO
ALTER TABLE [dbo].[thuoc] CHECK CONSTRAINT [FK_Thuoc_XuatXu]
GO
