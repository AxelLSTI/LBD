use Proyecto
CREATE PROCEDURE Clientes
AS 
Select * From tb_cliente
Go;
Exec Clientes

CREATE PROCEDURE CorreoCliente
AS
Select Correo From tb_cliente
GO;
Exec CorreoCliente

Create Procedure IdCliente
AS
Select cliente_id From tb_cliente
GO;
Exec IdCliente

Create procedure Empleado
AS
Select * From tb_empleado
Go;
Exec Empleado

Create procedure Comida
AS
Select * From tb_comida
GO;
Exec Comida

Create procedure Informacion
AS
Select * From tb_info
GO;
Exec Informacion

Create Procedure reservacion
AS 
Select * From tb_reservacion
GO;
Exec reservacion

Create procedure Restaurante
AS
Select restaurante From tb_info
GO;
Exec Restaurante

Create Procedure TelRestaurante
AS
Select telefono From tb_info
GO;
Exec TelRestaurante

Create Procedure Puesto
AS
Select * From tb_puesto
GO;
Exec Puesto