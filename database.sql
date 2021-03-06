USE [master]
GO
/****** Object:  Database [bc_web]    Script Date: 20-Jun-21 12:03:13 AM ******/
CREATE DATABASE [bc_web]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'bc_web', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\bc_web.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'bc_web_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\bc_web_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [bc_web] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [bc_web].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [bc_web] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [bc_web] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [bc_web] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [bc_web] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [bc_web] SET ARITHABORT OFF 
GO
ALTER DATABASE [bc_web] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [bc_web] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [bc_web] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [bc_web] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [bc_web] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [bc_web] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [bc_web] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [bc_web] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [bc_web] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [bc_web] SET  DISABLE_BROKER 
GO
ALTER DATABASE [bc_web] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [bc_web] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [bc_web] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [bc_web] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [bc_web] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [bc_web] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [bc_web] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [bc_web] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [bc_web] SET  MULTI_USER 
GO
ALTER DATABASE [bc_web] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [bc_web] SET DB_CHAINING OFF 
GO
ALTER DATABASE [bc_web] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [bc_web] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [bc_web] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [bc_web] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [bc_web] SET QUERY_STORE = OFF
GO
USE [bc_web]
GO
/****** Object:  Default [mac_dinh]    Script Date: 20-Jun-21 12:03:13 AM ******/
CREATE DEFAULT [dbo].[mac_dinh] 
AS
0
GO
/****** Object:  Table [dbo].[ctdondathang]    Script Date: 20-Jun-21 12:03:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ctdondathang](
	[IDdonhang] [int] IDENTITY(1,1) NOT NULL,
	[IDsp] [int] NOT NULL,
	[soluong] [int] NULL,
	[gia] [int] NULL,
	[tongtien] [int] NULL,
 CONSTRAINT [PK_ctdondathang] PRIMARY KEY CLUSTERED 
(
	[IDdonhang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dondathang]    Script Date: 20-Jun-21 12:03:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dondathang](
	[madondathang] [int] IDENTITY(1,1) NOT NULL,
	[makhachhang] [int] NULL,
	[nguoinhan] [nvarchar](50) NULL,
	[sdtnguoinhan] [nvarchar](50) NULL,
	[diachinguoinhan] [nvarchar](50) NULL,
	[emailnguoinhan] [nvarchar](50) NULL,
 CONSTRAINT [PK_dondathang] PRIMARY KEY CLUSTERED 
(
	[madondathang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hangsanxuat]    Script Date: 20-Jun-21 12:03:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hangsanxuat](
	[mahangsanxuat] [int] IDENTITY(1,1) NOT NULL,
	[tenhangsanxuat] [nvarchar](50) NULL,
 CONSTRAINT [PK_hangsanxuat] PRIMARY KEY CLUSTERED 
(
	[mahangsanxuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nguoidung1]    Script Date: 20-Jun-21 12:03:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nguoidung1](
	[taikhoan] [nvarchar](50) NOT NULL,
	[matkhau] [nvarchar](50) NULL,
 CONSTRAINT [PK_nguoidung1] PRIMARY KEY CLUSTERED 
(
	[taikhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[thongtinkhachhang]    Script Date: 20-Jun-21 12:03:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[thongtinkhachhang](
	[makhachhang] [int] NOT NULL,
	[tenkhachhang] [nvarchar](50) NULL,
	[sdt] [nvarchar](50) NULL,
	[diachi] [nvarchar](50) NULL,
 CONSTRAINT [PK_thongtinkhachhang] PRIMARY KEY CLUSTERED 
(
	[makhachhang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[thongtinmathang]    Script Date: 20-Jun-21 12:03:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[thongtinmathang](
	[mamathang] [int] IDENTITY(1,1) NOT NULL,
	[tenmathang] [nvarchar](50) NULL,
	[manhinh] [nvarchar](50) NULL,
	[hedieuhanh] [nvarchar](50) NULL,
	[chip] [nvarchar](50) NULL,
	[camera] [nvarchar](50) NULL,
	[pin] [nvarchar](50) NULL,
	[anh] [nvarchar](200) NULL,
	[RAM] [nvarchar](50) NULL,
	[bonhotrong] [nvarchar](50) NULL,
	[cnmanhinh] [nvarchar](50) NULL,
	[namramat] [int] NULL,
	[gia] [int] NULL,
	[mahangsanxuat] [int] NULL,
	[tinhtrang] [nvarchar](50) NULL,
 CONSTRAINT [PK_thongtinmathang] PRIMARY KEY CLUSTERED 
(
	[mamathang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tintuc]    Script Date: 20-Jun-21 12:03:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tintuc](
	[matin] [nvarchar](50) NOT NULL,
	[tieude] [nvarchar](1000) NOT NULL,
	[anhtin] [nvarchar](100) NULL,
	[noidung] [nvarchar](1000) NULL,
 CONSTRAINT [PK_tintuc] PRIMARY KEY CLUSTERED 
(
	[matin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ctdondathang]  WITH CHECK ADD  CONSTRAINT [FK_ctdondathang_thongtinmathang] FOREIGN KEY([IDsp])
REFERENCES [dbo].[thongtinmathang] ([mamathang])
GO
ALTER TABLE [dbo].[ctdondathang] CHECK CONSTRAINT [FK_ctdondathang_thongtinmathang]
GO
ALTER TABLE [dbo].[dondathang]  WITH CHECK ADD  CONSTRAINT [FK_dondathang_thongtinkhachhang] FOREIGN KEY([makhachhang])
REFERENCES [dbo].[thongtinkhachhang] ([makhachhang])
GO
ALTER TABLE [dbo].[dondathang] CHECK CONSTRAINT [FK_dondathang_thongtinkhachhang]
GO
ALTER TABLE [dbo].[thongtinmathang]  WITH CHECK ADD  CONSTRAINT [FK_thongtinmathang_hangsanxuat] FOREIGN KEY([mahangsanxuat])
REFERENCES [dbo].[hangsanxuat] ([mahangsanxuat])
GO
ALTER TABLE [dbo].[thongtinmathang] CHECK CONSTRAINT [FK_thongtinmathang_hangsanxuat]
GO
USE [master]
GO
ALTER DATABASE [bc_web] SET  READ_WRITE 
GO
