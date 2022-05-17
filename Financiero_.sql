USE [master]
GO
/****** Object:  Database [Financiero]    Script Date: 16/05/2022 22:53:14 ******/
CREATE DATABASE [Financiero]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Financiero', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Financiero.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Financiero_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Financiero_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Financiero] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Financiero].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Financiero] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Financiero] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Financiero] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Financiero] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Financiero] SET ARITHABORT OFF 
GO
ALTER DATABASE [Financiero] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Financiero] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Financiero] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Financiero] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Financiero] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Financiero] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Financiero] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Financiero] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Financiero] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Financiero] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Financiero] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Financiero] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Financiero] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Financiero] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Financiero] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Financiero] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Financiero] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Financiero] SET RECOVERY FULL 
GO
ALTER DATABASE [Financiero] SET  MULTI_USER 
GO
ALTER DATABASE [Financiero] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Financiero] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Financiero] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Financiero] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Financiero] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Financiero] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Financiero', N'ON'
GO
ALTER DATABASE [Financiero] SET QUERY_STORE = OFF
GO
USE [Financiero]
GO
/****** Object:  Table [dbo].[BankAccount]    Script Date: 16/05/2022 22:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankAccount](
	[idBankAccount] [int] NOT NULL,
	[ownerName] [varchar](50) NOT NULL,
	[accountNumber] [varchar](30) NOT NULL,
	[safetyPin] [int] NOT NULL,
	[dueDate] [date] NOT NULL,
	[idUser] [int] NOT NULL,
 CONSTRAINT [PK_BankAccount] PRIMARY KEY CLUSTERED 
(
	[idBankAccount] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Finance]    Script Date: 16/05/2022 22:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Finance](
	[idUser] [int] NOT NULL,
	[delay] [bit] NOT NULL,
	[delayAmount] [float] NOT NULL,
	[penalty] [bit] NOT NULL,
	[penaltyAmount] [float] NOT NULL,
 CONSTRAINT [PK_Finance] PRIMARY KEY CLUSTERED 
(
	[idUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Loan]    Script Date: 16/05/2022 22:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loan](
	[idLoan] [int] NOT NULL,
	[idUser] [int] NOT NULL,
	[activity] [bit] NOT NULL,
	[description] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Loan] PRIMARY KEY CLUSTERED 
(
	[idLoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BankAccount]  WITH CHECK ADD  CONSTRAINT [FK_BankAccount_Finance] FOREIGN KEY([idUser])
REFERENCES [dbo].[Finance] ([idUser])
GO
ALTER TABLE [dbo].[BankAccount] CHECK CONSTRAINT [FK_BankAccount_Finance]
GO
ALTER TABLE [dbo].[Loan]  WITH CHECK ADD  CONSTRAINT [FK_Loan_Finance] FOREIGN KEY([idUser])
REFERENCES [dbo].[Finance] ([idUser])
GO
ALTER TABLE [dbo].[Loan] CHECK CONSTRAINT [FK_Loan_Finance]
GO
USE [master]
GO
ALTER DATABASE [Financiero] SET  READ_WRITE 
GO
