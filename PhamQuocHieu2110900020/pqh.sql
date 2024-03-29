USE [PhamQuocHieu01_2110900020]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 3/8/2024 11:16:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[BookId] [varchar](10) NOT NULL,
	[Title] [nvarchar](200) NOT NULL,
	[Author] [nvarchar](100) NULL,
	[Release] [int] NULL,
	[Price] [float] NULL,
	[Picture] [nvarchar](100) NULL,
	[PublisherId] [int] NULL,
	[CategoryId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[BookId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 3/8/2024 11:16:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Publisher]    Script Date: 3/8/2024 11:16:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Publisher](
	[PublisherId] [int] IDENTITY(1,1) NOT NULL,
	[PublisherName] [nvarchar](200) NULL,
	[Phone] [varchar](30) NULL,
	[Address] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[PublisherId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Book] ([BookId], [Title], [Author], [Release], [Price], [Picture], [PublisherId], [CategoryId]) VALUES (N'P63952', N'Kung Fu Panda', N'Ngọc Linh', 2016, 28500, N'images/products/P63952.jpg', 2, 3)
INSERT [dbo].[Book] ([BookId], [Title], [Author], [Release], [Price], [Picture], [PublisherId], [CategoryId]) VALUES (N'P67687', N'Vui buồn trong hộp', N'Đoàn Bảo Châu', 2015, 250000, N'images/products/P67687.jpg', 1, 5)
INSERT [dbo].[Book] ([BookId], [Title], [Author], [Release], [Price], [Picture], [PublisherId], [CategoryId]) VALUES (N'P67821', N'Mật Mã Champa - Phát Hành Dự Kiến', N'Giản Tư Hải', 2016, 113000, N'images/products/P67821.jpg', 1, 5)
INSERT [dbo].[Book] ([BookId], [Title], [Author], [Release], [Price], [Picture], [PublisherId], [CategoryId]) VALUES (N'P67842', N'Shin - Cậu Bé Bút Chì', N'Yoshito Usui ', 2016, 18000, N'images/products/P67842.jpg', 2, 3)
INSERT [dbo].[Book] ([BookId], [Title], [Author], [Release], [Price], [Picture], [PublisherId], [CategoryId]) VALUES (N'P67848', N'Chie - Cô Bé Hạt Tiêu', N'Etsumi Haruki', 2016, 28000, N'images/products/P67848.jpg', 2, 3)
INSERT [dbo].[Book] ([BookId], [Title], [Author], [Release], [Price], [Picture], [PublisherId], [CategoryId]) VALUES (N'P67934', N'Đường Đến Thành Công Của Jack Ma', N'Brad Schepp, Debra Schepp', 2015, 250000, N'images/products/P67934.jpg', 5, 1)
INSERT [dbo].[Book] ([BookId], [Title], [Author], [Release], [Price], [Picture], [PublisherId], [CategoryId]) VALUES (N'P67957', N'36 Kế Trong Kinh Doanh Hiện Đại', N'Lan Bercu', 2016, 95000, N'images/products/P67957.jpg', 1, 1)
INSERT [dbo].[Book] ([BookId], [Title], [Author], [Release], [Price], [Picture], [PublisherId], [CategoryId]) VALUES (N'P68009', N'Siêu Mèo Capoo', N'Á Lạp', 2016, 5800, N'images/products/P68009.jpg', 2, 3)
INSERT [dbo].[Book] ([BookId], [Title], [Author], [Release], [Price], [Picture], [PublisherId], [CategoryId]) VALUES (N'P68050', N'Đừng Bao Giờ Đi Ăn Một Mình', N'Tahl Raz, Keith Ferrazzi', 2016, 95000, N'images/products/P68050.jpg', 1, 1)
INSERT [dbo].[Book] ([BookId], [Title], [Author], [Release], [Price], [Picture], [PublisherId], [CategoryId]) VALUES (N'P68066', N'Vô Thường', N'Nguyễn Bảo Trung', 2016, 75000, N'images/products/P68066.jpg', 5, 5)
INSERT [dbo].[Book] ([BookId], [Title], [Author], [Release], [Price], [Picture], [PublisherId], [CategoryId]) VALUES (N'P68101', N'Dạy Con Làm Giàu - Tập 8: Để Có Những Đồng Tiền Tích Cực', N'Robert T. Kiyosaki', 2015, 32000, N'images/products/P68101.jpg', 1, 1)
INSERT [dbo].[Book] ([BookId], [Title], [Author], [Release], [Price], [Picture], [PublisherId], [CategoryId]) VALUES (N'P68102', N'Dạy Con Làm Giàu - Tập 9: Những Bí Mật Về Tiền Bạc Mà Bạn Không Học Ở Nhà Trường!', N'Robert T. Kiyosaki', 2015, 32000, N'images/products/P68102.jpg', 1, 1)
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (1, N'Sách kinh tế')
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (2, N'Sách tin học')
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (3, N'Sách thiếu nhi')
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (4, N'Sách nấu ăn')
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (5, N'Sách văn học')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Publisher] ON 

INSERT [dbo].[Publisher] ([PublisherId], [PublisherName], [Phone], [Address]) VALUES (1, N'Nhà xuất bản trẻ', N'098746533', N'Hà Nội')
INSERT [dbo].[Publisher] ([PublisherId], [PublisherName], [Phone], [Address]) VALUES (2, N'Nhà xuất bản kim đồng', N'096833435', N'Hà Nội')
INSERT [dbo].[Publisher] ([PublisherId], [PublisherName], [Phone], [Address]) VALUES (3, N'Nhà xuất bản tri thức', N'097987653', N'Hà Nội')
INSERT [dbo].[Publisher] ([PublisherId], [PublisherName], [Phone], [Address]) VALUES (4, N'Nhà xuất bản giáo dục', N'091956464', N'Hà Nội')
INSERT [dbo].[Publisher] ([PublisherId], [PublisherName], [Phone], [Address]) VALUES (5, N'Nhà xuất bản lao động', N'091956464', N'Hà Nội')
SET IDENTITY_INSERT [dbo].[Publisher] OFF
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([CategoryId])
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD FOREIGN KEY([PublisherId])
REFERENCES [dbo].[Publisher] ([PublisherId])
GO
