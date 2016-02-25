USE [master]
GO
/****** Object:  Database [BatesMotel]    Script Date: 25/02/2016 03:27:30 ******/
CREATE DATABASE [BatesMotel]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BatesMotel', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\BatesMotel.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BatesMotel_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\BatesMotel_log.ldf' , SIZE = 784KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BatesMotel] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BatesMotel].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BatesMotel] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BatesMotel] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BatesMotel] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BatesMotel] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BatesMotel] SET ARITHABORT OFF 
GO
ALTER DATABASE [BatesMotel] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [BatesMotel] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [BatesMotel] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BatesMotel] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BatesMotel] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BatesMotel] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BatesMotel] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BatesMotel] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BatesMotel] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BatesMotel] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BatesMotel] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BatesMotel] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BatesMotel] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BatesMotel] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BatesMotel] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BatesMotel] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BatesMotel] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BatesMotel] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BatesMotel] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BatesMotel] SET  MULTI_USER 
GO
ALTER DATABASE [BatesMotel] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BatesMotel] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BatesMotel] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BatesMotel] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [BatesMotel]
GO
/****** Object:  Table [dbo].[Bookings]    Script Date: 25/02/2016 03:27:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bookings](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CheckIn_Date] [date] NOT NULL,
	[CheckOut_Date] [date] NOT NULL,
	[RoomID] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Bookings] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Rooms]    Script Date: 25/02/2016 03:27:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rooms](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Room_no] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Rooms] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Bookings]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Bookings_dbo.Rooms_ID] FOREIGN KEY([RoomID])
REFERENCES [dbo].[Rooms] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Bookings] CHECK CONSTRAINT [FK_dbo.Bookings_dbo.Rooms_ID]
GO
USE [master]
GO
ALTER DATABASE [BatesMotel] SET  READ_WRITE 
GO
