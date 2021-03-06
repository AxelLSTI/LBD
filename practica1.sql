USE [pv_restaurant]
GO
ALTER TABLE [dbo].[Productos] DROP CONSTRAINT [CH_Productos_costo_unitario]
GO
ALTER TABLE [dbo].[Menu] DROP CONSTRAINT [CH_Menu_costo]
GO
ALTER TABLE [dbo].[Inventario] DROP CONSTRAINT [CH_Inventario_stock_min]
GO
ALTER TABLE [dbo].[Inventario] DROP CONSTRAINT [CH_Inventario_stock_max]
GO
ALTER TABLE [dbo].[Impuestos] DROP CONSTRAINT [CH_Impuestos_porcentaje]
GO
ALTER TABLE [dbo].[Detalle_Platillo] DROP CONSTRAINT [CH_Detalle_Platillo_cantidad_producto]
GO
ALTER TABLE [dbo].[Detalle_Pedidos] DROP CONSTRAINT [CH_Detalle_Pedidos_costo_unitario]
GO
ALTER TABLE [dbo].[Detalle_Pedidos] DROP CONSTRAINT [CH_Detalle_Pedidos_cantidad]
GO
ALTER TABLE [dbo].[Producto_Proveedores] DROP CONSTRAINT [FK_Producto_Proveedores_id_proveedor]
GO
ALTER TABLE [dbo].[Producto_Proveedores] DROP CONSTRAINT [FK_Producto_Proveedores_id_producto]
GO
ALTER TABLE [dbo].[Pedidos] DROP CONSTRAINT [FK_Pedidos_id_mesero]
GO
ALTER TABLE [dbo].[Menu] DROP CONSTRAINT [FK_Menu_id_categoria]
GO
ALTER TABLE [dbo].[Inventario] DROP CONSTRAINT [FK_Inventario_id_producto]
GO
ALTER TABLE [dbo].[Inventario] DROP CONSTRAINT [FK_Inventario_id_empleado]
GO
ALTER TABLE [dbo].[Facturas] DROP CONSTRAINT [FK_Facturas_id_cliente]
GO
ALTER TABLE [dbo].[Factura_Pedidos] DROP CONSTRAINT [FK_Facturas_Pedidos_id_pedidos]
GO
ALTER TABLE [dbo].[Factura_Pedidos] DROP CONSTRAINT [FK_Factura_Pedidos]
GO
ALTER TABLE [dbo].[Empleado] DROP CONSTRAINT [FK_Empleado_id_puesto]
GO
ALTER TABLE [dbo].[Detalle_Platillo] DROP CONSTRAINT [FK_Detalle_Platillo_id_producto]
GO
ALTER TABLE [dbo].[Detalle_Platillo] DROP CONSTRAINT [FK_Detalle_Platillo_id_platillo]
GO
ALTER TABLE [dbo].[Detalle_Pedidos] DROP CONSTRAINT [FK_Detalle_Pedidos_id_platillos]
GO
ALTER TABLE [dbo].[Detalle_Pedidos] DROP CONSTRAINT [FK_Detalle_Pedidos_id_pedidos]
GO
ALTER TABLE [dbo].[Detalle_Pedidos] DROP CONSTRAINT [FK_Detalle_Pedidos_id_impuesto]
GO
ALTER TABLE [dbo].[Proveedores] DROP CONSTRAINT [DF_Proveedores_extension]
GO
ALTER TABLE [dbo].[Productos] DROP CONSTRAINT [DF_Productos_estatus]
GO
ALTER TABLE [dbo].[Pedidos] DROP CONSTRAINT [DF_Pedidos_estatus]
GO
ALTER TABLE [dbo].[Pedidos] DROP CONSTRAINT [DF_Pedidos_numero_mesa]
GO
ALTER TABLE [dbo].[Facturas] DROP CONSTRAINT [DF_Facturas_estatus]
GO
/****** Object:  Index [UQ_Proveedores_rfc]    Script Date: 13/04/2019 08:11:20 p. m. ******/
ALTER TABLE [dbo].[Proveedores] DROP CONSTRAINT [UQ_Proveedores_rfc]
GO
/****** Object:  Index [UQ_Proveedores_razon_social]    Script Date: 13/04/2019 08:11:20 p. m. ******/
ALTER TABLE [dbo].[Proveedores] DROP CONSTRAINT [UQ_Proveedores_razon_social]
GO
/****** Object:  Index [UQ_Cliente_rfc]    Script Date: 13/04/2019 08:11:20 p. m. ******/
ALTER TABLE [dbo].[Cliente] DROP CONSTRAINT [UQ_Cliente_rfc]
GO
/****** Object:  Index [UQ_Cliente_razon_social]    Script Date: 13/04/2019 08:11:20 p. m. ******/
ALTER TABLE [dbo].[Cliente] DROP CONSTRAINT [UQ_Cliente_razon_social]
GO
/****** Object:  Table [dbo].[Puestos]    Script Date: 13/04/2019 08:11:20 p. m. ******/
DROP TABLE [dbo].[Puestos]
GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 13/04/2019 08:11:20 p. m. ******/
DROP TABLE [dbo].[Proveedores]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 13/04/2019 08:11:20 p. m. ******/
DROP TABLE [dbo].[Productos]
GO
/****** Object:  Table [dbo].[Producto_Proveedores]    Script Date: 13/04/2019 08:11:20 p. m. ******/
DROP TABLE [dbo].[Producto_Proveedores]
GO
/****** Object:  Table [dbo].[Pedidos]    Script Date: 13/04/2019 08:11:20 p. m. ******/
DROP TABLE [dbo].[Pedidos]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 13/04/2019 08:11:20 p. m. ******/
DROP TABLE [dbo].[Menu]
GO
/****** Object:  Table [dbo].[Inventario]    Script Date: 13/04/2019 08:11:20 p. m. ******/
DROP TABLE [dbo].[Inventario]
GO
/****** Object:  Table [dbo].[Impuestos]    Script Date: 13/04/2019 08:11:20 p. m. ******/
DROP TABLE [dbo].[Impuestos]
GO
/****** Object:  Table [dbo].[Facturas]    Script Date: 13/04/2019 08:11:20 p. m. ******/
DROP TABLE [dbo].[Facturas]
GO
/****** Object:  Table [dbo].[Factura_Pedidos]    Script Date: 13/04/2019 08:11:20 p. m. ******/
DROP TABLE [dbo].[Factura_Pedidos]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 13/04/2019 08:11:20 p. m. ******/
DROP TABLE [dbo].[Empleado]
GO
/****** Object:  Table [dbo].[Detalle_Platillo]    Script Date: 13/04/2019 08:11:20 p. m. ******/
DROP TABLE [dbo].[Detalle_Platillo]
GO
/****** Object:  Table [dbo].[Detalle_Pedidos]    Script Date: 13/04/2019 08:11:20 p. m. ******/
DROP TABLE [dbo].[Detalle_Pedidos]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 13/04/2019 08:11:20 p. m. ******/
DROP TABLE [dbo].[Cliente]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 13/04/2019 08:11:20 p. m. ******/
DROP TABLE [dbo].[Categoria]
GO
USE [master]
GO
/****** Object:  Database [pv_restaurant]    Script Date: 13/04/2019 08:11:20 p. m. ******/
DROP DATABASE [pv_restaurant]
GO
/****** Object:  Database [pv_restaurant]    Script Date: 13/04/2019 08:11:20 p. m. ******/
CREATE DATABASE [pv_restaurant]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'pv_restaurant', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\pv_restaurant.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'pv_restaurant_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\pv_restaurant_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [pv_restaurant] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [pv_restaurant].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [pv_restaurant] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [pv_restaurant] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [pv_restaurant] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [pv_restaurant] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [pv_restaurant] SET ARITHABORT OFF 
GO
ALTER DATABASE [pv_restaurant] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [pv_restaurant] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [pv_restaurant] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [pv_restaurant] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [pv_restaurant] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [pv_restaurant] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [pv_restaurant] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [pv_restaurant] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [pv_restaurant] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [pv_restaurant] SET  ENABLE_BROKER 
GO
ALTER DATABASE [pv_restaurant] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [pv_restaurant] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [pv_restaurant] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [pv_restaurant] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [pv_restaurant] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [pv_restaurant] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [pv_restaurant] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [pv_restaurant] SET RECOVERY FULL 
GO
ALTER DATABASE [pv_restaurant] SET  MULTI_USER 
GO
ALTER DATABASE [pv_restaurant] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [pv_restaurant] SET DB_CHAINING OFF 
GO
ALTER DATABASE [pv_restaurant] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [pv_restaurant] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [pv_restaurant] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'pv_restaurant', N'ON'
GO
ALTER DATABASE [pv_restaurant] SET QUERY_STORE = OFF
GO
USE [pv_restaurant]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 13/04/2019 08:11:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[id_categoria] [varchar](10) NOT NULL,
	[descripcion] [varchar](45) NOT NULL,
 CONSTRAINT [PK_Categoria_id_categoria] PRIMARY KEY CLUSTERED 
(
	[id_categoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 13/04/2019 08:11:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[id_cliente] [varchar](10) NOT NULL,
	[razon_social] [varchar](45) NOT NULL,
	[rfc] [varchar](13) NOT NULL,
	[direccion] [varchar](45) NULL,
	[telefono] [varchar](10) NOT NULL,
	[email] [varchar](45) NOT NULL,
 CONSTRAINT [PK_Cliente_id_cliente] PRIMARY KEY CLUSTERED 
(
	[id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Detalle_Pedidos]    Script Date: 13/04/2019 08:11:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detalle_Pedidos](
	[id_pedidos] [varchar](10) NULL,
	[id_platillos] [varchar](10) NULL,
	[cantidad] [int] NOT NULL,
	[costo_unitario] [decimal](10, 2) NOT NULL,
	[id_impuesto] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Detalle_Platillo]    Script Date: 13/04/2019 08:11:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detalle_Platillo](
	[id_platillo] [varchar](10) NULL,
	[id_producto] [varchar](10) NULL,
	[cantidad_producto] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 13/04/2019 08:11:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[id_empleado] [varchar](10) NOT NULL,
	[nombre] [varchar](20) NOT NULL,
	[apellidoP] [varchar](20) NOT NULL,
	[apellidoM] [varchar](20) NOT NULL,
	[id_puesto] [varchar](10) NULL,
	[id_supervisor] [varchar](10) NULL,
 CONSTRAINT [PK_Empleado_id_empleado] PRIMARY KEY CLUSTERED 
(
	[id_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Factura_Pedidos]    Script Date: 13/04/2019 08:11:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Factura_Pedidos](
	[id_factura] [varchar](10) NULL,
	[id_pedidos] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Facturas]    Script Date: 13/04/2019 08:11:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Facturas](
	[id_factura] [varchar](10) NOT NULL,
	[id_cliente] [varchar](10) NULL,
	[fecha_creacion] [datetime] NULL,
	[estatus] [bit] NULL,
	[tipo_pago] [varchar](20) NULL,
 CONSTRAINT [PK_Facturas_id_factura] PRIMARY KEY CLUSTERED 
(
	[id_factura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Impuestos]    Script Date: 13/04/2019 08:11:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Impuestos](
	[id_impuesto] [varchar](10) NOT NULL,
	[descripcion] [varchar](45) NOT NULL,
	[porcentaje] [decimal](3, 2) NOT NULL,
 CONSTRAINT [PK_Impuestos_id_impuestos] PRIMARY KEY CLUSTERED 
(
	[id_impuesto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventario]    Script Date: 13/04/2019 08:11:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventario](
	[id_producto] [varchar](10) NULL,
	[stock_min] [int] NOT NULL,
	[stock_max] [int] NOT NULL,
	[stock] [int] NOT NULL,
	[fecha_ingreso] [datetime] NOT NULL,
	[id_empleado] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 13/04/2019 08:11:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[id_platillo] [varchar](10) NOT NULL,
	[nombre] [varchar](20) NOT NULL,
	[costo] [decimal](10, 2) NOT NULL,
	[id_categoria] [varchar](10) NULL,
 CONSTRAINT [PK_Menu_id_platillo] PRIMARY KEY CLUSTERED 
(
	[id_platillo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pedidos]    Script Date: 13/04/2019 08:11:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pedidos](
	[id_pedidos] [varchar](10) NOT NULL,
	[folio_pedido] [varchar](10) NOT NULL,
	[numero_mesa] [varchar](10) NULL,
	[id_mesero] [varchar](10) NULL,
	[fecha] [date] NOT NULL,
	[hora] [time](7) NOT NULL,
	[estatus] [bit] NULL,
 CONSTRAINT [PK_Pedidos_id_orden] PRIMARY KEY CLUSTERED 
(
	[id_pedidos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto_Proveedores]    Script Date: 13/04/2019 08:11:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto_Proveedores](
	[id_producto] [varchar](10) NULL,
	[id_proveedor] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 13/04/2019 08:11:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[id_producto] [varchar](10) NOT NULL,
	[descripcion] [varchar](45) NOT NULL,
	[unidad] [varchar](10) NOT NULL,
	[costo_unitario] [decimal](10, 2) NOT NULL,
	[estatus] [bit] NULL,
 CONSTRAINT [PK_Productos_id_producto] PRIMARY KEY CLUSTERED 
(
	[id_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 13/04/2019 08:11:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedores](
	[id_proveedor] [varchar](10) NOT NULL,
	[razon_social] [varchar](45) NOT NULL,
	[rfc] [varchar](13) NOT NULL,
	[direccion] [varchar](45) NULL,
	[nombre_contacto] [varchar](45) NOT NULL,
	[telefono] [varchar](10) NOT NULL,
	[extension] [varchar](5) NULL,
	[email] [varchar](45) NOT NULL,
 CONSTRAINT [PK_Proveedores_id_proveedor] PRIMARY KEY CLUSTERED 
(
	[id_proveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Puestos]    Script Date: 13/04/2019 08:11:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Puestos](
	[id_puesto] [varchar](10) NOT NULL,
	[descripcion] [varchar](45) NOT NULL,
	[clave_puesto] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Puestos_id_puesto] PRIMARY KEY CLUSTERED 
(
	[id_puesto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_Cliente_razon_social]    Script Date: 13/04/2019 08:11:21 p. m. ******/
ALTER TABLE [dbo].[Cliente] ADD  CONSTRAINT [UQ_Cliente_razon_social] UNIQUE NONCLUSTERED 
(
	[razon_social] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_Cliente_rfc]    Script Date: 13/04/2019 08:11:21 p. m. ******/
ALTER TABLE [dbo].[Cliente] ADD  CONSTRAINT [UQ_Cliente_rfc] UNIQUE NONCLUSTERED 
(
	[rfc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_Proveedores_razon_social]    Script Date: 13/04/2019 08:11:21 p. m. ******/
ALTER TABLE [dbo].[Proveedores] ADD  CONSTRAINT [UQ_Proveedores_razon_social] UNIQUE NONCLUSTERED 
(
	[razon_social] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_Proveedores_rfc]    Script Date: 13/04/2019 08:11:21 p. m. ******/
ALTER TABLE [dbo].[Proveedores] ADD  CONSTRAINT [UQ_Proveedores_rfc] UNIQUE NONCLUSTERED 
(
	[rfc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Facturas] ADD  CONSTRAINT [DF_Facturas_estatus]  DEFAULT ((1)) FOR [estatus]
GO
ALTER TABLE [dbo].[Pedidos] ADD  CONSTRAINT [DF_Pedidos_numero_mesa]  DEFAULT ('domicilio') FOR [numero_mesa]
GO
ALTER TABLE [dbo].[Pedidos] ADD  CONSTRAINT [DF_Pedidos_estatus]  DEFAULT ((1)) FOR [estatus]
GO
ALTER TABLE [dbo].[Productos] ADD  CONSTRAINT [DF_Productos_estatus]  DEFAULT ((1)) FOR [estatus]
GO
ALTER TABLE [dbo].[Proveedores] ADD  CONSTRAINT [DF_Proveedores_extension]  DEFAULT ('00000') FOR [extension]
GO
ALTER TABLE [dbo].[Detalle_Pedidos]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_Pedidos_id_impuesto] FOREIGN KEY([id_impuesto])
REFERENCES [dbo].[Impuestos] ([id_impuesto])
GO
ALTER TABLE [dbo].[Detalle_Pedidos] CHECK CONSTRAINT [FK_Detalle_Pedidos_id_impuesto]
GO
ALTER TABLE [dbo].[Detalle_Pedidos]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_Pedidos_id_pedidos] FOREIGN KEY([id_pedidos])
REFERENCES [dbo].[Pedidos] ([id_pedidos])
GO
ALTER TABLE [dbo].[Detalle_Pedidos] CHECK CONSTRAINT [FK_Detalle_Pedidos_id_pedidos]
GO
ALTER TABLE [dbo].[Detalle_Pedidos]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_Pedidos_id_platillos] FOREIGN KEY([id_platillos])
REFERENCES [dbo].[Menu] ([id_platillo])
GO
ALTER TABLE [dbo].[Detalle_Pedidos] CHECK CONSTRAINT [FK_Detalle_Pedidos_id_platillos]
GO
ALTER TABLE [dbo].[Detalle_Platillo]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_Platillo_id_platillo] FOREIGN KEY([id_platillo])
REFERENCES [dbo].[Menu] ([id_platillo])
GO
ALTER TABLE [dbo].[Detalle_Platillo] CHECK CONSTRAINT [FK_Detalle_Platillo_id_platillo]
GO
ALTER TABLE [dbo].[Detalle_Platillo]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_Platillo_id_producto] FOREIGN KEY([id_producto])
REFERENCES [dbo].[Productos] ([id_producto])
GO
ALTER TABLE [dbo].[Detalle_Platillo] CHECK CONSTRAINT [FK_Detalle_Platillo_id_producto]
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_id_puesto] FOREIGN KEY([id_puesto])
REFERENCES [dbo].[Puestos] ([id_puesto])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Empleado_id_puesto]
GO
ALTER TABLE [dbo].[Factura_Pedidos]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Pedidos] FOREIGN KEY([id_factura])
REFERENCES [dbo].[Facturas] ([id_factura])
GO
ALTER TABLE [dbo].[Factura_Pedidos] CHECK CONSTRAINT [FK_Factura_Pedidos]
GO
ALTER TABLE [dbo].[Factura_Pedidos]  WITH CHECK ADD  CONSTRAINT [FK_Facturas_Pedidos_id_pedidos] FOREIGN KEY([id_pedidos])
REFERENCES [dbo].[Pedidos] ([id_pedidos])
GO
ALTER TABLE [dbo].[Factura_Pedidos] CHECK CONSTRAINT [FK_Facturas_Pedidos_id_pedidos]
GO
ALTER TABLE [dbo].[Facturas]  WITH CHECK ADD  CONSTRAINT [FK_Facturas_id_cliente] FOREIGN KEY([id_cliente])
REFERENCES [dbo].[Cliente] ([id_cliente])
GO
ALTER TABLE [dbo].[Facturas] CHECK CONSTRAINT [FK_Facturas_id_cliente]
GO
ALTER TABLE [dbo].[Inventario]  WITH CHECK ADD  CONSTRAINT [FK_Inventario_id_empleado] FOREIGN KEY([id_empleado])
REFERENCES [dbo].[Empleado] ([id_empleado])
GO
ALTER TABLE [dbo].[Inventario] CHECK CONSTRAINT [FK_Inventario_id_empleado]
GO
ALTER TABLE [dbo].[Inventario]  WITH CHECK ADD  CONSTRAINT [FK_Inventario_id_producto] FOREIGN KEY([id_producto])
REFERENCES [dbo].[Productos] ([id_producto])
GO
ALTER TABLE [dbo].[Inventario] CHECK CONSTRAINT [FK_Inventario_id_producto]
GO
ALTER TABLE [dbo].[Menu]  WITH CHECK ADD  CONSTRAINT [FK_Menu_id_categoria] FOREIGN KEY([id_categoria])
REFERENCES [dbo].[Categoria] ([id_categoria])
GO
ALTER TABLE [dbo].[Menu] CHECK CONSTRAINT [FK_Menu_id_categoria]
GO
ALTER TABLE [dbo].[Pedidos]  WITH CHECK ADD  CONSTRAINT [FK_Pedidos_id_mesero] FOREIGN KEY([id_mesero])
REFERENCES [dbo].[Empleado] ([id_empleado])
GO
ALTER TABLE [dbo].[Pedidos] CHECK CONSTRAINT [FK_Pedidos_id_mesero]
GO
ALTER TABLE [dbo].[Producto_Proveedores]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Proveedores_id_producto] FOREIGN KEY([id_producto])
REFERENCES [dbo].[Productos] ([id_producto])
GO
ALTER TABLE [dbo].[Producto_Proveedores] CHECK CONSTRAINT [FK_Producto_Proveedores_id_producto]
GO
ALTER TABLE [dbo].[Producto_Proveedores]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Proveedores_id_proveedor] FOREIGN KEY([id_proveedor])
REFERENCES [dbo].[Proveedores] ([id_proveedor])
GO
ALTER TABLE [dbo].[Producto_Proveedores] CHECK CONSTRAINT [FK_Producto_Proveedores_id_proveedor]
GO
ALTER TABLE [dbo].[Detalle_Pedidos]  WITH CHECK ADD  CONSTRAINT [CH_Detalle_Pedidos_cantidad] CHECK  (([cantidad]>=(0)))
GO
ALTER TABLE [dbo].[Detalle_Pedidos] CHECK CONSTRAINT [CH_Detalle_Pedidos_cantidad]
GO
ALTER TABLE [dbo].[Detalle_Pedidos]  WITH CHECK ADD  CONSTRAINT [CH_Detalle_Pedidos_costo_unitario] CHECK  (([costo_unitario]>=(0)))
GO
ALTER TABLE [dbo].[Detalle_Pedidos] CHECK CONSTRAINT [CH_Detalle_Pedidos_costo_unitario]
GO
ALTER TABLE [dbo].[Detalle_Platillo]  WITH CHECK ADD  CONSTRAINT [CH_Detalle_Platillo_cantidad_producto] CHECK  (([cantidad_producto]>=(0)))
GO
ALTER TABLE [dbo].[Detalle_Platillo] CHECK CONSTRAINT [CH_Detalle_Platillo_cantidad_producto]
GO
ALTER TABLE [dbo].[Impuestos]  WITH CHECK ADD  CONSTRAINT [CH_Impuestos_porcentaje] CHECK  (([porcentaje]>(0) AND [porcentaje]<(1)))
GO
ALTER TABLE [dbo].[Impuestos] CHECK CONSTRAINT [CH_Impuestos_porcentaje]
GO
ALTER TABLE [dbo].[Inventario]  WITH CHECK ADD  CONSTRAINT [CH_Inventario_stock_max] CHECK  (([stock_max]>=(0)))
GO
ALTER TABLE [dbo].[Inventario] CHECK CONSTRAINT [CH_Inventario_stock_max]
GO
ALTER TABLE [dbo].[Inventario]  WITH CHECK ADD  CONSTRAINT [CH_Inventario_stock_min] CHECK  (([stock_min]>=(0)))
GO
ALTER TABLE [dbo].[Inventario] CHECK CONSTRAINT [CH_Inventario_stock_min]
GO
ALTER TABLE [dbo].[Menu]  WITH CHECK ADD  CONSTRAINT [CH_Menu_costo] CHECK  (([costo]>=(0)))
GO
ALTER TABLE [dbo].[Menu] CHECK CONSTRAINT [CH_Menu_costo]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [CH_Productos_costo_unitario] CHECK  (([costo_unitario]>=(0)))
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [CH_Productos_costo_unitario]
GO
USE [master]
GO
ALTER DATABASE [pv_restaurant] SET  READ_WRITE 
GO
