USE [master]
GO
/****** Object:  Database [ExamDB_Module]    Script Date: 06.06.2025 20:15:40 ******/
CREATE DATABASE [ExamDB_Module]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ExamDB_Module', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ExamDB_Module.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ExamDB_Module_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ExamDB_Module_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ExamDB_Module] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ExamDB_Module].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ExamDB_Module] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ExamDB_Module] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ExamDB_Module] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ExamDB_Module] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ExamDB_Module] SET ARITHABORT OFF 
GO
ALTER DATABASE [ExamDB_Module] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ExamDB_Module] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ExamDB_Module] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ExamDB_Module] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ExamDB_Module] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ExamDB_Module] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ExamDB_Module] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ExamDB_Module] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ExamDB_Module] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ExamDB_Module] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ExamDB_Module] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ExamDB_Module] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ExamDB_Module] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ExamDB_Module] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ExamDB_Module] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ExamDB_Module] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ExamDB_Module] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ExamDB_Module] SET RECOVERY FULL 
GO
ALTER DATABASE [ExamDB_Module] SET  MULTI_USER 
GO
ALTER DATABASE [ExamDB_Module] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ExamDB_Module] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ExamDB_Module] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ExamDB_Module] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ExamDB_Module] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ExamDB_Module] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ExamDB_Module] SET QUERY_STORE = OFF
GO
USE [ExamDB_Module]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 06.06.2025 20:15:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[SKU] [nvarchar](50) NOT NULL,
	[Price] [decimal](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 06.06.2025 20:15:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 06.06.2025 20:15:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](256) NOT NULL,
	[FullName] [nvarchar](100) NOT NULL,
	[RoleID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductID], [ProductName], [Description], [SKU], [Price]) VALUES (1, N'Ноутбук "Мощь-15"', N'Современный ноутбук для работы и игр, 16 ГБ ОЗУ, 512 ГБ SSD', N'NB-M15-001', CAST(85000.00 AS Decimal(10, 2)))
INSERT [dbo].[Products] ([ProductID], [ProductName], [Description], [SKU], [Price]) VALUES (2, N'Смартфон "Коннект-X"', N'Флагманский смартфон с тройной камерой и AMOLED-экраном', N'PH-CX-002', CAST(56000.50 AS Decimal(10, 2)))
INSERT [dbo].[Products] ([ProductID], [ProductName], [Description], [SKU], [Price]) VALUES (3, N'Монитор "Визуал-27"', N'27-дюймовый 4K монитор с IPS-матрицей', N'MON-V27-003', CAST(32000.00 AS Decimal(10, 2)))
INSERT [dbo].[Products] ([ProductID], [ProductName], [Description], [SKU], [Price]) VALUES (4, N'Клавиатура "Клик-Про"', N'Механическая клавиатура с RGB-подсветкой', N'KBD-CP-004', CAST(7500.99 AS Decimal(10, 2)))
INSERT [dbo].[Products] ([ProductID], [ProductName], [Description], [SKU], [Price]) VALUES (5, N'Мышь "Точность-Z"', N'Беспроводная игровая мышь с высоким DPI', N'MSE-TZ-005', CAST(4200.00 AS Decimal(10, 2)))
INSERT [dbo].[Products] ([ProductID], [ProductName], [Description], [SKU], [Price]) VALUES (6, N'Веб-камера "Стрим HD"', N'Full HD 1080p веб-камера со встроенным стереомикрофоном для конференций и стриминга.', N'WC-SHD-006', CAST(3500.00 AS Decimal(10, 2)))
INSERT [dbo].[Products] ([ProductID], [ProductName], [Description], [SKU], [Price]) VALUES (7, N'Наушники "Аудиофил-7.1"', N'Игровые наушники с объемным звуком 7.1, RGB-подсветкой и микрофоном с шумоподавлением.', N'HP-AF71-007', CAST(6100.50 AS Decimal(10, 2)))
INSERT [dbo].[Products] ([ProductID], [ProductName], [Description], [SKU], [Price]) VALUES (8, N'МФУ "Офис-Джет 3в1"', N'Многофункциональное устройство: цветной струйный принтер, сканер и копир. Поддержка Wi-Fi.', N'PRN-OJ31-008', CAST(12300.00 AS Decimal(10, 2)))
INSERT [dbo].[Products] ([ProductID], [ProductName], [Description], [SKU], [Price]) VALUES (9, N'SSD-накопитель "Скорость-1ТБ"', N'Высокоскоростной твердотельный накопитель объемом 1 ТБ, интерфейс M.2 NVMe.', N'SSD-S1TB-009', CAST(9800.00 AS Decimal(10, 2)))
INSERT [dbo].[Products] ([ProductID], [ProductName], [Description], [SKU], [Price]) VALUES (10, N'Видеокарта "Графика-RTX"', N'Мощная видеокарта для гейминга в 4K и профессиональных задач. 12 ГБ видеопамяти.', N'GPU-GRTX-010', CAST(65000.00 AS Decimal(10, 2)))
INSERT [dbo].[Products] ([ProductID], [ProductName], [Description], [SKU], [Price]) VALUES (11, N'Сумка для ноутбука "Защита-15"', N'Прочная водоотталкивающая сумка для ноутбуков с диагональю до 15.6 дюймов.', N'BAG-P15-011', CAST(2500.00 AS Decimal(10, 2)))
INSERT [dbo].[Products] ([ProductID], [ProductName], [Description], [SKU], [Price]) VALUES (12, N'USB-хаб "Порт-Плюс 4в1"', N'Компактный USB-C хаб с 4 портами USB 3.0 для расширения возможностей подключения.', N'HUB-PP41-012', CAST(1500.75 AS Decimal(10, 2)))
INSERT [dbo].[Products] ([ProductID], [ProductName], [Description], [SKU], [Price]) VALUES (13, N'ОС "Система Про"', N'Цифровой ключ активации для последней версии операционной системы Professional.', N'OS-SPRO-013', CAST(11000.00 AS Decimal(10, 2)))
INSERT [dbo].[Products] ([ProductID], [ProductName], [Description], [SKU], [Price]) VALUES (14, N'Внешний диск "Архив-2ТБ"', N'Портативный внешний жесткий диск объемом 2 ТБ с интерфейсом USB 3.1.', N'HDD-A2TB-014', CAST(5990.00 AS Decimal(10, 2)))
INSERT [dbo].[Products] ([ProductID], [ProductName], [Description], [SKU], [Price]) VALUES (15, N'Wi-Fi Роутер "Сигнал-Гигабит"', N'Двухдиапазонный гигабитный Wi-Fi роутер с поддержкой стандарта Wi-Fi 6.', N'RTR-SGIGA-015', CAST(5200.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (1, N'Администратор')
INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (3, N'Гость')
INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (2, N'Менеджер')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserID], [Login], [Password], [FullName], [RoleID]) VALUES (1, N'admin', N'adminpass', N'Иванов Иван Иванович', 1)
INSERT [dbo].[Users] ([UserID], [Login], [Password], [FullName], [RoleID]) VALUES (2, N'manager', N'managerpass', N'Петров Петр Петрович', 2)
INSERT [dbo].[Users] ([UserID], [Login], [Password], [FullName], [RoleID]) VALUES (3, N'guest', N'guestpass', N'Сидоров Сидор Сидорович', 3)
INSERT [dbo].[Users] ([UserID], [Login], [Password], [FullName], [RoleID]) VALUES (4, N'adm', N'adm', N'test', 1)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Products__CA1ECF0DD30EE861]    Script Date: 06.06.2025 20:15:41 ******/
ALTER TABLE [dbo].[Products] ADD UNIQUE NONCLUSTERED 
(
	[SKU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Roles__8A2B61605E7E2F2B]    Script Date: 06.06.2025 20:15:41 ******/
ALTER TABLE [dbo].[Roles] ADD UNIQUE NONCLUSTERED 
(
	[RoleName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Users__5E55825B7BD25372]    Script Date: 06.06.2025 20:15:41 ******/
ALTER TABLE [dbo].[Users] ADD UNIQUE NONCLUSTERED 
(
	[Login] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([RoleID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Roles]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [CHK_Products_Price] CHECK  (([Price]>=(0)))
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [CHK_Products_Price]
GO
USE [master]
GO
ALTER DATABASE [ExamDB_Module] SET  READ_WRITE 
GO
