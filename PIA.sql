USE [PIA_LBD]
GO
/****** Object:  StoredProcedure [dbo].[TelRestaurante]    Script Date: 18/05/2019 05:20:00 p. m. ******/
DROP PROCEDURE [dbo].[TelRestaurante]
GO
/****** Object:  StoredProcedure [dbo].[Restaurante]    Script Date: 18/05/2019 05:20:00 p. m. ******/
DROP PROCEDURE [dbo].[Restaurante]
GO
/****** Object:  StoredProcedure [dbo].[reserva]    Script Date: 18/05/2019 05:20:00 p. m. ******/
DROP PROCEDURE [dbo].[reserva]
GO
/****** Object:  StoredProcedure [dbo].[Postres]    Script Date: 18/05/2019 05:20:00 p. m. ******/
DROP PROCEDURE [dbo].[Postres]
GO
/****** Object:  StoredProcedure [dbo].[NombreCliente]    Script Date: 18/05/2019 05:20:00 p. m. ******/
DROP PROCEDURE [dbo].[NombreCliente]
GO
/****** Object:  StoredProcedure [dbo].[Informacion]    Script Date: 18/05/2019 05:20:00 p. m. ******/
DROP PROCEDURE [dbo].[Informacion]
GO
/****** Object:  StoredProcedure [dbo].[IdCliente]    Script Date: 18/05/2019 05:20:00 p. m. ******/
DROP PROCEDURE [dbo].[IdCliente]
GO
/****** Object:  StoredProcedure [dbo].[Comida]    Script Date: 18/05/2019 05:20:00 p. m. ******/
DROP PROCEDURE [dbo].[Comida]
GO
/****** Object:  StoredProcedure [dbo].[Clientes]    Script Date: 18/05/2019 05:20:00 p. m. ******/
DROP PROCEDURE [dbo].[Clientes]
GO
/****** Object:  StoredProcedure [dbo].[Bebidas]    Script Date: 18/05/2019 05:20:00 p. m. ******/
DROP PROCEDURE [dbo].[Bebidas]
GO
ALTER TABLE [dbo].[Ticket] DROP CONSTRAINT [FK_Ticket_Reservacion]
GO
ALTER TABLE [dbo].[Ticket] DROP CONSTRAINT [FK_Ticket_Pedido]
GO
ALTER TABLE [dbo].[Ticket] DROP CONSTRAINT [FK_Ticket_Pago_Metodo]
GO
ALTER TABLE [dbo].[Ticket] DROP CONSTRAINT [FK_Ticket_Info_Gral]
GO
ALTER TABLE [dbo].[Pedido] DROP CONSTRAINT [FK_Pedido_Postre]
GO
ALTER TABLE [dbo].[Pedido] DROP CONSTRAINT [FK_Pedido_Platillo]
GO
ALTER TABLE [dbo].[Pedido] DROP CONSTRAINT [FK_Pedido_Bebida]
GO
/****** Object:  View [dbo].[vista_1]    Script Date: 18/05/2019 05:20:00 p. m. ******/
DROP VIEW [dbo].[vista_1]
GO
/****** Object:  View [dbo].[vista_10]    Script Date: 18/05/2019 05:20:00 p. m. ******/
DROP VIEW [dbo].[vista_10]
GO
/****** Object:  View [dbo].[vista_9]    Script Date: 18/05/2019 05:20:00 p. m. ******/
DROP VIEW [dbo].[vista_9]
GO
/****** Object:  Table [dbo].[Info_Gral]    Script Date: 18/05/2019 05:20:00 p. m. ******/
DROP TABLE [dbo].[Info_Gral]
GO
/****** Object:  Table [dbo].[Reservacion]    Script Date: 18/05/2019 05:20:00 p. m. ******/
DROP TABLE [dbo].[Reservacion]
GO
/****** Object:  Table [dbo].[Ticket]    Script Date: 18/05/2019 05:20:00 p. m. ******/
DROP TABLE [dbo].[Ticket]
GO
/****** Object:  View [dbo].[vista_8]    Script Date: 18/05/2019 05:20:00 p. m. ******/
DROP VIEW [dbo].[vista_8]
GO
/****** Object:  Table [dbo].[Pedido]    Script Date: 18/05/2019 05:20:00 p. m. ******/
DROP TABLE [dbo].[Pedido]
GO
/****** Object:  View [dbo].[vista_7]    Script Date: 18/05/2019 05:20:00 p. m. ******/
DROP VIEW [dbo].[vista_7]
GO
/****** Object:  Table [dbo].[TipoPago]    Script Date: 18/05/2019 05:20:00 p. m. ******/
DROP TABLE [dbo].[TipoPago]
GO
/****** Object:  View [dbo].[vista_6]    Script Date: 18/05/2019 05:20:00 p. m. ******/
DROP VIEW [dbo].[vista_6]
GO
/****** Object:  Table [dbo].[Platillo]    Script Date: 18/05/2019 05:20:00 p. m. ******/
DROP TABLE [dbo].[Platillo]
GO
/****** Object:  View [dbo].[vista_5]    Script Date: 18/05/2019 05:20:00 p. m. ******/
DROP VIEW [dbo].[vista_5]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 18/05/2019 05:20:00 p. m. ******/
DROP TABLE [dbo].[Cliente]
GO
/****** Object:  View [dbo].[vista_4]    Script Date: 18/05/2019 05:20:00 p. m. ******/
DROP VIEW [dbo].[vista_4]
GO
/****** Object:  Table [dbo].[Bebida]    Script Date: 18/05/2019 05:20:00 p. m. ******/
DROP TABLE [dbo].[Bebida]
GO
/****** Object:  View [dbo].[vista_3]    Script Date: 18/05/2019 05:20:00 p. m. ******/
DROP VIEW [dbo].[vista_3]
GO
/****** Object:  Table [dbo].[Pago_Metodo]    Script Date: 18/05/2019 05:20:00 p. m. ******/
DROP TABLE [dbo].[Pago_Metodo]
GO
/****** Object:  View [dbo].[vista_2]    Script Date: 18/05/2019 05:20:00 p. m. ******/
DROP VIEW [dbo].[vista_2]
GO
/****** Object:  Table [dbo].[Postre]    Script Date: 18/05/2019 05:20:00 p. m. ******/
DROP TABLE [dbo].[Postre]
GO
USE [master]
GO
/****** Object:  Database [PIA_LBD]    Script Date: 18/05/2019 05:20:00 p. m. ******/
DROP DATABASE [PIA_LBD]
GO
/****** Object:  Database [PIA_LBD]    Script Date: 18/05/2019 05:20:00 p. m. ******/
CREATE DATABASE [PIA_LBD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PIA_LBD', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\PIA_LBD.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PIA_LBD_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\PIA_LBD_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [PIA_LBD] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PIA_LBD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PIA_LBD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PIA_LBD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PIA_LBD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PIA_LBD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PIA_LBD] SET ARITHABORT OFF 
GO
ALTER DATABASE [PIA_LBD] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PIA_LBD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PIA_LBD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PIA_LBD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PIA_LBD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PIA_LBD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PIA_LBD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PIA_LBD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PIA_LBD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PIA_LBD] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PIA_LBD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PIA_LBD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PIA_LBD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PIA_LBD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PIA_LBD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PIA_LBD] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PIA_LBD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PIA_LBD] SET RECOVERY FULL 
GO
ALTER DATABASE [PIA_LBD] SET  MULTI_USER 
GO
ALTER DATABASE [PIA_LBD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PIA_LBD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PIA_LBD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PIA_LBD] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PIA_LBD] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'PIA_LBD', N'ON'
GO
ALTER DATABASE [PIA_LBD] SET QUERY_STORE = OFF
GO
USE [PIA_LBD]
GO
/****** Object:  Table [dbo].[Postre]    Script Date: 18/05/2019 05:20:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Postre](
	[Postre_code] [int] NOT NULL,
	[Descripcion_po] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Postre] PRIMARY KEY CLUSTERED 
(
	[Postre_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vista_2]    Script Date: 18/05/2019 05:20:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create view [dbo].[vista_2] as
SELECT
   MAX(POSTRE_CODE)     AS CODIGO_DE_POSTRE
,  DESCRIPCION_PO         AS DESCRIPCION_DE_POSTRE
FROM
   DBO.POSTRE
GROUP BY
   DESCRIPCION_PO
GO
/****** Object:  Table [dbo].[Pago_Metodo]    Script Date: 18/05/2019 05:20:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pago_Metodo](
	[Pago_code] [int] NOT NULL,
	[TPago] [int] NOT NULL,
 CONSTRAINT [PK_Pago_Metodo] PRIMARY KEY CLUSTERED 
(
	[Pago_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vista_3]    Script Date: 18/05/2019 05:20:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create view [dbo].[vista_3] as
SELECT
   SUM(TPAGO)           AS TIPO_DE_PAGO
FROM
   DBO.PAGO_METODO
GO
/****** Object:  Table [dbo].[Bebida]    Script Date: 18/05/2019 05:20:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bebida](
	[Bebida_code] [int] NOT NULL,
	[Descripcion_b] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Bebida] PRIMARY KEY CLUSTERED 
(
	[Bebida_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vista_4]    Script Date: 18/05/2019 05:20:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vista_4] as
SELECT 
   COUNT(BEBIDA_CODE)     AS CODIGO_DE_BEBIDA
,  DESCRIPCION_B           AS DESCRIPCION_DE_BEBIDA
FROM 
   DBO.BEBIDA
GROUP BY 
   DESCRIPCION_B
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 18/05/2019 05:20:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[Cliente_code] [int] NOT NULL,
	[ApPaterno_c] [varchar](50) NOT NULL,
	[ApMaterno_c] [varchar](50) NOT NULL,
	[Nombre_c] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[Cliente_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vista_5]    Script Date: 18/05/2019 05:20:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create view [dbo].[vista_5] as
SELECT 
   APPATERNO_C     AS APELLIDO_PATERNO
,  NOMBRE_C        AS NOMBRE_O_NOMBRES
,  APMATERNO_C     AS APELLIDO_MATERNO
FROM 
   DBO.CLIENTE
GO
/****** Object:  Table [dbo].[Platillo]    Script Date: 18/05/2019 05:20:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Platillo](
	[Platillo_code] [int] NOT NULL,
	[Descripcion_pl] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Platillo] PRIMARY KEY CLUSTERED 
(
	[Platillo_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vista_6]    Script Date: 18/05/2019 05:20:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[vista_6] as 
SELECT
   DESCRIPCION_PL     AS DESCRIPTION_DE_PLATILLO
FROM
   DBO.PLATILLO
GO
/****** Object:  Table [dbo].[TipoPago]    Script Date: 18/05/2019 05:20:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoPago](
	[Tpago_code] [int] NOT NULL,
	[Efectivo] [bit] NOT NULL,
	[TDD] [bit] NOT NULL,
	[TDC] [bit] NOT NULL,
 CONSTRAINT [PK_TipoPago] PRIMARY KEY CLUSTERED 
(
	[Tpago_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vista_7]    Script Date: 18/05/2019 05:20:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create view [dbo].[vista_7] as
SELECT
   TPAGO_CODE      AS CODIGO_DE_TIPO_DE_PAGO
,  EFECTIVO        AS EFECTIVO
,  TDD             AS TARJETA_DE_DEBITO
,  TDC             AS TARJETA_DE_CREDITO
FROM
   DBO.TIPOPAGO
GO
/****** Object:  Table [dbo].[Pedido]    Script Date: 18/05/2019 05:20:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pedido](
	[Pedido_code] [int] NOT NULL,
	[Platillo_code] [int] NOT NULL,
	[Bebida_code] [int] NOT NULL,
	[Postre_code] [int] NOT NULL,
 CONSTRAINT [PK_Pedido] PRIMARY KEY CLUSTERED 
(
	[Pedido_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vista_8]    Script Date: 18/05/2019 05:20:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create view [dbo].[vista_8] as
SELECT
   PEDIDO_CODE     AS CODIGO_DE_PEDIDO
,  PLATILLO_CODE   AS CODIGO_DE_PLATILLO
,  BEBIDA_CODE     AS CODIGO_DE_BEBIDA
,  POSTRE_CODE     AS CODIGO_dE_POSTRE
FROM
   DBO.PEDIDO
GO
/****** Object:  Table [dbo].[Ticket]    Script Date: 18/05/2019 05:20:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ticket](
	[Ticket_code] [int] NOT NULL,
	[Pedido_code] [int] NOT NULL,
	[Pago_code] [int] NOT NULL,
	[Reserv_code] [int] NOT NULL,
	[Info_code] [int] NOT NULL,
 CONSTRAINT [PK_Ticket] PRIMARY KEY CLUSTERED 
(
	[Ticket_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reservacion]    Script Date: 18/05/2019 05:20:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservacion](
	[Reserv_code] [int] NOT NULL,
	[Cliente_code] [int] NOT NULL,
 CONSTRAINT [PK_Reservacion] PRIMARY KEY CLUSTERED 
(
	[Reserv_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Info_Gral]    Script Date: 18/05/2019 05:20:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Info_Gral](
	[Info_code] [int] NOT NULL,
	[Descripcion_info] [varchar](50) NOT NULL,
	[Telefono_info] [int] NOT NULL,
	[Correo] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Info_Gral] PRIMARY KEY CLUSTERED 
(
	[Info_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vista_9]    Script Date: 18/05/2019 05:20:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create view [dbo].[vista_9] as
SELECT 
   CLIEN.NOMBRE_C         AS NOMBRES_DEL_CLIENTE
,  CLIEN.APPATERNO_C      AS APELLIDO_PATERNO_DE_CLIENTE
,  BEBI.DESCRIPCION_B       AS DESCRIPCION_DE_BEBIDA
,  INFOGR.TELEFONO_INFO        AS TELEFONO_DE_INFORMACION_GENERAL
,  INFOGR.CORREO          AS CORREO_DE_INFORMACION_GENERAL
,  METPAG.TPAGO           AS TIPO_DE_METODO_DE_PAGO
,  PED.PEDIDO_CODE        AS CODIGO_DEL_PEDIDO
,  PLAT.DESCRIPCION_PL       AS DESCRIPCION_DEL_PLATILLO
,  POST.DESCRIPCION_PO       AS DESCRIPCION_DEL_POSTRE
,  RESER.RESERV_CODE AS CODIGO_DE_RESERVACION
,  TICKET.TICKET_CODE     AS CODIGO_DE_TICKET
,  TIPPAG.EFECTIVO        AS PAGO_CON_EFECTIVO
,  TIPPAG.TDD             AS PAGO_CON_TARJETA_DE_DEBITO
,  TIPPAG.TDC             AS PAGOI_CON_TARJETA_DE_CREDITO
FROM 
   DBO.BEBIDA             BEBI
,  DBO.CLIENTE            CLIEN
,  DBO.INFO_GRAL          INFOGR
,  DBO.PAGO_METODO        METPAG
,  DBO.PEDIDO             PED
,  DBO.PLATILLO           PLAT
,  DBO.POSTRE             POST
,  DBO.RESERVACION        RESER
,  DBO.TICKET             TICKET
,  DBO.TIPOPAGO           TIPPAG
;
GO
/****** Object:  View [dbo].[vista_10]    Script Date: 18/05/2019 05:20:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create view [dbo].[vista_10] as
SELECT 
   CLIEN.NOMBRE_C         AS NOMBRES_DEL_CLIENTE
,  CLIEN.APPATERNO_C      AS APELLIDO_PATERNO_DE_CLIENTE
,  BEBI.DESCRIPCION_B       AS DESCRIPCION_DE_BEBIDA
,  INFOGR.TELEFONO_INFO        AS TELEFONO_DE_INFORMACION_GENERAL
,  INFOGR.CORREO          AS CORREO_DE_INFORMACION_GENERAL
,  METPAG.TPAGO           AS TIPO_DE_METODO_DE_PAGO
,  PED.PEDIDO_CODE        AS CODIGO_DEL_PEDIDO
,  PLAT.DESCRIPCION_PL       AS DESCRIPCION_DEL_PLATILLO
,  POST.DESCRIPCION_PO       AS DESCRIPCION_DEL_POSTRE
,  RESER.RESERV_CODE AS CODIGO_DE_RESERVACION
,  TICKET.TICKET_CODE     AS CODIGO_DE_TICKET
,  TIPPAG.EFECTIVO        AS PAGO_CON_EFECTIVO
,  TIPPAG.TDD             AS PAGO_CON_TARJETA_DE_DEBITO
,  TIPPAG.TDC             AS PAGOI_CON_TARJETA_DE_CREDITO
FROM 
   DBO.BEBIDA             BEBI
,  DBO.CLIENTE            CLIEN
,  DBO.INFO_GRAL          INFOGR
,  DBO.PAGO_METODO        METPAG
,  DBO.PEDIDO             PED
,  DBO.PLATILLO           PLAT
,  DBO.POSTRE             POST
,  DBO.RESERVACION        RESER
,  DBO.TICKET             TICKET
,  DBO.TIPOPAGO           TIPPAG
GO
/****** Object:  View [dbo].[vista_1]    Script Date: 18/05/2019 05:20:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create view [dbo].[vista_1] as
SELECT 
*
FROM 
  DBO.INFO_GRAL        INFOGR
GO
INSERT [dbo].[Bebida] ([Bebida_code], [Descripcion_b]) VALUES (2, N'Sprite')
INSERT [dbo].[Bebida] ([Bebida_code], [Descripcion_b]) VALUES (3, N'Manzanita')
INSERT [dbo].[Bebida] ([Bebida_code], [Descripcion_b]) VALUES (4, N'FuzeTea')
INSERT [dbo].[Bebida] ([Bebida_code], [Descripcion_b]) VALUES (5, N'Fanta')
INSERT [dbo].[Bebida] ([Bebida_code], [Descripcion_b]) VALUES (6, N'Agua Mineral')
INSERT [dbo].[Bebida] ([Bebida_code], [Descripcion_b]) VALUES (7, N'Agua Natural')
INSERT [dbo].[Bebida] ([Bebida_code], [Descripcion_b]) VALUES (8, N'Cafe')
INSERT [dbo].[Bebida] ([Bebida_code], [Descripcion_b]) VALUES (9, N'Limonada')
INSERT [dbo].[Bebida] ([Bebida_code], [Descripcion_b]) VALUES (10, N'Naranjada')
INSERT [dbo].[Bebida] ([Bebida_code], [Descripcion_b]) VALUES (11, N'Piña colada')
INSERT [dbo].[Cliente] ([Cliente_code], [ApPaterno_c], [ApMaterno_c], [Nombre_c]) VALUES (2, N'Ornelas', N'Castillo', N'Lizbeth Alexandra')
INSERT [dbo].[Cliente] ([Cliente_code], [ApPaterno_c], [ApMaterno_c], [Nombre_c]) VALUES (3, N'Godinez', N'Perez', N'Fermin')
INSERT [dbo].[Cliente] ([Cliente_code], [ApPaterno_c], [ApMaterno_c], [Nombre_c]) VALUES (4, N'Carreon', N'Uriel', N'Brandon')
INSERT [dbo].[Cliente] ([Cliente_code], [ApPaterno_c], [ApMaterno_c], [Nombre_c]) VALUES (5, N'Carpio', N'Herrera', N'Jose Juan')
INSERT [dbo].[Cliente] ([Cliente_code], [ApPaterno_c], [ApMaterno_c], [Nombre_c]) VALUES (6, N'Laureano', N'Martinez', N'Felipe ')
INSERT [dbo].[Cliente] ([Cliente_code], [ApPaterno_c], [ApMaterno_c], [Nombre_c]) VALUES (7, N'Tovar', N'Hilario', N'Tomas')
INSERT [dbo].[Cliente] ([Cliente_code], [ApPaterno_c], [ApMaterno_c], [Nombre_c]) VALUES (8, N'Yañez', N'Torres', N'Antonio')
INSERT [dbo].[Cliente] ([Cliente_code], [ApPaterno_c], [ApMaterno_c], [Nombre_c]) VALUES (9, N'Guajardo', N'Hernandez', N'Bernardo')
INSERT [dbo].[Cliente] ([Cliente_code], [ApPaterno_c], [ApMaterno_c], [Nombre_c]) VALUES (10, N'Guajardo', N'Castillo', N'Olga Lydia')
INSERT [dbo].[Cliente] ([Cliente_code], [ApPaterno_c], [ApMaterno_c], [Nombre_c]) VALUES (11, N'Ortiz', N'Castillo', N'Alexandra')
INSERT [dbo].[Cliente] ([Cliente_code], [ApPaterno_c], [ApMaterno_c], [Nombre_c]) VALUES (12, N'Fernandez', N'Perez', N'Fernando')
INSERT [dbo].[Cliente] ([Cliente_code], [ApPaterno_c], [ApMaterno_c], [Nombre_c]) VALUES (13, N'Carrizales', N'Uriel', N'Pedro')
INSERT [dbo].[Cliente] ([Cliente_code], [ApPaterno_c], [ApMaterno_c], [Nombre_c]) VALUES (14, N'Renteria', N'Herrera', N'Jose Felipe')
INSERT [dbo].[Cliente] ([Cliente_code], [ApPaterno_c], [ApMaterno_c], [Nombre_c]) VALUES (15, N'Gonzalez', N'Martinez', N'Felipe ')
INSERT [dbo].[Cliente] ([Cliente_code], [ApPaterno_c], [ApMaterno_c], [Nombre_c]) VALUES (16, N'Gomez', N'Hilario', N'Ricardo')
INSERT [dbo].[Cliente] ([Cliente_code], [ApPaterno_c], [ApMaterno_c], [Nombre_c]) VALUES (17, N'Hernandez', N'Torres', N'Eduardo')
INSERT [dbo].[Cliente] ([Cliente_code], [ApPaterno_c], [ApMaterno_c], [Nombre_c]) VALUES (18, N'Tamez', N'Hernandez', N'Max')
INSERT [dbo].[Cliente] ([Cliente_code], [ApPaterno_c], [ApMaterno_c], [Nombre_c]) VALUES (19, N'Blanco', N'Castro', N'Marin')
INSERT [dbo].[Cliente] ([Cliente_code], [ApPaterno_c], [ApMaterno_c], [Nombre_c]) VALUES (20, N'Guzman', N'Rodriguez', N'Melisa')
INSERT [dbo].[Info_Gral] ([Info_code], [Descripcion_info], [Telefono_info], [Correo]) VALUES (1, N'EL LINGOTE', 924839, N'ellingote@gmail.com')
INSERT [dbo].[Pago_Metodo] ([Pago_code], [TPago]) VALUES (1, 1)
INSERT [dbo].[Pago_Metodo] ([Pago_code], [TPago]) VALUES (2, 2)
INSERT [dbo].[Pago_Metodo] ([Pago_code], [TPago]) VALUES (3, 1)
INSERT [dbo].[Pago_Metodo] ([Pago_code], [TPago]) VALUES (4, 4)
INSERT [dbo].[Pago_Metodo] ([Pago_code], [TPago]) VALUES (5, 6)
INSERT [dbo].[Pago_Metodo] ([Pago_code], [TPago]) VALUES (6, 1)
INSERT [dbo].[Pago_Metodo] ([Pago_code], [TPago]) VALUES (7, 7)
INSERT [dbo].[Pago_Metodo] ([Pago_code], [TPago]) VALUES (8, 1)
INSERT [dbo].[Pago_Metodo] ([Pago_code], [TPago]) VALUES (9, 3)
INSERT [dbo].[Pago_Metodo] ([Pago_code], [TPago]) VALUES (10, 1)
INSERT [dbo].[Pago_Metodo] ([Pago_code], [TPago]) VALUES (11, 3)
INSERT [dbo].[Pago_Metodo] ([Pago_code], [TPago]) VALUES (12, 3)
INSERT [dbo].[Pago_Metodo] ([Pago_code], [TPago]) VALUES (13, 6)
INSERT [dbo].[Pago_Metodo] ([Pago_code], [TPago]) VALUES (14, 1)
INSERT [dbo].[Pago_Metodo] ([Pago_code], [TPago]) VALUES (15, 1)
INSERT [dbo].[Pago_Metodo] ([Pago_code], [TPago]) VALUES (16, 3)
INSERT [dbo].[Pago_Metodo] ([Pago_code], [TPago]) VALUES (17, 1)
INSERT [dbo].[Pago_Metodo] ([Pago_code], [TPago]) VALUES (18, 3)
INSERT [dbo].[Pago_Metodo] ([Pago_code], [TPago]) VALUES (19, 5)
INSERT [dbo].[Pago_Metodo] ([Pago_code], [TPago]) VALUES (20, 5)
INSERT [dbo].[Pago_Metodo] ([Pago_code], [TPago]) VALUES (21, 6)
INSERT [dbo].[Pago_Metodo] ([Pago_code], [TPago]) VALUES (22, 1)
INSERT [dbo].[Pedido] ([Pedido_code], [Platillo_code], [Bebida_code], [Postre_code]) VALUES (1, 1, 3, 3)
INSERT [dbo].[Pedido] ([Pedido_code], [Platillo_code], [Bebida_code], [Postre_code]) VALUES (2, 2, 2, 5)
INSERT [dbo].[Pedido] ([Pedido_code], [Platillo_code], [Bebida_code], [Postre_code]) VALUES (3, 5, 2, 6)
INSERT [dbo].[Pedido] ([Pedido_code], [Platillo_code], [Bebida_code], [Postre_code]) VALUES (4, 6, 2, 2)
INSERT [dbo].[Pedido] ([Pedido_code], [Platillo_code], [Bebida_code], [Postre_code]) VALUES (5, 3, 2, 1)
INSERT [dbo].[Pedido] ([Pedido_code], [Platillo_code], [Bebida_code], [Postre_code]) VALUES (6, 3, 2, 4)
INSERT [dbo].[Pedido] ([Pedido_code], [Platillo_code], [Bebida_code], [Postre_code]) VALUES (7, 7, 2, 5)
INSERT [dbo].[Pedido] ([Pedido_code], [Platillo_code], [Bebida_code], [Postre_code]) VALUES (8, 10, 2, 6)
INSERT [dbo].[Pedido] ([Pedido_code], [Platillo_code], [Bebida_code], [Postre_code]) VALUES (9, 1, 2, 4)
INSERT [dbo].[Pedido] ([Pedido_code], [Platillo_code], [Bebida_code], [Postre_code]) VALUES (10, 12, 2, 4)
INSERT [dbo].[Pedido] ([Pedido_code], [Platillo_code], [Bebida_code], [Postre_code]) VALUES (11, 6, 2, 3)
INSERT [dbo].[Pedido] ([Pedido_code], [Platillo_code], [Bebida_code], [Postre_code]) VALUES (12, 1, 2, 2)
INSERT [dbo].[Pedido] ([Pedido_code], [Platillo_code], [Bebida_code], [Postre_code]) VALUES (13, 1, 2, 5)
INSERT [dbo].[Pedido] ([Pedido_code], [Platillo_code], [Bebida_code], [Postre_code]) VALUES (14, 1, 4, 2)
INSERT [dbo].[Pedido] ([Pedido_code], [Platillo_code], [Bebida_code], [Postre_code]) VALUES (15, 1, 2, 5)
INSERT [dbo].[Pedido] ([Pedido_code], [Platillo_code], [Bebida_code], [Postre_code]) VALUES (16, 4, 2, 8)
INSERT [dbo].[Pedido] ([Pedido_code], [Platillo_code], [Bebida_code], [Postre_code]) VALUES (17, 9, 2, 9)
INSERT [dbo].[Pedido] ([Pedido_code], [Platillo_code], [Bebida_code], [Postre_code]) VALUES (18, 3, 2, 10)
INSERT [dbo].[Pedido] ([Pedido_code], [Platillo_code], [Bebida_code], [Postre_code]) VALUES (19, 1, 2, 3)
INSERT [dbo].[Pedido] ([Pedido_code], [Platillo_code], [Bebida_code], [Postre_code]) VALUES (20, 5, 2, 5)
INSERT [dbo].[Pedido] ([Pedido_code], [Platillo_code], [Bebida_code], [Postre_code]) VALUES (21, 10, 2, 9)
INSERT [dbo].[Pedido] ([Pedido_code], [Platillo_code], [Bebida_code], [Postre_code]) VALUES (22, 11, 2, 10)
INSERT [dbo].[Pedido] ([Pedido_code], [Platillo_code], [Bebida_code], [Postre_code]) VALUES (23, 12, 2, 4)
INSERT [dbo].[Platillo] ([Platillo_code], [Descripcion_pl]) VALUES (1, N'Caldo de res')
INSERT [dbo].[Platillo] ([Platillo_code], [Descripcion_pl]) VALUES (2, N'Caldo de pollo')
INSERT [dbo].[Platillo] ([Platillo_code], [Descripcion_pl]) VALUES (3, N'Caldo de pescado')
INSERT [dbo].[Platillo] ([Platillo_code], [Descripcion_pl]) VALUES (4, N'Sopa de arroz')
INSERT [dbo].[Platillo] ([Platillo_code], [Descripcion_pl]) VALUES (5, N'Albondigas')
INSERT [dbo].[Platillo] ([Platillo_code], [Descripcion_pl]) VALUES (6, N'Tacos de carne asada')
INSERT [dbo].[Platillo] ([Platillo_code], [Descripcion_pl]) VALUES (7, N'Tacos de trompo')
INSERT [dbo].[Platillo] ([Platillo_code], [Descripcion_pl]) VALUES (8, N'Hamburguesa basica')
INSERT [dbo].[Platillo] ([Platillo_code], [Descripcion_pl]) VALUES (9, N'Hamburguesa doble')
INSERT [dbo].[Platillo] ([Platillo_code], [Descripcion_pl]) VALUES (10, N'Hamburguesa 4to libra')
INSERT [dbo].[Platillo] ([Platillo_code], [Descripcion_pl]) VALUES (11, N'Hamburguesa sin queso')
INSERT [dbo].[Platillo] ([Platillo_code], [Descripcion_pl]) VALUES (12, N'Hamburguesa con trompo')
INSERT [dbo].[Platillo] ([Platillo_code], [Descripcion_pl]) VALUES (13, N'Hamburguesa F')
INSERT [dbo].[Platillo] ([Platillo_code], [Descripcion_pl]) VALUES (14, N'Hamburguesa infantil')
INSERT [dbo].[Platillo] ([Platillo_code], [Descripcion_pl]) VALUES (15, N'Hamburguesa Fornite')
INSERT [dbo].[Platillo] ([Platillo_code], [Descripcion_pl]) VALUES (16, N'Hamburguesa K')
INSERT [dbo].[Platillo] ([Platillo_code], [Descripcion_pl]) VALUES (17, N'Hamburguesa Triple')
INSERT [dbo].[Platillo] ([Platillo_code], [Descripcion_pl]) VALUES (18, N'Torta basica')
INSERT [dbo].[Platillo] ([Platillo_code], [Descripcion_pl]) VALUES (19, N'Torta de res')
INSERT [dbo].[Platillo] ([Platillo_code], [Descripcion_pl]) VALUES (20, N'Torta de pollo')
INSERT [dbo].[Platillo] ([Platillo_code], [Descripcion_pl]) VALUES (21, N'Torta ahogada')
INSERT [dbo].[Platillo] ([Platillo_code], [Descripcion_pl]) VALUES (22, N'Torta de tamal')
INSERT [dbo].[Platillo] ([Platillo_code], [Descripcion_pl]) VALUES (23, N'Filete de res 3/4')
INSERT [dbo].[Platillo] ([Platillo_code], [Descripcion_pl]) VALUES (24, N'Filete de pescado')
INSERT [dbo].[Platillo] ([Platillo_code], [Descripcion_pl]) VALUES (25, N'De la casa')
INSERT [dbo].[Platillo] ([Platillo_code], [Descripcion_pl]) VALUES (26, N'Spagetti normal')
INSERT [dbo].[Platillo] ([Platillo_code], [Descripcion_pl]) VALUES (27, N'Spagetti con albondigas')
INSERT [dbo].[Platillo] ([Platillo_code], [Descripcion_pl]) VALUES (28, N'Mojarra')
INSERT [dbo].[Platillo] ([Platillo_code], [Descripcion_pl]) VALUES (29, N'Boneless')
INSERT [dbo].[Platillo] ([Platillo_code], [Descripcion_pl]) VALUES (30, N'Ramen')
INSERT [dbo].[Platillo] ([Platillo_code], [Descripcion_pl]) VALUES (31, N'Maruchan de la casa')
INSERT [dbo].[Postre] ([Postre_code], [Descripcion_po]) VALUES (1, N'Chessecake')
INSERT [dbo].[Postre] ([Postre_code], [Descripcion_po]) VALUES (2, N'Helado choco')
INSERT [dbo].[Postre] ([Postre_code], [Descripcion_po]) VALUES (3, N'Helado Vaini')
INSERT [dbo].[Postre] ([Postre_code], [Descripcion_po]) VALUES (4, N'Sundae')
INSERT [dbo].[Postre] ([Postre_code], [Descripcion_po]) VALUES (5, N'Pay de pinia')
INSERT [dbo].[Postre] ([Postre_code], [Descripcion_po]) VALUES (6, N'Postre de limon')
INSERT [dbo].[Postre] ([Postre_code], [Descripcion_po]) VALUES (7, N'Choco-roles ')
INSERT [dbo].[Postre] ([Postre_code], [Descripcion_po]) VALUES (8, N'3 leches')
INSERT [dbo].[Postre] ([Postre_code], [Descripcion_po]) VALUES (9, N'Creme Brule')
INSERT [dbo].[Postre] ([Postre_code], [Descripcion_po]) VALUES (10, N'Pay de queso wine')
INSERT [dbo].[Postre] ([Postre_code], [Descripcion_po]) VALUES (11, N'Galletas de coco')
INSERT [dbo].[Postre] ([Postre_code], [Descripcion_po]) VALUES (12, N'Chokis')
INSERT [dbo].[Postre] ([Postre_code], [Descripcion_po]) VALUES (13, N'Gomitas')
INSERT [dbo].[Reservacion] ([Reserv_code], [Cliente_code]) VALUES (1, 1)
INSERT [dbo].[Reservacion] ([Reserv_code], [Cliente_code]) VALUES (2, 2)
INSERT [dbo].[Reservacion] ([Reserv_code], [Cliente_code]) VALUES (3, 3)
INSERT [dbo].[Reservacion] ([Reserv_code], [Cliente_code]) VALUES (4, 4)
INSERT [dbo].[Reservacion] ([Reserv_code], [Cliente_code]) VALUES (5, 5)
INSERT [dbo].[Reservacion] ([Reserv_code], [Cliente_code]) VALUES (6, 6)
INSERT [dbo].[Reservacion] ([Reserv_code], [Cliente_code]) VALUES (7, 7)
INSERT [dbo].[Ticket] ([Ticket_code], [Pedido_code], [Pago_code], [Reserv_code], [Info_code]) VALUES (1, 1, 2, 1, 1)
INSERT [dbo].[Ticket] ([Ticket_code], [Pedido_code], [Pago_code], [Reserv_code], [Info_code]) VALUES (2, 1, 5, 1, 1)
INSERT [dbo].[Ticket] ([Ticket_code], [Pedido_code], [Pago_code], [Reserv_code], [Info_code]) VALUES (3, 1, 1, 1, 1)
INSERT [dbo].[Ticket] ([Ticket_code], [Pedido_code], [Pago_code], [Reserv_code], [Info_code]) VALUES (4, 1, 3, 1, 1)
INSERT [dbo].[Ticket] ([Ticket_code], [Pedido_code], [Pago_code], [Reserv_code], [Info_code]) VALUES (5, 3, 2, 1, 1)
INSERT [dbo].[Ticket] ([Ticket_code], [Pedido_code], [Pago_code], [Reserv_code], [Info_code]) VALUES (6, 1, 2, 1, 1)
INSERT [dbo].[Ticket] ([Ticket_code], [Pedido_code], [Pago_code], [Reserv_code], [Info_code]) VALUES (7, 1, 2, 1, 1)
INSERT [dbo].[Ticket] ([Ticket_code], [Pedido_code], [Pago_code], [Reserv_code], [Info_code]) VALUES (8, 1, 3, 1, 1)
INSERT [dbo].[Ticket] ([Ticket_code], [Pedido_code], [Pago_code], [Reserv_code], [Info_code]) VALUES (9, 1, 2, 1, 1)
INSERT [dbo].[Ticket] ([Ticket_code], [Pedido_code], [Pago_code], [Reserv_code], [Info_code]) VALUES (10, 1, 7, 1, 1)
INSERT [dbo].[Ticket] ([Ticket_code], [Pedido_code], [Pago_code], [Reserv_code], [Info_code]) VALUES (11, 1, 2, 3, 1)
INSERT [dbo].[Ticket] ([Ticket_code], [Pedido_code], [Pago_code], [Reserv_code], [Info_code]) VALUES (12, 1, 4, 1, 1)
INSERT [dbo].[Ticket] ([Ticket_code], [Pedido_code], [Pago_code], [Reserv_code], [Info_code]) VALUES (13, 1, 2, 1, 1)
INSERT [dbo].[Ticket] ([Ticket_code], [Pedido_code], [Pago_code], [Reserv_code], [Info_code]) VALUES (14, 1, 2, 3, 1)
INSERT [dbo].[Ticket] ([Ticket_code], [Pedido_code], [Pago_code], [Reserv_code], [Info_code]) VALUES (15, 1, 4, 1, 1)
INSERT [dbo].[Ticket] ([Ticket_code], [Pedido_code], [Pago_code], [Reserv_code], [Info_code]) VALUES (16, 3, 2, 1, 1)
INSERT [dbo].[Ticket] ([Ticket_code], [Pedido_code], [Pago_code], [Reserv_code], [Info_code]) VALUES (17, 1, 2, 1, 1)
INSERT [dbo].[Ticket] ([Ticket_code], [Pedido_code], [Pago_code], [Reserv_code], [Info_code]) VALUES (18, 1, 6, 1, 1)
INSERT [dbo].[Ticket] ([Ticket_code], [Pedido_code], [Pago_code], [Reserv_code], [Info_code]) VALUES (19, 1, 8, 1, 1)
INSERT [dbo].[Ticket] ([Ticket_code], [Pedido_code], [Pago_code], [Reserv_code], [Info_code]) VALUES (20, 1, 2, 5, 1)
INSERT [dbo].[Ticket] ([Ticket_code], [Pedido_code], [Pago_code], [Reserv_code], [Info_code]) VALUES (21, 1, 3, 1, 1)
INSERT [dbo].[Ticket] ([Ticket_code], [Pedido_code], [Pago_code], [Reserv_code], [Info_code]) VALUES (22, 5, 2, 3, 1)
INSERT [dbo].[Ticket] ([Ticket_code], [Pedido_code], [Pago_code], [Reserv_code], [Info_code]) VALUES (23, 1, 7, 1, 1)
INSERT [dbo].[TipoPago] ([Tpago_code], [Efectivo], [TDD], [TDC]) VALUES (1, 0, 1, 0)
INSERT [dbo].[TipoPago] ([Tpago_code], [Efectivo], [TDD], [TDC]) VALUES (2, 0, 0, 1)
INSERT [dbo].[TipoPago] ([Tpago_code], [Efectivo], [TDD], [TDC]) VALUES (3, 0, 0, 1)
INSERT [dbo].[TipoPago] ([Tpago_code], [Efectivo], [TDD], [TDC]) VALUES (4, 1, 0, 0)
INSERT [dbo].[TipoPago] ([Tpago_code], [Efectivo], [TDD], [TDC]) VALUES (5, 0, 1, 0)
INSERT [dbo].[TipoPago] ([Tpago_code], [Efectivo], [TDD], [TDC]) VALUES (6, 0, 1, 0)
INSERT [dbo].[TipoPago] ([Tpago_code], [Efectivo], [TDD], [TDC]) VALUES (7, 1, 0, 0)
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD  CONSTRAINT [FK_Pedido_Bebida] FOREIGN KEY([Bebida_code])
REFERENCES [dbo].[Bebida] ([Bebida_code])
GO
ALTER TABLE [dbo].[Pedido] CHECK CONSTRAINT [FK_Pedido_Bebida]
GO
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD  CONSTRAINT [FK_Pedido_Platillo] FOREIGN KEY([Platillo_code])
REFERENCES [dbo].[Platillo] ([Platillo_code])
GO
ALTER TABLE [dbo].[Pedido] CHECK CONSTRAINT [FK_Pedido_Platillo]
GO
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD  CONSTRAINT [FK_Pedido_Postre] FOREIGN KEY([Postre_code])
REFERENCES [dbo].[Postre] ([Postre_code])
GO
ALTER TABLE [dbo].[Pedido] CHECK CONSTRAINT [FK_Pedido_Postre]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Info_Gral] FOREIGN KEY([Info_code])
REFERENCES [dbo].[Info_Gral] ([Info_code])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Info_Gral]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Pago_Metodo] FOREIGN KEY([Pago_code])
REFERENCES [dbo].[Pago_Metodo] ([Pago_code])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Pago_Metodo]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Pedido] FOREIGN KEY([Pedido_code])
REFERENCES [dbo].[Pedido] ([Pedido_code])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Pedido]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Reservacion] FOREIGN KEY([Reserv_code])
REFERENCES [dbo].[Reservacion] ([Reserv_code])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Reservacion]
GO
/****** Object:  StoredProcedure [dbo].[Bebidas]    Script Date: 18/05/2019 05:20:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Bebidas]
AS
Select * From Bebida
GO;
GO
/****** Object:  StoredProcedure [dbo].[Clientes]    Script Date: 18/05/2019 05:20:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Clientes]
AS 
Select * From dbo.cliente
Go;
GO
/****** Object:  StoredProcedure [dbo].[Comida]    Script Date: 18/05/2019 05:20:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Comida]
AS
Select * From dbo.Platillo
GO;
GO
/****** Object:  StoredProcedure [dbo].[IdCliente]    Script Date: 18/05/2019 05:20:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[IdCliente]
AS
Select cliente_code From dbo.cliente
GO;
GO
/****** Object:  StoredProcedure [dbo].[Informacion]    Script Date: 18/05/2019 05:20:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Informacion]
AS
Select * From dbo.Info_Gral
GO;
GO
/****** Object:  StoredProcedure [dbo].[NombreCliente]    Script Date: 18/05/2019 05:20:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NombreCliente]
AS
Select Nombre_c From dbo.cliente
GO;
GO
/****** Object:  StoredProcedure [dbo].[Postres]    Script Date: 18/05/2019 05:20:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Postres]
AS
Select * From dbo.Postre
Go;
GO
/****** Object:  StoredProcedure [dbo].[reserva]    Script Date: 18/05/2019 05:20:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[reserva]
AS 
Select * From dbo.Reservacion
GO;
GO
/****** Object:  StoredProcedure [dbo].[Restaurante]    Script Date: 18/05/2019 05:20:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Restaurante]
AS
Select Descripcion_info From dbo.Info_Gral
GO;
GO
/****** Object:  StoredProcedure [dbo].[TelRestaurante]    Script Date: 18/05/2019 05:20:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[TelRestaurante]
AS
Select Telefono_info From dbo.Info_Gral
GO;
GO
USE [master]
GO
ALTER DATABASE [PIA_LBD] SET  READ_WRITE 
GO
