USE [master]
GO
/****** Object:  Database [Libros]    Script Date: 9/5/2022 19:38:53 ******/
CREATE DATABASE [Libros]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Libros', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Libros.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Libros_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Libros_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Libros] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Libros].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Libros] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Libros] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Libros] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Libros] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Libros] SET ARITHABORT OFF 
GO
ALTER DATABASE [Libros] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Libros] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Libros] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Libros] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Libros] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Libros] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Libros] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Libros] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Libros] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Libros] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Libros] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Libros] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Libros] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Libros] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Libros] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Libros] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Libros] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Libros] SET RECOVERY FULL 
GO
ALTER DATABASE [Libros] SET  MULTI_USER 
GO
ALTER DATABASE [Libros] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Libros] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Libros] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Libros] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Libros] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Libros] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Libros', N'ON'
GO
ALTER DATABASE [Libros] SET QUERY_STORE = OFF
GO
USE [Libros]
GO
/****** Object:  Table [dbo].[Datos_Libros]    Script Date: 9/5/2022 19:38:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Datos_Libros](
	[idDatosLibro] [int] IDENTITY(1,1) NOT NULL,
	[idLibro] [int] NOT NULL,
	[nombreLibro] [varchar](50) NOT NULL,
	[nombreAutor] [varchar](50) NOT NULL,
	[nombreEditorial] [varchar](50) NOT NULL,
	[fechaLanzamiento] [date] NOT NULL,
	[edicion] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idDatosLibro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 9/5/2022 19:38:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[idEmpleado] [int] IDENTITY(1,1) NOT NULL,
	[nombreEmpleado] [varchar](50) NOT NULL,
	[apellidoEmpleado] [varchar](50) NOT NULL,
	[telefono] [varchar](9) NOT NULL,
	[tipoEmpleado] [int] NOT NULL,
	[correo] [varchar](50) NOT NULL,
	[fechaNac] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Libros]    Script Date: 9/5/2022 19:38:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Libros](
	[idLibro] [int] IDENTITY(1,1) NOT NULL,
	[idDatosLibro] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idLibro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prestamos]    Script Date: 9/5/2022 19:38:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prestamos](
	[idPrestamo] [int] IDENTITY(1,1) NOT NULL,
	[idLibro] [int] NOT NULL,
	[costo] [int] NOT NULL,
	[fechaSolicitud] [date] NULL,
	[vencimiento] [date] NULL,
	[cancelado] [bit] NOT NULL,
	[idUsuario] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idPrestamo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipoEmpleados]    Script Date: 9/5/2022 19:38:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipoEmpleados](
	[idTipo] [int] IDENTITY(1,1) NOT NULL,
	[nombreTipo] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idTipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_tipo_empleado] FOREIGN KEY([tipoEmpleado])
REFERENCES [dbo].[tipoEmpleados] ([idTipo])
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [FK_tipo_empleado]
GO
ALTER TABLE [dbo].[Libros]  WITH CHECK ADD  CONSTRAINT [FK_id_datos_libro] FOREIGN KEY([idDatosLibro])
REFERENCES [dbo].[Datos_Libros] ([idDatosLibro])
GO
ALTER TABLE [dbo].[Libros] CHECK CONSTRAINT [FK_id_datos_libro]
GO
ALTER TABLE [dbo].[Prestamos]  WITH CHECK ADD  CONSTRAINT [FK_id_libro] FOREIGN KEY([idLibro])
REFERENCES [dbo].[Libros] ([idLibro])
GO
ALTER TABLE [dbo].[Prestamos] CHECK CONSTRAINT [FK_id_libro]
GO
USE [master]
GO
ALTER DATABASE [Libros] SET  READ_WRITE 
GO
