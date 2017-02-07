USE [master]
GO
/****** Object:  Database [Restuarant]    Script Date: 2/5/2017 11:25:05 PM ******/
CREATE DATABASE [Restuarant]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Restuarant', FILENAME = N'D:\pro file\SQL\MSSQL12.MSSQLSERVER\MSSQL\DATA\Restuarant.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Restuarant_log', FILENAME = N'D:\pro file\SQL\MSSQL12.MSSQLSERVER\MSSQL\DATA\Restuarant_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Restuarant] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Restuarant].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Restuarant] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Restuarant] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Restuarant] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Restuarant] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Restuarant] SET ARITHABORT OFF 
GO
ALTER DATABASE [Restuarant] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Restuarant] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Restuarant] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Restuarant] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Restuarant] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Restuarant] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Restuarant] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Restuarant] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Restuarant] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Restuarant] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Restuarant] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Restuarant] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Restuarant] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Restuarant] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Restuarant] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Restuarant] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Restuarant] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Restuarant] SET RECOVERY FULL 
GO
ALTER DATABASE [Restuarant] SET  MULTI_USER 
GO
ALTER DATABASE [Restuarant] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Restuarant] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Restuarant] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Restuarant] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Restuarant] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Restuarant', N'ON'
GO
USE [Restuarant]
GO
/****** Object:  Table [dbo].[Item]    Script Date: 2/5/2017 11:25:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Item](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ItemName] [varchar](50) NOT NULL,
	[Price] [float] NOT NULL,
	[Description] [varchar](250) NULL,
	[Category] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Item] ON 

INSERT [dbo].[Item] ([Id], [ItemName], [Price], [Description], [Category]) VALUES (1, N'CocaCola', 40, N'', N'Beverage')
INSERT [dbo].[Item] ([Id], [ItemName], [Price], [Description], [Category]) VALUES (2, N'Pasta', 400, N'roasted butternut,creamy Italian cheese and spinach', N'Food')
INSERT [dbo].[Item] ([Id], [ItemName], [Price], [Description], [Category]) VALUES (3, N'Coffee', 100, N'prepared from roasted coffee beans', N'Beverage')
SET IDENTITY_INSERT [dbo].[Item] OFF
USE [master]
GO
ALTER DATABASE [Restuarant] SET  READ_WRITE 
GO
