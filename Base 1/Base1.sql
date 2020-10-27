USE [master]
GO
CREATE DATABASE [Periodo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Periodo', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Periodo.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Periodo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Periodo_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Periodo] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Periodo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Periodo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Periodo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Periodo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Periodo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Periodo] SET ARITHABORT OFF 
GO
ALTER DATABASE [Periodo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Periodo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Periodo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Periodo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Periodo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Periodo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Periodo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Periodo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Periodo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Periodo] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Periodo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Periodo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Periodo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Periodo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Periodo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Periodo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Periodo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Periodo] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Periodo] SET  MULTI_USER 
GO
ALTER DATABASE [Periodo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Periodo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Periodo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Periodo] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Periodo] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Periodo] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Periodo] SET QUERY_STORE = OFF
GO
USE [Periodo]
GO
/****** Object:  Table [dbo].[HorariosT]    Script Date: 10/23/2020 10:52:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HorariosT](
	[Id] [int] NOT NULL,
	[DiaTipo] [int] NOT NULL,
	[ClasesDia] [varchar](25) NOT NULL,
	[Periodo] [varchar](25) NOT NULL,
	[TipoPer] [int] NOT NULL,
	[Hora] [varchar](18) NOT NULL,
	[HorasPP] [int] NOT NULL,
	[HorasPI] [int] NOT NULL,
	[HorasPV] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Hora] ([Id], [DiaTipo], [ClasesDia], [Periodo], [TipoPer], [Horario], [HorasPP], [HorasPI], [HorasPV]) VALUES (1, 1, N'Laborable', N'De punta', 1, N'10 a 16', 10, 9, 5)
INSERT [dbo].[Hora] ([Id], [DiaTipo], [ClasesDia], [Periodo], [TipoPer], [Horario], [HorasPP], [HorasPI], [HorasPV]) VALUES (2, 1, N'Laborable', N'De punta', 1, N'18 a 22', 10, 9, 5)
INSERT [dbo].[Hora] ([Id], [DiaTipo], [ClasesDia], [Periodo], [TipoPer], [Horario], [HorasPP], [HorasPI], [HorasPV]) VALUES (3, 2, N'Sabado', N'De punta', 1, N'12 a 13', 2, 16, 6)
INSERT [dbo].[Hora] ([Id], [DiaTipo], [ClasesDia], [Periodo], [TipoPer], [Horario], [HorasPP], [HorasPI], [HorasPV]) VALUES (4, 2, N'Sabado', N'De punta', 1, N'19 a 20', 2, 16, 6)
INSERT [dbo].[Hora] ([Id], [DiaTipo], [ClasesDia], [Periodo], [TipoPer], [Horario], [HorasPP], [HorasPI], [HorasPV]) VALUES (5, 1, N'Laborable', N'Intermedio', 2, N'5 a 10', 10, 9, 5)
INSERT [dbo].[Hora] ([Id], [DiaTipo], [ClasesDia], [Periodo], [TipoPer], [Horario], [HorasPP], [HorasPI], [HorasPV]) VALUES (6, 1, N'Laborable', N'Intermedio', 2, N'16 a 18', 10, 9, 5)
INSERT [dbo].[Hora] ([Id], [DiaTipo], [ClasesDia], [Periodo], [TipoPer], [Horario], [HorasPP], [HorasPI], [HorasPV]) VALUES (7, 1, N'Laborable', N'Intermedio', 2, N'22 a 24', 10, 9, 5)
INSERT [dbo].[Hora] ([Id], [DiaTipo], [ClasesDia], [Periodo], [TipoPer], [Horario], [HorasPP], [HorasPI], [HorasPV]) VALUES (8, 2, N'Sabado', N'Intermedio', 2, N'6 a 12', 2, 16, 6)
INSERT [dbo].[Hora] ([Id], [DiaTipo], [ClasesDia], [Periodo], [TipoPer], [Horario], [HorasPP], [HorasPI], [HorasPV]) VALUES (9, 2, N'Sabado', N'Intermedio', 2, N'13 a 19', 2, 16, 6)
INSERT [dbo].[Hora] ([Id], [DiaTipo], [ClasesDia], [Periodo], [TipoPer], [Horario], [HorasPP], [HorasPI], [HorasPV]) VALUES (10, 2, N'Sabado', N'Intermedio', 2, N'20 a 14', 2, 16, 6)
INSERT [dbo].[Hora] ([Id], [DiaTipo], [ClasesDia], [Periodo], [TipoPer], [Horario], [HorasPP], [HorasPI], [HorasPV]) VALUES (11, 3, N'Domingo o Feriado', N'Intermedio', 2, N'11 a 13', 0, 8, 16)
INSERT [dbo].[Hora] ([Id], [DiaTipo], [ClasesDia], [Periodo], [TipoPer], [Horario], [HorasPP], [HorasPI], [HorasPV]) VALUES (12, 3, N'Domingo o Feriado', N'Intermedio', 2, N'17 a 23', 0, 8, 16)
INSERT [dbo].[Hora] ([Id], [DiaTipo], [ClasesDia], [Periodo], [TipoPer], [Horario], [HorasPP], [HorasPI], [HorasPV]) VALUES (13, 1, N'Laborable', N'De Valle', 3, N'0 a 5', 10, 9, 5)
INSERT [dbo].[Hora] ([Id], [DiaTipo], [ClasesDia], [Periodo], [TipoPer], [Horario], [HorasPP], [HorasPI], [HorasPV]) VALUES (14, 2, N'Sabado', N'De Valle', 3, N'0 a 6', 2, 16, 6)
INSERT [dbo].[Hora] ([Id], [DiaTipo], [ClasesDia], [Periodo], [TipoPer], [Horario], [HorasPP], [HorasPI], [HorasPV]) VALUES (15, 3, N'Domingo o Feriado', N'De Valle', 3, N'0 a 11', 0, 8, 16)
INSERT [dbo].[Hora] ([Id], [DiaTipo], [ClasesDia], [Periodo], [TipoPer], [Horario], [HorasPP], [HorasPI], [HorasPV]) VALUES (16, 3, N'Domingo o Feriado', N'De Valle', 3, N'13 a 17', 0, 8, 16)
INSERT [dbo].[Hora] ([Id], [DiaTipo], [ClasesDia], [Periodo], [TipoPer], [Horario], [HorasPP], [HorasPI], [HorasPV]) VALUES (17, 3, N'Domingo o Feriado', N'De Valle', 3, N'23 a 24', 0, 8, 16)
GO
USE [master]
GO
ALTER DATABASE [Periodo] SET  READ_WRITE 
GO
