USE [master]
GO
/****** Object:  Database [TEC_SanJose]    Script Date: 16/05/2022 21:01:15 ******/
CREATE DATABASE [TEC_SanJose]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TEC_SanJose', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\TEC_SanJose.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TEC_SanJose_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\TEC_SanJose_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [TEC_SanJose] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TEC_SanJose].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TEC_SanJose] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TEC_SanJose] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TEC_SanJose] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TEC_SanJose] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TEC_SanJose] SET ARITHABORT OFF 
GO
ALTER DATABASE [TEC_SanJose] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TEC_SanJose] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TEC_SanJose] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TEC_SanJose] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TEC_SanJose] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TEC_SanJose] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TEC_SanJose] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TEC_SanJose] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TEC_SanJose] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TEC_SanJose] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TEC_SanJose] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TEC_SanJose] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TEC_SanJose] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TEC_SanJose] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TEC_SanJose] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TEC_SanJose] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TEC_SanJose] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TEC_SanJose] SET RECOVERY FULL 
GO
ALTER DATABASE [TEC_SanJose] SET  MULTI_USER 
GO
ALTER DATABASE [TEC_SanJose] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TEC_SanJose] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TEC_SanJose] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TEC_SanJose] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TEC_SanJose] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TEC_SanJose] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'TEC_SanJose', N'ON'
GO
ALTER DATABASE [TEC_SanJose] SET QUERY_STORE = OFF
GO
USE [TEC_SanJose]
GO
/****** Object:  Table [dbo].[Career]    Script Date: 16/05/2022 21:01:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Career](
	[idCareer] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[coordinar] [varchar](50) NOT NULL,
	[period] [varchar](50) NOT NULL,
	[idTeacher] [int] NOT NULL,
	[idSubject] [int] NOT NULL,
 CONSTRAINT [PK_Career] PRIMARY KEY CLUSTERED 
(
	[idCareer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 16/05/2022 21:01:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[idSubject] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[idTeacher] [int] NOT NULL,
	[idCareer] [int] NOT NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[idSubject] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 16/05/2022 21:01:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[idTeacher] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[lastname] [varchar](50) NOT NULL,
	[age] [int] NOT NULL,
	[e-mail] [varchar](50) NOT NULL,
	[active] [bit] NOT NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[idTeacher] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Career]  WITH CHECK ADD  CONSTRAINT [FK_Career_Teacher] FOREIGN KEY([idTeacher])
REFERENCES [dbo].[Teacher] ([idTeacher])
GO
ALTER TABLE [dbo].[Career] CHECK CONSTRAINT [FK_Career_Teacher]
GO
ALTER TABLE [dbo].[Subject]  WITH CHECK ADD  CONSTRAINT [FK_Subject_Career] FOREIGN KEY([idCareer])
REFERENCES [dbo].[Career] ([idCareer])
GO
ALTER TABLE [dbo].[Subject] CHECK CONSTRAINT [FK_Subject_Career]
GO
ALTER TABLE [dbo].[Subject]  WITH CHECK ADD  CONSTRAINT [FK_Subject_Teacher] FOREIGN KEY([idTeacher])
REFERENCES [dbo].[Teacher] ([idTeacher])
GO
ALTER TABLE [dbo].[Subject] CHECK CONSTRAINT [FK_Subject_Teacher]
GO
USE [master]
GO
ALTER DATABASE [TEC_SanJose] SET  READ_WRITE 
GO
