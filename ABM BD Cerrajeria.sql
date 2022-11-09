--USE cerrajeria;
--G0


--Script de creacion de procedimientos almacenados de ABM ,ALTAS,BAJAS y MODIFICACIONES, de las tablas de la base de datos carrajeria
------------ 
--MARCAS----
------------
--ALTAS--
CREATE PROCEDURE insertarMarca
	@Descripcion_marca varchar(50)
AS
BEGIN
	INSERT INTO Marcas
	VALUES(@Descripcion_marca);
END 
GO

--MODIFICACIONES--
CREATE PROCEDURE modificarMarca
	@Id_Marca Int,
	@Descripcion_marca varchar(50)
AS
BEGIN
	UPDATE Marcas
	SET
	Descripcion_marca=@Descripcion_marca
    WHERE Id_Marca = @Id_Marca
END
GO

--BAJAS--
CREATE PROCEDURE bajaMarca
	@Id_Marca INT
AS
BEGIN
	DELETE FROM Marcas
		WHERE Id_Marca = @Id_Marca
END
GO

-------------
--MODELOS----
-------------
--ALTAS--
CREATE PROCEDURE insertarModelo
	@Id_Marca INT,
	@Id_Modelo INT,
	@Descripcion_modelo varchar(50)
AS
BEGIN
	INSERT INTO Modelos
	VALUES(@Id_Marca,@Id_Modelo, @Descripcion_modelo);
END 
GO
--MODIFICACIONES--
CREATE PROCEDURE modificarModelo
	@Id_Marca int,
	@Id_Modelo int,
	@Descripcion_modelo varchar(50)
AS
BEGIN
	UPDATE Modelos
	SET
	Descripcion_modelo=@Descripcion_modelo
    WHERE Id_Marca = @id_Marca AND Id_Modelo = @Id_Modelo 
END
GO
--BAJAS--
CREATE PROCEDURE bajaModelo
    @Id_Marca int,
	@Id_Modelo int
AS
BEGIN
	DELETE FROM Modelos
		WHERE Id_Marca = @id_Marca AND Id_Modelo = @Id_Modelo 
END
GO

--------------
--USUARIOS----
--------------
--ALTAS--
CREATE PROCEDURE insertarUsuario
   @Nombre_usuario varchar(30),
   @Apellido_usuario varchar(30) ,
   @Telefono_usuario bigint,
   @Email_usuario varchar(50) ,
   @Contraseña_usuario varchar(8),
   @FechaNac Date
AS
BEGIN
	INSERT INTO Usuarios
	VALUES(@Nombre_usuario,@Apellido_usuario, @Telefono_usuario, @Email_usuario, @Contraseña_usuario, @FechaNac);
END 
GO

--MODIFICACIONES--
CREATE PROCEDURE modificarUsuario
   @Id_Usuario INT,
   @Nombre_usuario varchar(30),
   @Apellido_usuario varchar(30) ,
   @Telefono_usuario bigint,
   @Email_usuario varchar(50),
   @Contraseña_usuario varchar(8),
   @FechaNac Date
AS
BEGIN
	UPDATE Usuarios 
	SET
	Nombre_usuario = @Nombre_usuario,
	Apellido_usuario = @Apellido_usuario, 
	Telefono_usuario = @Telefono_usuario, 
	Email_usuario =  @Email_usuario, 
	Contraseña_usuario = @Contraseña_usuario,
	FechaNac = @FechaNac
    WHERE Id_Usuario = @Id_Usuario
END
GO 

--BAJAS--
CREATE PROCEDURE bajaUsuario
	@Id_Usuarios INT
AS
BEGIN
	DELETE FROM Usuarios
		WHERE @Id_Usuarios = @Id_Usuarios
END
GO

----------------------
--HORARIOS ATENCION---
----------------------
--ALTAS--
CREATE PROCEDURE insertarHorarioAtencion
	@Descripcion_horario varchar(50)
AS
BEGIN
	INSERT INTO Horarios_Atencion
	VALUES(@Descripcion_horario);
END 
GO

--MODIFICACIONES--
CREATE PROCEDURE modificarHorarioAtencion
	@Id_Horario Int,
	@Descripcion_horario varchar(50)
AS
BEGIN
	UPDATE Horarios_Atencion
	SET
	Descripcion_horario=@Descripcion_horario
    WHERE Id_Horario = @Id_Horario
END
GO

--BAJAS--
CREATE PROCEDURE bajaHorarioAtencion
	@Id_Horario INT
AS
BEGIN
	DELETE FROM Horarios_Atencion
		WHERE Id_Horario = @Id_Horario
END
GO


-------------- 
--TipoPago----
--------------
--ALTAS--
CREATE PROCEDURE insertartipoPago
	@Descripcion_tipoPago varchar(50)
AS
BEGIN
	INSERT INTO TipoPago
	VALUES(@Descripcion_tipoPago);
END 
GO

--MODIFICACIONES--
CREATE PROCEDURE modificartipoPago
	@Id_tipoPago Int,
	@Descripcion_tipoPago varchar(50)
AS
BEGIN
	UPDATE TipoPago
	SET
	Descripcion_tipoPago=@Descripcion_tipoPago
    WHERE Id_tipoPago = @Id_tipoPago
END
GO

--BAJAS--
CREATE PROCEDURE bajatipoPago
	@Id_tipoPago INT
AS
BEGIN
	DELETE FROM TipoPago
		WHERE Id_tipoPago = @Id_tipoPago
END
GO

---------------
--Servicios----
---------------
--ALTAS--
CREATE PROCEDURE insertarServicio
   @Descripcion_servicio varchar(50)
AS
BEGIN
	INSERT INTO Servicios
	VALUES(@Descripcion_servicio);
END 
GO

--MODIFICACIONES--
CREATE PROCEDURE modificarServicio
   @Id_Servicio INT,
   @Descripcion_servicio varchar(50)
AS
BEGIN
	UPDATE Servicios
	SET
	Descripcion_servicio = @Descripcion_servicio
    WHERE Id_Servicio = @Id_Servicio
END
GO

--BAJAS--
CREATE PROCEDURE bajaServicio
	@Id_Servicio INT
AS
BEGIN
	DELETE FROM Servicios
		WHERE Id_Servicio = @Id_Servicio
END
GO

--------------
--SUCURSAL----
--------------
--ALTAS--
CREATE PROCEDURE insertarSucursal
	@Razon_Social_sucursal Varchar(50),
	@Direccion_sucursal Varchar(50),
	@Telefono_sucursal bigint
AS
BEGIN
	INSERT INTO Sucursal
	VALUES(@Razon_Social_sucursal, @Direccion_sucursal,@Telefono_sucursal);
END 
GO

--MODIFICACIONES--
CREATE PROCEDURE modificarSucursal
	@Id_Sucursal Int,
	@Razon_Social_sucursal Varchar(50),
	@Direccion_sucursal Varchar(50),
	@Telefono_sucursal bigint
AS
BEGIN
	UPDATE Sucursal
	SET
	Razon_Social_sucural = @Razon_Social_sucursal,
	Direccion_sucursal = @Direccion_sucursal,
	Telefono_sucursal = @Telefono_sucursal
    WHERE Id_Sucursal = @Id_Sucursal
END
GO

--BAJAS--
CREATE PROCEDURE bajaSucursal
	@Id_Sucursal INT
AS
BEGIN
	DELETE FROM Sucursal
		WHERE @Id_Sucursal = @Id_Sucursal
END
GO


----------- 
--TURNO----
-----------
--ALTAS--
CREATE PROCEDURE insertarTurno
   @Fecha_reserva date,
   @Id_Horario INT,
   @Id_Sucursal INT,
   @Id_Usuario int
AS

BEGIN
	BEGIN TRAN
	BEGIN TRY
    IF (SELECT dbo.VerificarTurnoUsuario (@Id_Usuario, @Fecha_reserva)) = 0
	INSERT INTO Turno VALUES(@Fecha_reserva, @Id_Horario,@Id_Sucursal,@Id_Usuario);
	COMMIT TRAN
	END TRY
	BEGIN CATCH
	ROLLBACK TRAN
	PRINT 'ERROR'
	END CATCH
END; 
GO
-- Disable all constraints for database
EXEC sp_msforeachtable "ALTER TABLE ? NOCHECK CONSTRAINT all"
-- Enable all constraints for database
EXEC sp_msforeachtable "ALTER TABLE ? WITH CHECK CHECK CONSTRAINT all"
SELECT * FROM turno

CREATE FUNCTION VerificarTurnoUsuario (@Id_Usuario AS INT, @FechaReserva as DATE)
RETURNS INT
AS 
BEGIN
   DECLARE @Cant INT
   DECLARE @FechaActual DATE = GETDATE()
   Select @Cant = count(*) from turno where id_Usuario =  @Id_Usuario and Fecha_Reserva = @FechaReserva
   RETURN @Cant
END;

--MODIFICACIONES--
CREATE PROCEDURE modificarTurno
   @Id_reserva INT,
   @Fecha_reserva date,
   @Id_Horario INT,
   @Id_Sucursal INT,
   @Id_Usuario int
AS
 BEGIN
	UPDATE Turno
	SET
	   Fecha_reserva = @Fecha_reserva,
	   Id_Horario = @Id_Horario,
	   Id_Sucursal = @Id_Sucursal,
	   Id_Usuario = @Id_Usuario,   
	   Fecha_emision = GETDATE()
    WHERE Id_Reserva = @Id_reserva
END
GO

--BAJAS--
CREATE PROCEDURE bajaTurno
	@Id_Reserva INT
AS
BEGIN
	DELETE FROM Turno
		WHERE Id_Reserva = @Id_Reserva
END
GO

--------------
--EMPLEADO----
--------------
--ALTAS--
CREATE PROCEDURE insertarEmpleado
   @Nombre_empleado varchar(30) ,
   @Apellido_empleado varchar(30) ,
   @Telefono_empleado bigint ,
   @Dni_empleado INT,
   @fechaNac DATE,
   @Id_Sucursal INT,
   @Genero_empleado CHAR

AS
BEGIN
	INSERT INTO Empleado
   
	VALUES(@Nombre_empleado, @Apellido_empleado,@Telefono_empleado, @Dni_empleado, @fechaNac,@Id_Sucursal,@Genero_empleado );
END 
GO

--MODIFICACIONES--
CREATE PROCEDURE modificarEmpleado
   @Id_empleado INT,
   @Nombre_empleado varchar(30) ,
   @Apellido_empleado varchar(30) ,
   @Telefono_empleado bigint ,
   @Dni_empleado INT,
   @fechaNac DATE,
   @Id_Sucursal INT,
   @Genero_empleado CHAR
AS
BEGIN
	UPDATE Empleado
	SET
		Nombre_empleado   =   @Nombre_empleado,
		Apellido_empleado =   @Apellido_empleado,
		Telefono_empleado =   @Telefono_empleado,
		Dni_empleado      =   @Dni_empleado,
		@fechaNac		  =   @fechaNac,
		Id_Sucursal		  =   @Id_Sucursal,
		Genero_empleado   =   @Genero_empleado 
    WHERE Id_Empleado = @Id_Empleado
END
GO

--BAJAS--
CREATE PROCEDURE bajaEmpleado
	@Id_Empleado INT
AS
BEGIN
	DELETE FROM Empleado
		WHERE Id_Empleado = @Id_Empleado
END
GO


--------------
--Vehiculo----
--------------
--ALTAS--
CREATE PROCEDURE insertarVehiculo
   @Patente VARCHAR(7),
   @Id_Marca int,
   @Id_Modelo int,
   @id_Usuario int

AS
BEGIN
	INSERT INTO Vehiculos
   
	VALUES(@Patente, @Id_Marca, @Id_Modelo,@id_Usuario);
END 
GO

--MODIFICACIONES--
CREATE PROCEDURE modificarVehiculo
   @Patente varchar(7),
   @Id_Marca int,
   @Id_Modelo int
AS
BEGIN
	UPDATE Vehiculos
	SET
		
	Id_Marca = @Id_Marca,
	Id_Modelo = @Id_Modelo
    WHERE Patente  = Patente
END
GO

--BAJAS--
CREATE PROCEDURE bajaVehiculo
	@Id_Vehiculo INT
AS
BEGIN
	DELETE FROM Vehiculos
		WHERE Patente = Patente
END
GO


---------------
--CONSULTAS----
---------------
--ALTAS--
CREATE PROCEDURE insertarConsultas
   @Id_Servicio int,
   @descripcion_consulta varchar(100)

AS
BEGIN
	INSERT INTO Consultas
   
	VALUES(@Id_Servicio, @descripcion_consulta);
END 
GO

--MODIFICACIONES--
CREATE PROCEDURE modificarConsultas
   @Id_Consulta int,
   @Id_Servicio int,
   @descripcion_consulta varchar(100)
AS
BEGIN
	UPDATE Consultas
	SET
		
	Id_Servicio = @Id_Servicio,
	descripcion_consulta = @descripcion_consulta	
    WHERE Id_Consulta = @Id_Consulta
END
GO

--BAJAS--
CREATE PROCEDURE bajaConsultas
	@Id_Consulta INT
AS
BEGIN
	DELETE FROM Consultas
		WHERE Id_Consulta = @Id_Consulta
END
GO


----------------
--RESPUESTAS----
----------------
--ALTAS--
CREATE PROCEDURE insertarRespuestas
   @Id_Consulta int,
   @descripcion_respuesta VARCHAR(100)
AS
BEGIN
	INSERT INTO Respuesta_Consulta
   
	VALUES(@Id_Consulta, @descripcion_respuesta);
END 
GO

--MODIFICACIONES--
CREATE PROCEDURE modificarRespuestas
   @Id_Respuesta int,
   @Id_Consulta int,
   @descripcion_respuesta varchar(100)
AS
BEGIN
	UPDATE Respuesta_Consulta
	SET
		
	Id_Consulta = @Id_Consulta,
	descripcion_respuesta = @descripcion_respuesta	
    WHERE Id_Respuesta = @Id_Respuesta
END
GO

--BAJAS--
CREATE PROCEDURE bajaRespuestas
	@Id_Respuesta INT
AS
BEGIN
	DELETE FROM Respuesta_Consulta
		WHERE Id_Respuesta = @Id_Respuesta
END
GO

-----------
--FACTURA--
-----------
--ALTAS--
CREATE PROCEDURE insertarFactura
   @Patente varchar(7),
   @Id_Empleado int,
   @Id_tipoPago int,
   @Fecha_factura DATE
 AS
   BEGIN
	INSERT INTO Facturas
          VALUES(@Patente,@Id_Empleado,@Id_tipoPago, @Fecha_factura);
END 
GO

--MODIFICACIONES--
 CREATE PROCEDURE modificarFactura
   @Id_Factura int,
   @Patente varchar(7),
   @Id_Empleado int,
   @Id_tipoPago int,
   @Fecha_factura DATE
AS
BEGIN
	UPDATE Facturas
	SET
		  Patente = @Patente,
		  Id_Empleado = @Id_Empleado,
		  Id_tipoPago = @Id_tipoPago, 
		  Fecha_factura = @Fecha_factura
		  WHERE Id_Factura = @Id_Factura
END
GO
--BAJAS--
CREATE PROCEDURE bajaFactura
	@Id_Factura INT
AS
BEGIN
	DELETE FROM Facturas
		WHERE Id_Factura = @Id_Factura
END
GO

-------------------
--DETALLE_FACTURA--
-------------------

--ALTAS--
 CREATE PROCEDURE insertarFacturaDetalle
   @Id_Factura int,
   @Id_Servicio INT,
   @Subtotal DECIMAL (8,2)
 AS
   BEGIN
	INSERT INTO Detalle_Factura
          VALUES(@Id_Factura, @Id_Servicio, @Subtotal);
END 
GO
--MODIFICACIONES--
 CREATE PROCEDURE modificarFacturaDetalle
   @Id_Factura int,
   @Id_Servicio INT,
   @Subtotal DECIMAL (8,2)
AS
BEGIN
	UPDATE Detalle_Factura
	SET
		  Subtotal = @Subtotal
		  WHERE id_factura = @Id_Factura and Id_Servicio = @Id_Servicio
END
GO

--BAJA--
CREATE PROCEDURE bajaFacturaDetalle
	@Id_Factura INT,
	@Id_Servicio INT
AS
BEGIN
	DELETE FROM Detalle_Factura
		WHERE id_factura = @Id_Factura and Id_Servicio = @Id_Servicio
END
GO

BEGIN TRANSACTION 
BEGIN TRY
EXEC insertarFactura 

/* Confirmamos la transaccion*/
COMMIT TRANSACTION 
	/*Registrar Cabecera de factura*/
    EXEC insertarFactura CA384ND,7,3, '6/5/2022'
	/*Registrar Detalle de Factura*/
	EXEC insertarFacturaDetalle 15, 1,9500
    EXEC insertarFacturaDetalle 15, 3,15000
END TRY

BEGIN CATCH

/* Ocurrió un error, deshacemos los cambios*/ 
ROLLBACK TRANSACTION
PRINT 'Ha ocurrido un error!'

END CATCH

--VISTAS--

GO
CREATE VIEW vehiculo_usuario
AS
SELECT v.Id_Marca,v.Id_Modelo,v.Patente, u.Id_Usuario, u.Apellido_usuario,u.Nombre_usuario, u.Telefono_usuario,u.Email_usuario
FROM Vehiculos AS v inner join Usuarios AS u ON u.Id_Usuario  = v.Id_Usuario
GO
CREATE VIEW factura_Vehiculo
AS
SELECT v.Patente,v.Id_Marca,v.Id_Modelo,f.Fecha_factura,f.Id_Empleado,f.Id_tipoPago,u.Nombre_usuario, u.Apellido_usuario, u.Telefono_usuario
FROM Facturas AS f inner join Vehiculos AS v ON f.Patente = v.Patente
INNER JOIN Usuarios AS u ON v.id_Usuario = u.Id_Usuario
GO
CREATE VIEW	factura_Detalle
AS
SELECT f.Fecha_factura,f.Id_Usuario, f.Patente, df.Id_Servicio, df.Subtotal
FROM Facturas AS f inner join Detalle_Factura AS df ON f.Id_Factura = df.Id_Factura

GO