USE [BElectronicShop]
GO
/****** Object:  Table [dbo].[admin]    Script Date: 9/23/2022 5:22:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin](
	[ATc] [nvarchar](11) NOT NULL,
	[AKadi] [nvarchar](20) NOT NULL,
	[AAdi] [nvarchar](30) NOT NULL,
	[ASoyadi] [nvarchar](30) NOT NULL,
	[ASfr] [nvarchar](50) NOT NULL,
	[AMail] [nvarchar](50) NOT NULL,
	[AProfil] [nvarchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ATc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kategoriler]    Script Date: 9/23/2022 5:22:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kategoriler](
	[KateID] [int] IDENTITY(1,1) NOT NULL,
	[KateAdi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__kategori__8540EE1F4130D46E] PRIMARY KEY CLUSTERED 
(
	[KateAdi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[musteriler]    Script Date: 9/23/2022 5:22:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[musteriler](
	[MTc] [nvarchar](11) NOT NULL,
	[MKadi] [nvarchar](20) NOT NULL,
	[MAdi] [nvarchar](30) NOT NULL,
	[MSoyadi] [nvarchar](30) NOT NULL,
	[MSfr] [nvarchar](50) NOT NULL,
	[MMail] [nvarchar](50) NOT NULL,
	[DKod] [nvarchar](6) NOT NULL,
	[Onay] [int] NOT NULL,
 CONSTRAINT [PK__musteril__276CE21D08C397F0] PRIMARY KEY CLUSTERED 
(
	[MMail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sepet]    Script Date: 9/23/2022 5:22:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sepet](
	[SepetID] [int] IDENTITY(1,1) NOT NULL,
	[UBarkod] [nvarchar](50) NOT NULL,
	[UAdet] [int] NOT NULL,
	[MMail] [nvarchar](50) NOT NULL,
	[Durum] [bit] NOT NULL,
	[Tarih] [date] NOT NULL,
 CONSTRAINT [PK_sepet] PRIMARY KEY CLUSTERED 
(
	[SepetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[urunler]    Script Date: 9/23/2022 5:22:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[urunler](
	[UrunKateID] [nvarchar](50) NOT NULL,
	[UMarka] [nvarchar](50) NOT NULL,
	[UrunAdi] [nvarchar](70) NOT NULL,
	[UFiyat] [float] NOT NULL,
	[UKdv] [nvarchar](20) NOT NULL,
	[ParaBrm] [nvarchar](20) NOT NULL,
	[UStokID] [nvarchar](20) NOT NULL,
	[UBarkod] [nvarchar](20) NOT NULL,
	[UStokAdet] [float] NOT NULL,
	[UStokTur] [nvarchar](20) NOT NULL,
	[UResim] [nvarchar](200) NOT NULL,
	[KargoKg] [nvarchar](20) NOT NULL,
	[Etiket] [nvarchar](50) NULL,
	[EkResim] [nvarchar](50) NULL,
 CONSTRAINT [PK__urunler__2583D238F673242D] PRIMARY KEY CLUSTERED 
(
	[UBarkod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[admin] ([ATc], [AKadi], [AAdi], [ASoyadi], [ASfr], [AMail], [AProfil]) VALUES (N'19200000000', N'Salih1', N'Salih', N'Akdoğan', N'123456', N'admin1@gmail.com', N'link buraya gelecek')
GO
SET IDENTITY_INSERT [dbo].[kategoriler] ON 

INSERT [dbo].[kategoriler] ([KateID], [KateAdi]) VALUES (3, N'Laptop')
INSERT [dbo].[kategoriler] ([KateID], [KateAdi]) VALUES (1, N'Telefon')
INSERT [dbo].[kategoriler] ([KateID], [KateAdi]) VALUES (2, N'Televizyon')
SET IDENTITY_INSERT [dbo].[kategoriler] OFF
GO
INSERT [dbo].[musteriler] ([MTc], [MKadi], [MAdi], [MSoyadi], [MSfr], [MMail], [DKod], [Onay]) VALUES (N'17444444445', N'Salih1', N'Salih', N'Akdoğan', N'Salih123*', N'salih_akdogan2@hotmail.com', N'519916', 1)
GO
SET IDENTITY_INSERT [dbo].[sepet] ON 

INSERT [dbo].[sepet] ([SepetID], [UBarkod], [UAdet], [MMail], [Durum], [Tarih]) VALUES (19, N'tv-samsung-010', 4, N'salih1@gmail.com', 0, CAST(N'2022-06-25' AS Date))
INSERT [dbo].[sepet] ([SepetID], [UBarkod], [UAdet], [MMail], [Durum], [Tarih]) VALUES (20, N'tv-samsung-009', 3, N'salih1@gmail.com', 0, CAST(N'2022-06-25' AS Date))
INSERT [dbo].[sepet] ([SepetID], [UBarkod], [UAdet], [MMail], [Durum], [Tarih]) VALUES (21, N'tv-samsung-002', 1, N'salih1@gmail.com', 0, CAST(N'2022-06-25' AS Date))
INSERT [dbo].[sepet] ([SepetID], [UBarkod], [UAdet], [MMail], [Durum], [Tarih]) VALUES (22, N'tv-samsung-006', 1, N'salih1@gmail.com', 0, CAST(N'2022-06-25' AS Date))
INSERT [dbo].[sepet] ([SepetID], [UBarkod], [UAdet], [MMail], [Durum], [Tarih]) VALUES (23, N'tv-samsung-007', 5, N'salih1@gmail.com', 0, CAST(N'2022-06-25' AS Date))
INSERT [dbo].[sepet] ([SepetID], [UBarkod], [UAdet], [MMail], [Durum], [Tarih]) VALUES (24, N'tv-samsung-010', 1, N'eren1@gmail.com', 0, CAST(N'2022-06-25' AS Date))
INSERT [dbo].[sepet] ([SepetID], [UBarkod], [UAdet], [MMail], [Durum], [Tarih]) VALUES (25, N'tv-samsung-002', 4, N'eren1@gmail.com', 0, CAST(N'2022-06-25' AS Date))
SET IDENTITY_INSERT [dbo].[sepet] OFF
GO
INSERT [dbo].[urunler] ([UrunKateID], [UMarka], [UrunAdi], [UFiyat], [UKdv], [ParaBrm], [UStokID], [UBarkod], [UStokAdet], [UStokTur], [UResim], [KargoKg], [Etiket], [EkResim]) VALUES (N'Laptop', N'Apple', N'macbook air 2022', 36000, N'%18', N'Try', N'lp-apple-1', N'lp-apple-001', 12000, N'Hazır stok', N'/admin_panel/urunimg/05162022_003939_laptop1.jpg', N'4', N'slider', N'/admin_panel/urunimg/carousel-slider/laptop1.png')
INSERT [dbo].[urunler] ([UrunKateID], [UMarka], [UrunAdi], [UFiyat], [UKdv], [ParaBrm], [UStokID], [UBarkod], [UStokAdet], [UStokTur], [UResim], [KargoKg], [Etiket], [EkResim]) VALUES (N'Laptop', N'Apple', N'macbook pro 2022', 39000, N'%18', N'Try', N'lp-apple-2', N'lp-apple-002', 17000, N'Hazır stok', N'/admin_panel/urunimg/05162022_004019_laptop2.jpg', N'3', N'onecikan', NULL)
INSERT [dbo].[urunler] ([UrunKateID], [UMarka], [UrunAdi], [UFiyat], [UKdv], [ParaBrm], [UStokID], [UBarkod], [UStokAdet], [UStokTur], [UResim], [KargoKg], [Etiket], [EkResim]) VALUES (N'Laptop', N'Apple', N'macbook air m1', 28800, N'%18', N'Try', N'lp-apple-3', N'lp-apple-003', 45000, N'Hazır stok', N'/admin_panel/urunimg/05162022_004150_laptop3.jpg', N'2', N'slider', N'/admin_panel/urunimg/carousel-slider/laptop3.png')
INSERT [dbo].[urunler] ([UrunKateID], [UMarka], [UrunAdi], [UFiyat], [UKdv], [ParaBrm], [UStokID], [UBarkod], [UStokAdet], [UStokTur], [UResim], [KargoKg], [Etiket], [EkResim]) VALUES (N'Laptop', N'Asus', N'asus x509ua', 1700, N'%10', N'Usd', N'lp-asus-5', N'lp-asus-005', 5000, N'Yurt dışı', N'/admin_panel/urunimg/05162022_004450_laptop5.jpg', N'3', N'firsaturunu', NULL)
INSERT [dbo].[urunler] ([UrunKateID], [UMarka], [UrunAdi], [UFiyat], [UKdv], [ParaBrm], [UStokID], [UBarkod], [UStokAdet], [UStokTur], [UResim], [KargoKg], [Etiket], [EkResim]) VALUES (N'Laptop', N'Asus', N'asus d509', 14000, N'%18', N'Try', N'lp-asus-7', N'lp-asus-007', 12700, N'Hazır stok', N'/admin_panel/urunimg/05162022_004747_laptop7.jpg', N'2', N'onecikan', NULL)
INSERT [dbo].[urunler] ([UrunKateID], [UMarka], [UrunAdi], [UFiyat], [UKdv], [ParaBrm], [UStokID], [UBarkod], [UStokAdet], [UStokTur], [UResim], [KargoKg], [Etiket], [EkResim]) VALUES (N'Laptop', N'Asus', N'asus xw007', 19900, N'%18', N'Try', N'lp-asus-8', N'lp-asus-008', 14000, N'Hazır stok', N'/admin_panel/urunimg/05162022_004916_laptop8.jpg', N'3', NULL, NULL)
INSERT [dbo].[urunler] ([UrunKateID], [UMarka], [UrunAdi], [UFiyat], [UKdv], [ParaBrm], [UStokID], [UBarkod], [UStokAdet], [UStokTur], [UResim], [KargoKg], [Etiket], [EkResim]) VALUES (N'Laptop', N'Asus', N'asus s432fl', 1890, N'%10', N'Usd', N'lp-asus-10', N'lp-asus-010', 70000, N'Yurt dışı', N'/admin_panel/urunimg/05162022_005221_laptop10.jpg', N'4', N'onecikan', NULL)
INSERT [dbo].[urunler] ([UrunKateID], [UMarka], [UrunAdi], [UFiyat], [UKdv], [ParaBrm], [UStokID], [UBarkod], [UStokAdet], [UStokTur], [UResim], [KargoKg], [Etiket], [EkResim]) VALUES (N'Laptop', N'Lenovo', N'lenovo ideapad 3', 1500, N'%10', N'Euro', N'lp-lenovo-4', N'lp-lenovo-004', 13300, N'Yurt dışı', N'/admin_panel/urunimg/05162022_004322_laptop4.jpg', N'3', N'firsaturunu', NULL)
INSERT [dbo].[urunler] ([UrunKateID], [UMarka], [UrunAdi], [UFiyat], [UKdv], [ParaBrm], [UStokID], [UBarkod], [UStokAdet], [UStokTur], [UResim], [KargoKg], [Etiket], [EkResim]) VALUES (N'Laptop', N'Lenovo', N'lenovo thinkpad e13', 21000, N'%18', N'Try', N'lp-lenovo-6', N'lp-lenovo-006', 14000, N'Hazır stok', N'/admin_panel/urunimg/05162022_004609_laptop6.jpg', N'3', N'onecikan', NULL)
INSERT [dbo].[urunler] ([UrunKateID], [UMarka], [UrunAdi], [UFiyat], [UKdv], [ParaBrm], [UStokID], [UBarkod], [UStokAdet], [UStokTur], [UResim], [KargoKg], [Etiket], [EkResim]) VALUES (N'Telefon', N'Apple', N'iphone 13 beyaz', 899, N'%10', N'Usd', N'telefon-apple-1', N'telefon-apple-001', 12000, N'Yurt dışı', N'/admin_panel/urunimg/05162022_000802_telefon1.jpg', N'1', N'slider', N'/admin_panel/urunimg/carousel-slider/telefon1.png')
INSERT [dbo].[urunler] ([UrunKateID], [UMarka], [UrunAdi], [UFiyat], [UKdv], [ParaBrm], [UStokID], [UBarkod], [UStokAdet], [UStokTur], [UResim], [KargoKg], [Etiket], [EkResim]) VALUES (N'Telefon', N'Apple', N'iphone 12 lila', 12580, N'%18', N'Try', N'telefon-apple-2', N'telefon-apple-002', 14500, N'Hazır stok', N'/admin_panel/urunimg/05162022_000928_telefon2.jpg', N'1', NULL, NULL)
INSERT [dbo].[urunler] ([UrunKateID], [UMarka], [UrunAdi], [UFiyat], [UKdv], [ParaBrm], [UStokID], [UBarkod], [UStokAdet], [UStokTur], [UResim], [KargoKg], [Etiket], [EkResim]) VALUES (N'Telefon', N'Apple', N'iphone 12 sarı', 13580, N'%18', N'Try', N'telefon-apple-3', N'telefon-apple-003', 11000, N'Hazır stok', N'/admin_panel/urunimg/05162022_000959_telefon3.jpg', N'1', N'slider', N'/admin_panel/urunimg/carousel-slider/telefon3.png')
INSERT [dbo].[urunler] ([UrunKateID], [UMarka], [UrunAdi], [UFiyat], [UKdv], [ParaBrm], [UStokID], [UBarkod], [UStokAdet], [UStokTur], [UResim], [KargoKg], [Etiket], [EkResim]) VALUES (N'Telefon', N'Apple', N'iphone 13 mavi', 889, N'%10', N'Euro', N'telefon-apple-4', N'telefon-apple-004', 15780, N'Yurt dışı', N'/admin_panel/urunimg/05162022_001051_telefon4.jpg', N'1', N'onecikan', NULL)
INSERT [dbo].[urunler] ([UrunKateID], [UMarka], [UrunAdi], [UFiyat], [UKdv], [ParaBrm], [UStokID], [UBarkod], [UStokAdet], [UStokTur], [UResim], [KargoKg], [Etiket], [EkResim]) VALUES (N'Telefon', N'Samsung', N'samsung s20 pro ', 17899, N'%18', N'Try', N'telefon-samsung-5', N'telefon-samsung-005', 9000, N'Hazır stok', N'/admin_panel/urunimg/05162022_001204_telefon5.jpg', N'1', N'onecikan', NULL)
INSERT [dbo].[urunler] ([UrunKateID], [UMarka], [UrunAdi], [UFiyat], [UKdv], [ParaBrm], [UStokID], [UBarkod], [UStokAdet], [UStokTur], [UResim], [KargoKg], [Etiket], [EkResim]) VALUES (N'Telefon', N'Samsung', N'samsung s22 lite', 788, N'%10', N'Usd', N'telefon-samsung-6', N'telefon-samsung-006', 14000, N'Yurt dışı', N'/admin_panel/urunimg/05162022_001250_telefon6.jpg', N'1', N'slider', N'/admin_panel/urunimg/carousel-slider/telefon6.png')
INSERT [dbo].[urunler] ([UrunKateID], [UMarka], [UrunAdi], [UFiyat], [UKdv], [ParaBrm], [UStokID], [UBarkod], [UStokAdet], [UStokTur], [UResim], [KargoKg], [Etiket], [EkResim]) VALUES (N'Telefon', N'Xiaomi', N'xiaomi mi 11', 19980, N'%18', N'Try', N'telefon-xiaomi-7', N'telefon-xiaomi-007', 48000, N'Hazır stok', N'/admin_panel/urunimg/05162022_001415_telefon7.jpg', N'1', NULL, NULL)
INSERT [dbo].[urunler] ([UrunKateID], [UMarka], [UrunAdi], [UFiyat], [UKdv], [ParaBrm], [UStokID], [UBarkod], [UStokAdet], [UStokTur], [UResim], [KargoKg], [Etiket], [EkResim]) VALUES (N'Telefon', N'Xiaomi', N'xiaomi redmi note 12 pro', 1900, N'%10', N'Usd', N'telefon-xiaomi-8', N'telefon-xiaomi-008', 130000, N'Yurt dışı', N'/admin_panel/urunimg/05162022_001539_telefon8.jpg', N'1', N'onecikan', NULL)
INSERT [dbo].[urunler] ([UrunKateID], [UMarka], [UrunAdi], [UFiyat], [UKdv], [ParaBrm], [UStokID], [UBarkod], [UStokAdet], [UStokTur], [UResim], [KargoKg], [Etiket], [EkResim]) VALUES (N'Telefon', N'Xiaomi', N'xiaomi note 11 lite', 1300, N'%10', N'Usd', N'telefon-xiaomi-9', N'telefon-xiaomi-009', 65000, N'Yurt dışı', N'/admin_panel/urunimg/05162022_001713_telefon9.jpg', N'1', N'slider', N'/admin_panel/urunimg/carousel-slider/telefon9.png')
INSERT [dbo].[urunler] ([UrunKateID], [UMarka], [UrunAdi], [UFiyat], [UKdv], [ParaBrm], [UStokID], [UBarkod], [UStokAdet], [UStokTur], [UResim], [KargoKg], [Etiket], [EkResim]) VALUES (N'Telefon', N'Xiaomi', N'xiaomi redmi note 10 pro', 7899, N'%18', N'Try', N'telefon-xiaomi-10', N'telefon-xiaomi-010', 128000, N'Hazır stok', N'/admin_panel/urunimg/05162022_001828_telefon10.jpg', N'1', NULL, NULL)
INSERT [dbo].[urunler] ([UrunKateID], [UMarka], [UrunAdi], [UFiyat], [UKdv], [ParaBrm], [UStokID], [UBarkod], [UStokAdet], [UStokTur], [UResim], [KargoKg], [Etiket], [EkResim]) VALUES (N'Televizyon', N'Lg', N'lg uhd 2k', 12300, N'%18', N'Try', N'tv-lg-3', N'tv-lg-003', 14000, N'Hazır stok', N'/admin_panel/urunimg/05162022_002424_tv3.jpg', N'12', N'onecikan', NULL)
INSERT [dbo].[urunler] ([UrunKateID], [UMarka], [UrunAdi], [UFiyat], [UKdv], [ParaBrm], [UStokID], [UBarkod], [UStokAdet], [UStokTur], [UResim], [KargoKg], [Etiket], [EkResim]) VALUES (N'Televizyon', N'Lg', N'lg oled 8k', 24500, N'%18', N'Try', N'tv-lg-4', N'tv-lg-004', 14000, N'Hazır stok', N'/admin_panel/urunimg/05162022_002551_tv4.jpg', N'18', NULL, NULL)
INSERT [dbo].[urunler] ([UrunKateID], [UMarka], [UrunAdi], [UFiyat], [UKdv], [ParaBrm], [UStokID], [UBarkod], [UStokAdet], [UStokTur], [UResim], [KargoKg], [Etiket], [EkResim]) VALUES (N'Televizyon', N'Lg', N'lg 4k uhd hdr', 18800, N'%18', N'Try', N'tv-lg-5', N'tv-lg-005', 14700, N'Hazır stok', N'/admin_panel/urunimg/05162022_002734_tv5.jpg', N'11', N'onecikan', NULL)
INSERT [dbo].[urunler] ([UrunKateID], [UMarka], [UrunAdi], [UFiyat], [UKdv], [ParaBrm], [UStokID], [UBarkod], [UStokAdet], [UStokTur], [UResim], [KargoKg], [Etiket], [EkResim]) VALUES (N'Televizyon', N'Samsung', N'samsung uhd 4k', 14500, N'%18', N'Try', N'tv-samsung-1', N'tv-samsung-001', 48000, N'Hazır stok', N'/admin_panel/urunimg/05162022_002216_tv1.jpg', N'12', N'onecikan', NULL)
INSERT [dbo].[urunler] ([UrunKateID], [UMarka], [UrunAdi], [UFiyat], [UKdv], [ParaBrm], [UStokID], [UBarkod], [UStokAdet], [UStokTur], [UResim], [KargoKg], [Etiket], [EkResim]) VALUES (N'Televizyon', N'Samsung', N'samsung qled 4k', 12300, N'%18', N'Try', N'tv-samsung-2', N'tv-samsung-002', 17000, N'Hazır stok', N'/admin_panel/urunimg/05162022_002309_tv2.jpg', N'15', NULL, NULL)
INSERT [dbo].[urunler] ([UrunKateID], [UMarka], [UrunAdi], [UFiyat], [UKdv], [ParaBrm], [UStokID], [UBarkod], [UStokAdet], [UStokTur], [UResim], [KargoKg], [Etiket], [EkResim]) VALUES (N'Televizyon', N'Samsung', N'samsung qled 8k uhd', 13500, N'%18', N'Try', N'tv-samsung-6', N'tv-samsung-006', 12100, N'Hazır stok', N'/admin_panel/urunimg/05162022_003039_tv6.jpg', N'17', NULL, NULL)
INSERT [dbo].[urunler] ([UrunKateID], [UMarka], [UrunAdi], [UFiyat], [UKdv], [ParaBrm], [UStokID], [UBarkod], [UStokAdet], [UStokTur], [UResim], [KargoKg], [Etiket], [EkResim]) VALUES (N'Televizyon', N'Samsung', N'samsung qled 4k hdr', 13500, N'%18', N'Try', N'tv-samsung-7', N'tv-samsung-007', 5800, N'Hazır stok', N'/admin_panel/urunimg/05162022_003234_tv7.jpg', N'14', N'slider', N'/admin_panel/urunimg/carousel-slider/tv7.png')
INSERT [dbo].[urunler] ([UrunKateID], [UMarka], [UrunAdi], [UFiyat], [UKdv], [ParaBrm], [UStokID], [UBarkod], [UStokAdet], [UStokTur], [UResim], [KargoKg], [Etiket], [EkResim]) VALUES (N'Televizyon', N'Samsung', N'samsung crystal uhd', 16800, N'%18', N'Try', N'tv-samsung-8', N'tv-samsung-008', 14400, N'Hazır stok', N'/admin_panel/urunimg/05162022_003321_tv8.jpg', N'17', N'onecikan', NULL)
INSERT [dbo].[urunler] ([UrunKateID], [UMarka], [UrunAdi], [UFiyat], [UKdv], [ParaBrm], [UStokID], [UBarkod], [UStokAdet], [UStokTur], [UResim], [KargoKg], [Etiket], [EkResim]) VALUES (N'Televizyon', N'Samsung', N'samsung neo qled', 14700, N'%18', N'Try', N'tv-samsung-9', N'tv-samsung-009', 17800, N'Hazır stok', N'/admin_panel/urunimg/05162022_003420_tv9.jpg', N'14', N'onecikan', NULL)
INSERT [dbo].[urunler] ([UrunKateID], [UMarka], [UrunAdi], [UFiyat], [UKdv], [ParaBrm], [UStokID], [UBarkod], [UStokAdet], [UStokTur], [UResim], [KargoKg], [Etiket], [EkResim]) VALUES (N'Televizyon', N'Samsung', N'samsung qled 2k uhd', 9800, N'%18', N'Try', N'tv-samsung-10', N'tv-samsung-010', 50000, N'Hazır stok', N'/admin_panel/urunimg/05162022_003527_tv10.jpg', N'12', N'firsaturunu', NULL)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [uk_AKadi_]    Script Date: 9/23/2022 5:22:43 PM ******/
ALTER TABLE [dbo].[admin] ADD  CONSTRAINT [uk_AKadi_] UNIQUE NONCLUSTERED 
(
	[AKadi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [uk_AMail_]    Script Date: 9/23/2022 5:22:43 PM ******/
ALTER TABLE [dbo].[admin] ADD  CONSTRAINT [uk_AMail_] UNIQUE NONCLUSTERED 
(
	[AMail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [uk_MKadi_]    Script Date: 9/23/2022 5:22:43 PM ******/
ALTER TABLE [dbo].[musteriler] ADD  CONSTRAINT [uk_MKadi_] UNIQUE NONCLUSTERED 
(
	[MKadi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[urunler]  WITH CHECK ADD  CONSTRAINT [fk_UrunKateID] FOREIGN KEY([UrunKateID])
REFERENCES [dbo].[kategoriler] ([KateAdi])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[urunler] CHECK CONSTRAINT [fk_UrunKateID]
GO
