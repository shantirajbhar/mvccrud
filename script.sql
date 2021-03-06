USE [master]
GO
/****** Object:  Database [mvccruddal]    Script Date: 8/23/2021 8:48:44 PM ******/
CREATE DATABASE [mvccruddal]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'mvccruddal', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\mvccruddal.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'mvccruddal_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\mvccruddal_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [mvccruddal] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [mvccruddal].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [mvccruddal] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [mvccruddal] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [mvccruddal] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [mvccruddal] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [mvccruddal] SET ARITHABORT OFF 
GO
ALTER DATABASE [mvccruddal] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [mvccruddal] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [mvccruddal] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [mvccruddal] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [mvccruddal] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [mvccruddal] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [mvccruddal] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [mvccruddal] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [mvccruddal] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [mvccruddal] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [mvccruddal] SET  DISABLE_BROKER 
GO
ALTER DATABASE [mvccruddal] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [mvccruddal] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [mvccruddal] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [mvccruddal] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [mvccruddal] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [mvccruddal] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [mvccruddal] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [mvccruddal] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [mvccruddal] SET  MULTI_USER 
GO
ALTER DATABASE [mvccruddal] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [mvccruddal] SET DB_CHAINING OFF 
GO
ALTER DATABASE [mvccruddal] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [mvccruddal] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [mvccruddal]
GO
/****** Object:  Table [dbo].[users]    Script Date: 8/23/2021 8:48:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[f_name] [varchar](200) NOT NULL,
	[L_name] [varchar](200) NOT NULL,
	[email] [varchar](200) NOT NULL,
	[phone_no] [varchar](200) NOT NULL,
	[city] [varchar](200) NOT NULL,
	[address] [varchar](200) NOT NULL,
	[active] [char](2) NULL DEFAULT ('Y'),
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([id], [f_name], [L_name], [email], [phone_no], [city], [address], [active]) VALUES (1, N'shanti', N'rajbhar', N'shanti@gmail.com', N'9659867359', N'Thane', N'Thane', N'N ')
INSERT [dbo].[users] ([id], [f_name], [L_name], [email], [phone_no], [city], [address], [active]) VALUES (2, N'dfsd', N'fsdf', N'diksha@gmail.com', N'werwer', N'Thane', N'Thane', N'Y ')
INSERT [dbo].[users] ([id], [f_name], [L_name], [email], [phone_no], [city], [address], [active]) VALUES (3, N'kashish', N'singh', N'werwer', N'9685698576', N'', N'', N'N ')
INSERT [dbo].[users] ([id], [f_name], [L_name], [email], [phone_no], [city], [address], [active]) VALUES (4, N'ttttttt', N'fsdf', N'werwer', N'9685698576', N'', N'', N'N ')
INSERT [dbo].[users] ([id], [f_name], [L_name], [email], [phone_no], [city], [address], [active]) VALUES (5, N'kashish', N'fsdf', N'diksha@gmail.com', N'85689958', N'Thane', N'Thane', N'Y ')
INSERT [dbo].[users] ([id], [f_name], [L_name], [email], [phone_no], [city], [address], [active]) VALUES (6, N'pooja', N'kailash', N'poja@gmail.com', N'7867788767', N'mulund', N'mulund', N'Y ')
INSERT [dbo].[users] ([id], [f_name], [L_name], [email], [phone_no], [city], [address], [active]) VALUES (7, N'shanti', N'rajbhar', N'shanti@gmail.com', N'897678987', N'Mumbra', N'Mumbra', N'Y ')
INSERT [dbo].[users] ([id], [f_name], [L_name], [email], [phone_no], [city], [address], [active]) VALUES (8, N'shanti', N'rajbhar', N'shanti@gmail.com', N'897678987', N'Mumbra', N'Mumbra', N'Y ')
SET IDENTITY_INSERT [dbo].[users] OFF
USE [master]
GO
ALTER DATABASE [mvccruddal] SET  READ_WRITE 
GO
