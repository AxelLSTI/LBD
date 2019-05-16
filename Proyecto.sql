USE [Proyecto]
GO
/****** Object:  StoredProcedure [dbo].[TelRestaurante]    Script Date: 24/04/2019 03:07:52 p. m. ******/
DROP PROCEDURE [dbo].[TelRestaurante]
GO
/****** Object:  StoredProcedure [dbo].[Restaurante]    Script Date: 24/04/2019 03:07:52 p. m. ******/
DROP PROCEDURE [dbo].[Restaurante]
GO
/****** Object:  StoredProcedure [dbo].[reservacion]    Script Date: 24/04/2019 03:07:52 p. m. ******/
DROP PROCEDURE [dbo].[reservacion]
GO
/****** Object:  StoredProcedure [dbo].[Puesto]    Script Date: 24/04/2019 03:07:52 p. m. ******/
DROP PROCEDURE [dbo].[Puesto]
GO
/****** Object:  StoredProcedure [dbo].[Informacion]    Script Date: 24/04/2019 03:07:52 p. m. ******/
DROP PROCEDURE [dbo].[Informacion]
GO
/****** Object:  StoredProcedure [dbo].[IdCliente]    Script Date: 24/04/2019 03:07:52 p. m. ******/
DROP PROCEDURE [dbo].[IdCliente]
GO
/****** Object:  StoredProcedure [dbo].[Empleado]    Script Date: 24/04/2019 03:07:52 p. m. ******/
DROP PROCEDURE [dbo].[Empleado]
GO
/****** Object:  StoredProcedure [dbo].[CorreoCliente]    Script Date: 24/04/2019 03:07:52 p. m. ******/
DROP PROCEDURE [dbo].[CorreoCliente]
GO
/****** Object:  StoredProcedure [dbo].[Comida]    Script Date: 24/04/2019 03:07:52 p. m. ******/
DROP PROCEDURE [dbo].[Comida]
GO
/****** Object:  StoredProcedure [dbo].[Clientes]    Script Date: 24/04/2019 03:07:52 p. m. ******/
DROP PROCEDURE [dbo].[Clientes]
GO
ALTER TABLE [dbo].[tb_ticket] DROP CONSTRAINT [FK_tb_ticket_tb_comanda]
GO
ALTER TABLE [dbo].[tb_pago] DROP CONSTRAINT [FK_tb_pago_tb_metodo]
GO
ALTER TABLE [dbo].[tb_mesa] DROP CONSTRAINT [FK_tb_mesa_tb_reservacion]
GO
ALTER TABLE [dbo].[tb_empleado] DROP CONSTRAINT [FK_tb_empleado_tb_puesto]
GO
ALTER TABLE [dbo].[tb_empleado] DROP CONSTRAINT [FK_tb_empleado_tb_afiliacion]
GO
ALTER TABLE [dbo].[tb_comida] DROP CONSTRAINT [FK_tb_comida_tb_comanda]
GO
ALTER TABLE [dbo].[tb_comanda] DROP CONSTRAINT [FK_tb_comanda_tb_ticket]
GO
ALTER TABLE [dbo].[tb_comanda] DROP CONSTRAINT [FK_tb_comanda_tb_reservacion]
GO
ALTER TABLE [dbo].[tb_comanda] DROP CONSTRAINT [FK_tb_comanda_tb_empleado]
GO
/****** Object:  Table [dbo].[tb_ticket]    Script Date: 24/04/2019 03:07:52 p. m. ******/
DROP TABLE [dbo].[tb_ticket]
GO
/****** Object:  Table [dbo].[tb_reservacion]    Script Date: 24/04/2019 03:07:52 p. m. ******/
DROP TABLE [dbo].[tb_reservacion]
GO
/****** Object:  Table [dbo].[tb_puesto]    Script Date: 24/04/2019 03:07:52 p. m. ******/
DROP TABLE [dbo].[tb_puesto]
GO
/****** Object:  Table [dbo].[tb_pago]    Script Date: 24/04/2019 03:07:52 p. m. ******/
DROP TABLE [dbo].[tb_pago]
GO
/****** Object:  Table [dbo].[tb_metodo]    Script Date: 24/04/2019 03:07:52 p. m. ******/
DROP TABLE [dbo].[tb_metodo]
GO
/****** Object:  Table [dbo].[tb_mesa]    Script Date: 24/04/2019 03:07:52 p. m. ******/
DROP TABLE [dbo].[tb_mesa]
GO
/****** Object:  Table [dbo].[tb_info]    Script Date: 24/04/2019 03:07:52 p. m. ******/
DROP TABLE [dbo].[tb_info]
GO
/****** Object:  Table [dbo].[tb_empleado]    Script Date: 24/04/2019 03:07:52 p. m. ******/
DROP TABLE [dbo].[tb_empleado]
GO
/****** Object:  Table [dbo].[tb_departamento]    Script Date: 24/04/2019 03:07:52 p. m. ******/
DROP TABLE [dbo].[tb_departamento]
GO
/****** Object:  Table [dbo].[tb_comida]    Script Date: 24/04/2019 03:07:52 p. m. ******/
DROP TABLE [dbo].[tb_comida]
GO
/****** Object:  Table [dbo].[tb_comanda]    Script Date: 24/04/2019 03:07:52 p. m. ******/
DROP TABLE [dbo].[tb_comanda]
GO
/****** Object:  Table [dbo].[tb_cliente]    Script Date: 24/04/2019 03:07:52 p. m. ******/
DROP TABLE [dbo].[tb_cliente]
GO
/****** Object:  Table [dbo].[tb_afiliacion]    Script Date: 24/04/2019 03:07:52 p. m. ******/
DROP TABLE [dbo].[tb_afiliacion]
GO
USE [master]
GO
/****** Object:  Database [Proyecto]    Script Date: 24/04/2019 03:07:52 p. m. ******/
DROP DATABASE [Proyecto]
GO
/****** Object:  Database [Proyecto]    Script Date: 24/04/2019 03:07:52 p. m. ******/
CREATE DATABASE [Proyecto]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Proyecto', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Proyecto.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Proyecto_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Proyecto_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Proyecto] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Proyecto].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Proyecto] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Proyecto] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Proyecto] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Proyecto] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Proyecto] SET ARITHABORT OFF 
GO
ALTER DATABASE [Proyecto] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Proyecto] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Proyecto] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Proyecto] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Proyecto] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Proyecto] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Proyecto] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Proyecto] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Proyecto] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Proyecto] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Proyecto] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Proyecto] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Proyecto] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Proyecto] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Proyecto] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Proyecto] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Proyecto] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Proyecto] SET RECOVERY FULL 
GO
ALTER DATABASE [Proyecto] SET  MULTI_USER 
GO
ALTER DATABASE [Proyecto] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Proyecto] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Proyecto] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Proyecto] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Proyecto] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Proyecto', N'ON'
GO
ALTER DATABASE [Proyecto] SET QUERY_STORE = OFF
GO
USE [Proyecto]
GO
/****** Object:  Table [dbo].[tb_afiliacion]    Script Date: 24/04/2019 03:07:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_afiliacion](
	[afiliacion_id] [int] NOT NULL,
	[hospital] [varchar](60) NULL,
PRIMARY KEY CLUSTERED 
(
	[afiliacion_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_cliente]    Script Date: 24/04/2019 03:07:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_cliente](
	[cliente_id] [int] NOT NULL,
	[Apellidos] [varchar](60) NOT NULL,
	[Nombre] [varchar](60) NOT NULL,
	[Correo] [varchar](30) NOT NULL,
	[Pass] [varchar](40) NOT NULL,
	[MetodoPago] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[cliente_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_comanda]    Script Date: 24/04/2019 03:07:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_comanda](
	[comanda_id] [int] NOT NULL,
	[ticket_id] [int] NULL,
	[pago_id] [int] NULL,
	[reservacion_id] [int] NULL,
	[empleado_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[comanda_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_comida]    Script Date: 24/04/2019 03:07:57 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_comida](
	[comida_id] [int] NOT NULL,
	[descripcion] [varchar](60) NULL,
	[comanda_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[comida_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_departamento]    Script Date: 24/04/2019 03:07:57 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_departamento](
	[departamento_id] [int] NOT NULL,
	[descripcion] [varchar](60) NULL,
PRIMARY KEY CLUSTERED 
(
	[departamento_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_empleado]    Script Date: 24/04/2019 03:07:57 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_empleado](
	[empleado_id] [int] NOT NULL,
	[Apellidos] [varchar](60) NOT NULL,
	[Nombre] [varchar](60) NOT NULL,
	[puesto_id] [int] NULL,
	[afiliacion_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[empleado_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_info]    Script Date: 24/04/2019 03:07:57 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_info](
	[info_id] [int] NOT NULL,
	[restaurante] [varchar](60) NULL,
	[ubicacion] [varchar](60) NULL,
	[correo] [varchar](60) NULL,
	[telefono] [varchar](60) NULL,
PRIMARY KEY CLUSTERED 
(
	[info_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_mesa]    Script Date: 24/04/2019 03:07:57 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_mesa](
	[mesa_id] [int] NOT NULL,
	[reservacion_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[mesa_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_metodo]    Script Date: 24/04/2019 03:07:58 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_metodo](
	[metodo_id] [int] NOT NULL,
	[descripcion] [varchar](60) NULL,
PRIMARY KEY CLUSTERED 
(
	[metodo_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_pago]    Script Date: 24/04/2019 03:07:58 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_pago](
	[pago_id] [int] NOT NULL,
	[metodo_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[pago_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_puesto]    Script Date: 24/04/2019 03:07:58 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_puesto](
	[puesto_id] [int] NOT NULL,
	[descripcion] [varchar](60) NULL,
PRIMARY KEY CLUSTERED 
(
	[puesto_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_reservacion]    Script Date: 24/04/2019 03:07:58 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_reservacion](
	[reservacion_id] [int] NOT NULL,
	[cliente_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[reservacion_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_ticket]    Script Date: 24/04/2019 03:07:58 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ticket](
	[ticket_id] [int] NOT NULL,
	[reservacion_id] [int] NULL,
	[comanda_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ticket_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tb_afiliacion] ([afiliacion_id], [hospital]) VALUES (1, N'DoctorsHospital')
INSERT [dbo].[tb_cliente] ([cliente_id], [Apellidos], [Nombre], [Correo], [Pass], [MetodoPago]) VALUES (1, N'Rodriguez', N'Felipe', N'feliro@gmail.com', N'1234', 1)
INSERT [dbo].[tb_cliente] ([cliente_id], [Apellidos], [Nombre], [Correo], [Pass], [MetodoPago]) VALUES (2, N'Gomez', N'Andres', N'feliro@gmail.com', N'46342', 2)
INSERT [dbo].[tb_cliente] ([cliente_id], [Apellidos], [Nombre], [Correo], [Pass], [MetodoPago]) VALUES (3, N'Castillo', N'Axel', N'feliro@gmail.com', N'ssknd4', 1)
INSERT [dbo].[tb_cliente] ([cliente_id], [Apellidos], [Nombre], [Correo], [Pass], [MetodoPago]) VALUES (4, N'Guajardo', N'Juan', N'feliro@gmail.com', N'snxje63', 2)
INSERT [dbo].[tb_cliente] ([cliente_id], [Apellidos], [Nombre], [Correo], [Pass], [MetodoPago]) VALUES (5, N'Gomez', N'Esteban', N'feliro@gmail.com', N'n87dwa', 2)
INSERT [dbo].[tb_cliente] ([cliente_id], [Apellidos], [Nombre], [Correo], [Pass], [MetodoPago]) VALUES (6, N'Carrizales', N'Felipe', N'feliro@gmail.com', N'82nska', 1)
INSERT [dbo].[tb_comanda] ([comanda_id], [ticket_id], [pago_id], [reservacion_id], [empleado_id]) VALUES (1, 1, 1, 1, 1)
INSERT [dbo].[tb_comida] ([comida_id], [descripcion], [comanda_id]) VALUES (1, N'Hamburguesa', 1)
INSERT [dbo].[tb_comida] ([comida_id], [descripcion], [comanda_id]) VALUES (2, N'Papas', 1)
INSERT [dbo].[tb_comida] ([comida_id], [descripcion], [comanda_id]) VALUES (3, N'Soda', 1)
INSERT [dbo].[tb_departamento] ([departamento_id], [descripcion]) VALUES (1, N'SoporteTecnico')
INSERT [dbo].[tb_empleado] ([empleado_id], [Apellidos], [Nombre], [puesto_id], [afiliacion_id]) VALUES (1, N'Ornelas Catillo', N'Juan', 1, 1)
INSERT [dbo].[tb_info] ([info_id], [restaurante], [ubicacion], [correo], [telefono]) VALUES (1, N'Nikkori', N'Rio Nazas San Pedro', N'support@nikkori.com', N'8121987182')
INSERT [dbo].[tb_mesa] ([mesa_id], [reservacion_id]) VALUES (1, 1)
INSERT [dbo].[tb_mesa] ([mesa_id], [reservacion_id]) VALUES (2, 2)
INSERT [dbo].[tb_metodo] ([metodo_id], [descripcion]) VALUES (1, N'Efectivo')
INSERT [dbo].[tb_metodo] ([metodo_id], [descripcion]) VALUES (2, N'TDD')
INSERT [dbo].[tb_pago] ([pago_id], [metodo_id]) VALUES (1, 1)
INSERT [dbo].[tb_puesto] ([puesto_id], [descripcion]) VALUES (1, N'Analista')
INSERT [dbo].[tb_reservacion] ([reservacion_id], [cliente_id]) VALUES (1, 1)
INSERT [dbo].[tb_reservacion] ([reservacion_id], [cliente_id]) VALUES (2, 2)
INSERT [dbo].[tb_ticket] ([ticket_id], [reservacion_id], [comanda_id]) VALUES (1, 1, 1)
ALTER TABLE [dbo].[tb_comanda]  WITH CHECK ADD  CONSTRAINT [FK_tb_comanda_tb_empleado] FOREIGN KEY([empleado_id])
REFERENCES [dbo].[tb_empleado] ([empleado_id])
GO
ALTER TABLE [dbo].[tb_comanda] CHECK CONSTRAINT [FK_tb_comanda_tb_empleado]
GO
ALTER TABLE [dbo].[tb_comanda]  WITH CHECK ADD  CONSTRAINT [FK_tb_comanda_tb_reservacion] FOREIGN KEY([reservacion_id])
REFERENCES [dbo].[tb_reservacion] ([reservacion_id])
GO
ALTER TABLE [dbo].[tb_comanda] CHECK CONSTRAINT [FK_tb_comanda_tb_reservacion]
GO
ALTER TABLE [dbo].[tb_comanda]  WITH CHECK ADD  CONSTRAINT [FK_tb_comanda_tb_ticket] FOREIGN KEY([ticket_id])
REFERENCES [dbo].[tb_ticket] ([ticket_id])
GO
ALTER TABLE [dbo].[tb_comanda] CHECK CONSTRAINT [FK_tb_comanda_tb_ticket]
GO
ALTER TABLE [dbo].[tb_comida]  WITH CHECK ADD  CONSTRAINT [FK_tb_comida_tb_comanda] FOREIGN KEY([comanda_id])
REFERENCES [dbo].[tb_comanda] ([comanda_id])
GO
ALTER TABLE [dbo].[tb_comida] CHECK CONSTRAINT [FK_tb_comida_tb_comanda]
GO
ALTER TABLE [dbo].[tb_empleado]  WITH CHECK ADD  CONSTRAINT [FK_tb_empleado_tb_afiliacion] FOREIGN KEY([afiliacion_id])
REFERENCES [dbo].[tb_afiliacion] ([afiliacion_id])
GO
ALTER TABLE [dbo].[tb_empleado] CHECK CONSTRAINT [FK_tb_empleado_tb_afiliacion]
GO
ALTER TABLE [dbo].[tb_empleado]  WITH CHECK ADD  CONSTRAINT [FK_tb_empleado_tb_puesto] FOREIGN KEY([puesto_id])
REFERENCES [dbo].[tb_puesto] ([puesto_id])
GO
ALTER TABLE [dbo].[tb_empleado] CHECK CONSTRAINT [FK_tb_empleado_tb_puesto]
GO
ALTER TABLE [dbo].[tb_mesa]  WITH CHECK ADD  CONSTRAINT [FK_tb_mesa_tb_reservacion] FOREIGN KEY([reservacion_id])
REFERENCES [dbo].[tb_reservacion] ([reservacion_id])
GO
ALTER TABLE [dbo].[tb_mesa] CHECK CONSTRAINT [FK_tb_mesa_tb_reservacion]
GO
ALTER TABLE [dbo].[tb_pago]  WITH CHECK ADD  CONSTRAINT [FK_tb_pago_tb_metodo] FOREIGN KEY([metodo_id])
REFERENCES [dbo].[tb_metodo] ([metodo_id])
GO
ALTER TABLE [dbo].[tb_pago] CHECK CONSTRAINT [FK_tb_pago_tb_metodo]
GO
ALTER TABLE [dbo].[tb_ticket]  WITH CHECK ADD  CONSTRAINT [FK_tb_ticket_tb_comanda] FOREIGN KEY([comanda_id])
REFERENCES [dbo].[tb_comanda] ([comanda_id])
GO
ALTER TABLE [dbo].[tb_ticket] CHECK CONSTRAINT [FK_tb_ticket_tb_comanda]
GO
/****** Object:  StoredProcedure [dbo].[Clientes]    Script Date: 24/04/2019 03:07:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Clientes]
AS 
Select * From tb_cliente
Go;
GO
/****** Object:  StoredProcedure [dbo].[Comida]    Script Date: 24/04/2019 03:07:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Comida]
AS
Select * From tb_comida
GO;
GO
/****** Object:  StoredProcedure [dbo].[CorreoCliente]    Script Date: 24/04/2019 03:07:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CorreoCliente]
AS
Select Correo From tb_cliente
GO;
GO
/****** Object:  StoredProcedure [dbo].[Empleado]    Script Date: 24/04/2019 03:07:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Empleado]
AS
Select * From tb_empleado
Go;
GO
/****** Object:  StoredProcedure [dbo].[IdCliente]    Script Date: 24/04/2019 03:07:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[IdCliente]
AS
Select cliente_id From tb_cliente
GO;
GO
/****** Object:  StoredProcedure [dbo].[Informacion]    Script Date: 24/04/2019 03:07:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Informacion]
AS
Select * From tb_info
GO;
GO
/****** Object:  StoredProcedure [dbo].[Puesto]    Script Date: 24/04/2019 03:07:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Puesto]
AS
Select * From tb_puesto
GO;
GO
/****** Object:  StoredProcedure [dbo].[reservacion]    Script Date: 24/04/2019 03:07:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[reservacion]
AS 
Select * From tb_reservacion
GO;
GO
/****** Object:  StoredProcedure [dbo].[Restaurante]    Script Date: 24/04/2019 03:07:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Restaurante]
AS
Select restaurante From tb_info
GO;
GO
/****** Object:  StoredProcedure [dbo].[TelRestaurante]    Script Date: 24/04/2019 03:07:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[TelRestaurante]
AS
Select telefono From tb_info
GO;
GO
USE [master]
GO
ALTER DATABASE [Proyecto] SET  READ_WRITE 
GO
