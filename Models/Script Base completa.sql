USE [master]
GO
/****** Object:  Database [MascotasNDMM]    Script Date: 15/2/2024 08:15:14 ******/
CREATE DATABASE [MascotasNDMM]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'mascotasNDMM', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\mascotasNDMM.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'mascotasNDMM_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\mascotasNDMM_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [MascotasNDMM] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MascotasNDMM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MascotasNDMM] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MascotasNDMM] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MascotasNDMM] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MascotasNDMM] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MascotasNDMM] SET ARITHABORT OFF 
GO
ALTER DATABASE [MascotasNDMM] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MascotasNDMM] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MascotasNDMM] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MascotasNDMM] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MascotasNDMM] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MascotasNDMM] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MascotasNDMM] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MascotasNDMM] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MascotasNDMM] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MascotasNDMM] SET  ENABLE_BROKER 
GO
ALTER DATABASE [MascotasNDMM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MascotasNDMM] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MascotasNDMM] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MascotasNDMM] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MascotasNDMM] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MascotasNDMM] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MascotasNDMM] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MascotasNDMM] SET RECOVERY FULL 
GO
ALTER DATABASE [MascotasNDMM] SET  MULTI_USER 
GO
ALTER DATABASE [MascotasNDMM] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MascotasNDMM] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MascotasNDMM] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MascotasNDMM] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MascotasNDMM] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MascotasNDMM] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'MascotasNDMM', N'ON'
GO
ALTER DATABASE [MascotasNDMM] SET QUERY_STORE = ON
GO
ALTER DATABASE [MascotasNDMM] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [MascotasNDMM]
GO
/****** Object:  Table [dbo].[Mascotas]    Script Date: 15/2/2024 08:15:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mascotas](
	[IDMascotas] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Especie] [varchar](50) NOT NULL,
	[Raza] [varchar](50) NULL,
	[Fecha_nacimiento] [date] NOT NULL,
	[Propietario] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDMascotas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Mascotas] ON 
GO
INSERT [dbo].[Mascotas] ([IDMascotas], [Nombre], [Especie], [Raza], [Fecha_nacimiento], [Propietario]) VALUES (4, N'Pansonsito', N'Gato', N'Ciames', CAST(N'2024-01-29' AS Date), N'Leslie')
GO
INSERT [dbo].[Mascotas] ([IDMascotas], [Nombre], [Especie], [Raza], [Fecha_nacimiento], [Propietario]) VALUES (5, N'Lucy', N'Cuyo', N'Mixta', CAST(N'2024-10-09' AS Date), N'Maria')
GO
INSERT [dbo].[Mascotas] ([IDMascotas], [Nombre], [Especie], [Raza], [Fecha_nacimiento], [Propietario]) VALUES (8, N'Peluche', N'Conejo', N'Blanco', CAST(N'2024-02-15' AS Date), N'Juan')
GO
INSERT [dbo].[Mascotas] ([IDMascotas], [Nombre], [Especie], [Raza], [Fecha_nacimiento], [Propietario]) VALUES (9, N'Pepe', N'Perro', N'Bichon frise', CAST(N'2003-10-31' AS Date), N'Hillary')
GO
INSERT [dbo].[Mascotas] ([IDMascotas], [Nombre], [Especie], [Raza], [Fecha_nacimiento], [Propietario]) VALUES (10, N'Rango', N'Perro', N'perro enano', CAST(N'2024-02-15' AS Date), N'Lorena de Rango')
GO
INSERT [dbo].[Mascotas] ([IDMascotas], [Nombre], [Especie], [Raza], [Fecha_nacimiento], [Propietario]) VALUES (11, N'Minki', N'Gato', N'Angora', CAST(N'2023-06-23' AS Date), N'Lili')
GO
SET IDENTITY_INSERT [dbo].[Mascotas] OFF
GO
USE [master]
GO
ALTER DATABASE [MascotasNDMM] SET  READ_WRITE 
GO
