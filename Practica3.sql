USE [PIA_BD]
GO
ALTER TABLE [dbo].[Ticket] DROP CONSTRAINT [FK_Ticket_Pago_Metodo]
GO
ALTER TABLE [dbo].[Pedido] DROP CONSTRAINT [FK_Pedido_Postre]
GO
ALTER TABLE [dbo].[Pedido] DROP CONSTRAINT [FK_Pedido_Platillo]
GO
ALTER TABLE [dbo].[Pedido] DROP CONSTRAINT [FK_Pedido_Bebida]
GO
ALTER TABLE [dbo].[Cliente] DROP CONSTRAINT [FK_Cliente_Reservacion]
GO
/****** Object:  Table [dbo].[TipoPago]    Script Date: 08/03/2019 01:21:05 p. m. ******/
DROP TABLE [dbo].[TipoPago]
GO
/****** Object:  Table [dbo].[Ticket]    Script Date: 08/03/2019 01:21:05 p. m. ******/
DROP TABLE [dbo].[Ticket]
GO
/****** Object:  Table [dbo].[Reservacion]    Script Date: 08/03/2019 01:21:05 p. m. ******/
DROP TABLE [dbo].[Reservacion]
GO
/****** Object:  Table [dbo].[Postre]    Script Date: 08/03/2019 01:21:05 p. m. ******/
DROP TABLE [dbo].[Postre]
GO
/****** Object:  Table [dbo].[Platillo]    Script Date: 08/03/2019 01:21:05 p. m. ******/
DROP TABLE [dbo].[Platillo]
GO
/****** Object:  Table [dbo].[Pedido]    Script Date: 08/03/2019 01:21:05 p. m. ******/
DROP TABLE [dbo].[Pedido]
GO
/****** Object:  Table [dbo].[Pago_Metodo]    Script Date: 08/03/2019 01:21:05 p. m. ******/
DROP TABLE [dbo].[Pago_Metodo]
GO
/****** Object:  Table [dbo].[Info_Gral]    Script Date: 08/03/2019 01:21:05 p. m. ******/
DROP TABLE [dbo].[Info_Gral]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 08/03/2019 01:21:05 p. m. ******/
DROP TABLE [dbo].[Cliente]
GO
/****** Object:  Table [dbo].[Bebida]    Script Date: 08/03/2019 01:21:05 p. m. ******/
DROP TABLE [dbo].[Bebida]
GO
USE [master]
GO
/****** Object:  Database [PIA_BD]    Script Date: 08/03/2019 01:21:05 p. m. ******/
DROP DATABASE [PIA_BD]
GO
/****** Object:  Database [PIA_BD]    Script Date: 08/03/2019 01:21:05 p. m. ******/
CREATE DATABASE [PIA_BD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PIA_BD', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\PIA_BD.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PIA_BD_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\PIA_BD_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [PIA_BD] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PIA_BD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PIA_BD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PIA_BD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PIA_BD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PIA_BD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PIA_BD] SET ARITHABORT OFF 
GO
ALTER DATABASE [PIA_BD] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PIA_BD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PIA_BD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PIA_BD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PIA_BD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PIA_BD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PIA_BD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PIA_BD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PIA_BD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PIA_BD] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PIA_BD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PIA_BD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PIA_BD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PIA_BD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PIA_BD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PIA_BD] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PIA_BD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PIA_BD] SET RECOVERY FULL 
GO
ALTER DATABASE [PIA_BD] SET  MULTI_USER 
GO
ALTER DATABASE [PIA_BD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PIA_BD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PIA_BD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PIA_BD] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PIA_BD] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'PIA_BD', N'ON'
GO
ALTER DATABASE [PIA_BD] SET QUERY_STORE = OFF
GO
USE [PIA_BD]
GO
/****** Object:  Table [dbo].[Bebida]    Script Date: 08/03/2019 01:21:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bebida](
	[Bebida_code] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Bebida] PRIMARY KEY CLUSTERED 
(
	[Bebida_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 08/03/2019 01:21:06 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[Cliente_code] [int] NOT NULL,
	[ApPaterno_c] [varchar](50) NOT NULL,
	[ApMaterno_c] [varchar](50) NOT NULL,
	[Nombre_c] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Info_Gral]    Script Date: 08/03/2019 01:21:06 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Info_Gral](
	[Info_code] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[Telefono] [int] NOT NULL,
	[Correo] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Info_Gral] PRIMARY KEY CLUSTERED 
(
	[Info_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pago_Metodo]    Script Date: 08/03/2019 01:21:06 p. m. ******/
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
/****** Object:  Table [dbo].[Pedido]    Script Date: 08/03/2019 01:21:06 p. m. ******/
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
/****** Object:  Table [dbo].[Platillo]    Script Date: 08/03/2019 01:21:06 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Platillo](
	[Platillo_code] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Platillo] PRIMARY KEY CLUSTERED 
(
	[Platillo_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Postre]    Script Date: 08/03/2019 01:21:06 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Postre](
	[Postre_code] [int] NOT NULL,
	[Descripcion] [nchar](10) NULL,
 CONSTRAINT [PK_Postre] PRIMARY KEY CLUSTERED 
(
	[Postre_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reservacion]    Script Date: 08/03/2019 01:21:06 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservacion](
	[Reservacion_code] [int] NOT NULL,
	[Cliente_code] [int] NOT NULL,
 CONSTRAINT [PK_Reservacion] PRIMARY KEY CLUSTERED 
(
	[Reservacion_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ticket]    Script Date: 08/03/2019 01:21:06 p. m. ******/
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
/****** Object:  Table [dbo].[TipoPago]    Script Date: 08/03/2019 01:21:06 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoPago](
	[TPago_code] [int] NOT NULL,
	[Efectivo] [bit] NOT NULL,
	[TDD] [bit] NOT NULL,
	[TDC] [bit] NOT NULL,
 CONSTRAINT [PK_TipoPago] PRIMARY KEY CLUSTERED 
(
	[TPago_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Reservacion] FOREIGN KEY([Cliente_code])
REFERENCES [dbo].[Reservacion] ([Reservacion_code])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Cliente_Reservacion]
GO
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
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Pago_Metodo] FOREIGN KEY([Pago_code])
REFERENCES [dbo].[Pago_Metodo] ([Pago_code])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Pago_Metodo]
GO
USE [master]
GO
ALTER DATABASE [PIA_BD] SET  READ_WRITE 
GO
