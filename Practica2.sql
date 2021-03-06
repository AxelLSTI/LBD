USE [Practica2]
GO
ALTER TABLE [dbo].[ventaProducto] DROP CONSTRAINT [fk_prod]
GO
ALTER TABLE [dbo].[venta] DROP CONSTRAINT [fk_emp]
GO
ALTER TABLE [dbo].[materia_alumno] DROP CONSTRAINT [fk_mat]
GO
ALTER TABLE [dbo].[materia_alumno] DROP CONSTRAINT [fk_ma]
GO
/****** Object:  Index [IX_ventaProducto]    Script Date: 28/02/2019 11:21:57 p. m. ******/
DROP INDEX [IX_ventaProducto] ON [dbo].[ventaProducto]
GO
/****** Object:  Index [IX_venta]    Script Date: 28/02/2019 11:21:57 p. m. ******/
DROP INDEX [IX_venta] ON [dbo].[venta]
GO
/****** Object:  Index [IX_sumas]    Script Date: 28/02/2019 11:21:57 p. m. ******/
DROP INDEX [IX_sumas] ON [dbo].[sumas]
GO
/****** Object:  Index [IX_profesor]    Script Date: 28/02/2019 11:21:57 p. m. ******/
DROP INDEX [IX_profesor] ON [dbo].[profesor]
GO
/****** Object:  Index [IX_producto]    Script Date: 28/02/2019 11:21:57 p. m. ******/
DROP INDEX [IX_producto] ON [dbo].[producto]
GO
/****** Object:  Index [IX_Materias]    Script Date: 28/02/2019 11:21:57 p. m. ******/
DROP INDEX [IX_Materias] ON [dbo].[Materias]
GO
/****** Object:  Index [IX_materia_alumno]    Script Date: 28/02/2019 11:21:57 p. m. ******/
DROP INDEX [IX_materia_alumno] ON [dbo].[materia_alumno]
GO
/****** Object:  Index [IX_materia]    Script Date: 28/02/2019 11:21:57 p. m. ******/
DROP INDEX [IX_materia] ON [dbo].[materia]
GO
/****** Object:  Index [IX_empleado]    Script Date: 28/02/2019 11:21:57 p. m. ******/
DROP INDEX [IX_empleado] ON [dbo].[empleado]
GO
/****** Object:  Index [IX_carrera]    Script Date: 28/02/2019 11:21:57 p. m. ******/
DROP INDEX [IX_carrera] ON [dbo].[carrera]
GO
/****** Object:  Index [IX_alumno]    Script Date: 28/02/2019 11:21:57 p. m. ******/
DROP INDEX [IX_alumno] ON [dbo].[alumno]
GO
/****** Object:  Table [dbo].[ventaProducto]    Script Date: 28/02/2019 11:21:57 p. m. ******/
DROP TABLE [dbo].[ventaProducto]
GO
/****** Object:  Table [dbo].[venta]    Script Date: 28/02/2019 11:21:57 p. m. ******/
DROP TABLE [dbo].[venta]
GO
/****** Object:  Table [dbo].[sumas]    Script Date: 28/02/2019 11:21:57 p. m. ******/
DROP TABLE [dbo].[sumas]
GO
/****** Object:  Table [dbo].[profesor]    Script Date: 28/02/2019 11:21:57 p. m. ******/
DROP TABLE [dbo].[profesor]
GO
/****** Object:  Table [dbo].[producto]    Script Date: 28/02/2019 11:21:57 p. m. ******/
DROP TABLE [dbo].[producto]
GO
/****** Object:  Table [dbo].[Materias]    Script Date: 28/02/2019 11:21:57 p. m. ******/
DROP TABLE [dbo].[Materias]
GO
/****** Object:  Table [dbo].[materia_alumno]    Script Date: 28/02/2019 11:21:57 p. m. ******/
DROP TABLE [dbo].[materia_alumno]
GO
/****** Object:  Table [dbo].[materia]    Script Date: 28/02/2019 11:21:57 p. m. ******/
DROP TABLE [dbo].[materia]
GO
/****** Object:  Table [dbo].[empleado]    Script Date: 28/02/2019 11:21:57 p. m. ******/
DROP TABLE [dbo].[empleado]
GO
/****** Object:  Table [dbo].[carrera]    Script Date: 28/02/2019 11:21:57 p. m. ******/
DROP TABLE [dbo].[carrera]
GO
/****** Object:  Table [dbo].[alumno]    Script Date: 28/02/2019 11:21:57 p. m. ******/
DROP TABLE [dbo].[alumno]
GO
USE [master]
GO
/****** Object:  Database [Practica2]    Script Date: 28/02/2019 11:21:57 p. m. ******/
DROP DATABASE [Practica2]
GO
/****** Object:  Database [Practica2]    Script Date: 28/02/2019 11:21:57 p. m. ******/
CREATE DATABASE [Practica2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Practica2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Practica2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Practica2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Practica2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Practica2] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Practica2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Practica2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Practica2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Practica2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Practica2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Practica2] SET ARITHABORT OFF 
GO
ALTER DATABASE [Practica2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Practica2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Practica2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Practica2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Practica2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Practica2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Practica2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Practica2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Practica2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Practica2] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Practica2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Practica2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Practica2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Practica2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Practica2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Practica2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Practica2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Practica2] SET RECOVERY FULL 
GO
ALTER DATABASE [Practica2] SET  MULTI_USER 
GO
ALTER DATABASE [Practica2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Practica2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Practica2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Practica2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Practica2] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Practica2', N'ON'
GO
ALTER DATABASE [Practica2] SET QUERY_STORE = OFF
GO
USE [Practica2]
GO
/****** Object:  Table [dbo].[alumno]    Script Date: 28/02/2019 11:21:58 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[alumno](
	[matricula_id] [int] NOT NULL,
	[nombre_a] [varchar](30) NULL,
	[apPaterno_a] [varchar](20) NULL,
	[apMaterno_a] [varchar](20) NULL,
	[fechaNa_a] [date] NULL,
	[carrera_id] [tinyint] NULL,
	[edad]  AS (datediff(year,[fechaNa_a],getdate())),
 CONSTRAINT [pk_alu] PRIMARY KEY CLUSTERED 
(
	[matricula_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[carrera]    Script Date: 28/02/2019 11:21:58 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[carrera](
	[carrera_id] [int] NOT NULL,
	[nombre_a] [varchar](60) NULL,
	[abrv_c] [varchar](7) NULL,
	[duracion] [tinyint] NULL,
 CONSTRAINT [pk_car] PRIMARY KEY CLUSTERED 
(
	[carrera_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[empleado]    Script Date: 28/02/2019 11:21:58 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empleado](
	[idEmpleado] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[apellidoPat] [varchar](25) NOT NULL,
	[apellidoMat] [varchar](25) NOT NULL,
	[fechaNacimiento] [date] NOT NULL,
	[edad]  AS (datediff(year,[fechaNacimiento],getdate())),
PRIMARY KEY CLUSTERED 
(
	[idEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[materia]    Script Date: 28/02/2019 11:21:58 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[materia](
	[materia_id] [int] NOT NULL,
	[nombre_m] [varchar](50) NOT NULL,
	[creditos_m] [tinyint] NOT NULL,
	[semestre_m] [tinyint] NOT NULL,
 CONSTRAINT [pk_mat] PRIMARY KEY CLUSTERED 
(
	[materia_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[materia_alumno]    Script Date: 28/02/2019 11:21:58 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[materia_alumno](
	[materia_id] [int] NOT NULL,
	[matricula_id] [int] NOT NULL,
	[calificacion] [tinyint] NULL,
	[fechacurso] [date] NULL,
	[identificador] [int] NOT NULL,
 CONSTRAINT [pk_ma] PRIMARY KEY CLUSTERED 
(
	[identificador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materias]    Script Date: 28/02/2019 11:21:58 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materias](
	[idMateria] [uniqueidentifier] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[idCarrera] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idMateria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[producto]    Script Date: 28/02/2019 11:21:58 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[producto](
	[producto_id] [uniqueidentifier] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[precio] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[producto_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[profesor]    Script Date: 28/02/2019 11:21:58 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[profesor](
	[profesor_id] [smallint] NOT NULL,
	[nombre_p] [varchar](20) NULL,
	[apellidos] [varchar](60) NULL,
	[tel_p] [varchar](15) NULL,
	[tutor] [bit] NULL,
	[estatus] [bit] NULL,
 CONSTRAINT [pk_pro] PRIMARY KEY CLUSTERED 
(
	[profesor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sumas]    Script Date: 28/02/2019 11:21:58 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sumas](
	[cantidad1] [int] NULL,
	[cantidad2] [int] NULL,
	[cantidad3]  AS ([cantidad1]+[cantidad2]),
	[cantidad4] [int] NULL,
	[cantidad5] [int] NULL,
	[cantidad6]  AS ([cantidad4]+[cantidad5])
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[venta]    Script Date: 28/02/2019 11:21:58 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[venta](
	[folioTicket_id] [uniqueidentifier] NOT NULL,
	[fechaCompra] [date] NOT NULL,
	[hora] [time](7) NOT NULL,
	[idEmpleado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[folioTicket_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ventaProducto]    Script Date: 28/02/2019 11:21:58 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ventaProducto](
	[producto_id] [uniqueidentifier] NOT NULL,
	[cantidad] [int] NULL,
	[precio] [int] NULL,
	[Total]  AS ([precio]*[cantidad])
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_alumno]    Script Date: 28/02/2019 11:21:58 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_alumno] ON [dbo].[alumno]
(
	[apPaterno_a] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_carrera]    Script Date: 28/02/2019 11:21:58 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_carrera] ON [dbo].[carrera]
(
	[abrv_c] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_empleado]    Script Date: 28/02/2019 11:21:58 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_empleado] ON [dbo].[empleado]
(
	[apellidoPat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_materia]    Script Date: 28/02/2019 11:21:58 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_materia] ON [dbo].[materia]
(
	[nombre_m] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_materia_alumno]    Script Date: 28/02/2019 11:21:58 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_materia_alumno] ON [dbo].[materia_alumno]
(
	[materia_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Materias]    Script Date: 28/02/2019 11:21:58 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Materias] ON [dbo].[Materias]
(
	[idMateria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_producto]    Script Date: 28/02/2019 11:21:58 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_producto] ON [dbo].[producto]
(
	[producto_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_profesor]    Script Date: 28/02/2019 11:21:58 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_profesor] ON [dbo].[profesor]
(
	[apellidos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_sumas]    Script Date: 28/02/2019 11:21:58 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_sumas] ON [dbo].[sumas]
(
	[cantidad1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_venta]    Script Date: 28/02/2019 11:21:58 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_venta] ON [dbo].[venta]
(
	[folioTicket_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ventaProducto]    Script Date: 28/02/2019 11:21:58 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_ventaProducto] ON [dbo].[ventaProducto]
(
	[producto_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[materia_alumno]  WITH CHECK ADD  CONSTRAINT [fk_ma] FOREIGN KEY([materia_id])
REFERENCES [dbo].[materia] ([materia_id])
GO
ALTER TABLE [dbo].[materia_alumno] CHECK CONSTRAINT [fk_ma]
GO
ALTER TABLE [dbo].[materia_alumno]  WITH CHECK ADD  CONSTRAINT [fk_mat] FOREIGN KEY([matricula_id])
REFERENCES [dbo].[alumno] ([matricula_id])
GO
ALTER TABLE [dbo].[materia_alumno] CHECK CONSTRAINT [fk_mat]
GO
ALTER TABLE [dbo].[venta]  WITH CHECK ADD  CONSTRAINT [fk_emp] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[empleado] ([idEmpleado])
GO
ALTER TABLE [dbo].[venta] CHECK CONSTRAINT [fk_emp]
GO
ALTER TABLE [dbo].[ventaProducto]  WITH CHECK ADD  CONSTRAINT [fk_prod] FOREIGN KEY([producto_id])
REFERENCES [dbo].[producto] ([producto_id])
GO
ALTER TABLE [dbo].[ventaProducto] CHECK CONSTRAINT [fk_prod]
GO
USE [master]
GO
ALTER DATABASE [Practica2] SET  READ_WRITE 
GO
