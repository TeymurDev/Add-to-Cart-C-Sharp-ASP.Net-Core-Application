USE [master]
GO
/****** Object:  Database [VegiDb]    Script Date: 1/17/2020 10:38:46 PM ******/
CREATE DATABASE [VegiDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'VegiDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\VegiDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'VegiDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\VegiDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [VegiDb] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [VegiDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [VegiDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [VegiDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [VegiDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [VegiDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [VegiDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [VegiDb] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [VegiDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [VegiDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [VegiDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [VegiDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [VegiDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [VegiDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [VegiDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [VegiDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [VegiDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [VegiDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [VegiDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [VegiDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [VegiDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [VegiDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [VegiDb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [VegiDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [VegiDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [VegiDb] SET  MULTI_USER 
GO
ALTER DATABASE [VegiDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [VegiDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [VegiDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [VegiDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [VegiDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [VegiDb] SET QUERY_STORE = OFF
GO
USE [VegiDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 1/17/2020 10:38:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 1/17/2020 10:38:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](500) NULL,
	[Title] [nvarchar](200) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Cart] [nvarchar](300) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191101125635_initial', N'2.1.4-rtm-31024')
GO
SET IDENTITY_INSERT [dbo].[Products] ON 
GO
INSERT [dbo].[Products] ([Id], [Image], [Title], [Price], [Cart]) VALUES (1, N'product-1.jpg', N'BELL PEPPER', CAST(80.00 AS Decimal(18, 2)), N'<i class=''ion-ios-cart''></i>')
GO
INSERT [dbo].[Products] ([Id], [Image], [Title], [Price], [Cart]) VALUES (2, N'product-2.jpg', N'STRAWBERRY', CAST(120.00 AS Decimal(18, 2)), N'<i class=''ion-ios-cart''></i>')
GO
INSERT [dbo].[Products] ([Id], [Image], [Title], [Price], [Cart]) VALUES (3, N'product-3.jpg', N'GREEN BEANS', CAST(180.00 AS Decimal(18, 2)), N'<i class=''ion-ios-cart''></i>')
GO
INSERT [dbo].[Products] ([Id], [Image], [Title], [Price], [Cart]) VALUES (4, N'product-4.jpg', N'PURPLE CABBAGE', CAST(220.00 AS Decimal(18, 2)), N'<i class=''ion-ios-cart''></i>')
GO
INSERT [dbo].[Products] ([Id], [Image], [Title], [Price], [Cart]) VALUES (5, N'product-5.jpg', N'TOMATO', CAST(110.00 AS Decimal(18, 2)), N'<i class=''ion-ios-cart''></i>')
GO
INSERT [dbo].[Products] ([Id], [Image], [Title], [Price], [Cart]) VALUES (6, N'product-6.jpg', N'BROCOLLI', CAST(90.00 AS Decimal(18, 2)), N'<i class=''ion-ios-cart''></i>')
GO
INSERT [dbo].[Products] ([Id], [Image], [Title], [Price], [Cart]) VALUES (7, N'product-7.jpg', N'CARROTS', CAST(100.00 AS Decimal(18, 2)), N'<i class=''ion-ios-cart''></i>')
GO
INSERT [dbo].[Products] ([Id], [Image], [Title], [Price], [Cart]) VALUES (8, N'product-8.jpg', N'FRUIT JUICE', CAST(130.00 AS Decimal(18, 2)), N'<i class=''ion-ios-cart''></i>')
GO
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
USE [master]
GO
ALTER DATABASE [VegiDb] SET  READ_WRITE 
GO
