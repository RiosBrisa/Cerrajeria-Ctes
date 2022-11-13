USE cerrajeria;
GO


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
	@Razon_Social_sucursal VARCHAR(50),
	@Direccion_sucursal Varchar(50),
	@Telefono_sucursal bigint
AS
BEGIN
	UPDATE Sucursal
	SET
	Razon_Social_sucursal = @Razon_Social_sucursal,
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
   @Id_Usuario INT

AS 
BEGIN
	IF (dbo.VerificarTurnoUsuario (@Id_Usuario, @Fecha_reserva) = 0)	
	INSERT Turno
	VALUES(@Fecha_reserva, @Id_Horario,@Id_Sucursal,@Id_Usuario);
	ELSE 
	SELECT 'ERROR' AS MENSAJE
END;
GO

CREATE FUNCTION VerificarTurnoUsuario (@Id_Usuario AS INT, @FechaReserva as DATE)
RETURNS INT
AS 
BEGIN
   DECLARE @Cant INT =0
   DECLARE @FechaActual DATE = GETDATE()
   Select @Cant = count(*) from turno where id_Usuario =  @Id_Usuario and Fecha_Reserva = @FechaReserva
   RETURN @Cant
END;
GO

--MODIFICACIONES--
CREATE PROCEDURE modificarTurno
   @Fecha_reserva date,
   @Id_Horario INT,
   @Id_Sucursal INT,
   @Id_Usuario int
AS
 BEGIN
	UPDATE Turno
	SET
	   Id_Usuario = @Id_Usuario   
    WHERE    Fecha_reserva = @Fecha_reserva AND Id_Horario = @Id_Horario AND Id_Sucursal = @Id_Sucursal
END
GO

--BAJAS--
CREATE PROCEDURE bajaTurno
   @Fecha_reserva date,
   @Id_Horario INT,
   @Id_Sucursal INT
AS
BEGIN
	DELETE FROM Turno
		WHERE Fecha_reserva = @Fecha_reserva AND Id_Horario = @Id_Horario AND Id_Sucursal = @Id_Sucursal
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
	@Id_Consulta int,
   @Id_Servicio int,
   @descripcion_consulta varchar(100)

AS
BEGIN
	INSERT INTO Consultas
   
	VALUES(@Id_Consulta,@Id_Servicio, @descripcion_consulta);
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
	descripcion_consulta = @descripcion_consulta	
    WHERE Id_Consulta = @Id_Consulta and Id_Servicio = @Id_Servicio
END
GO

--BAJAS--
CREATE PROCEDURE bajaConsultas
	@Id_Consulta INT,
	@Id_Servicio INT 
AS
BEGIN
	DELETE FROM Consultas
		WHERE Id_Consulta = @Id_Consulta AND Id_Servicio = @Id_Servicio
END
GO


----------------
--RESPUESTAS----
----------------
--ALTAS--
CREATE PROCEDURE insertarRespuestas
   @Id_Consulta int,
   @Id_Servicio INT,
   @descripcion_respuesta VARCHAR(100)
AS
BEGIN
	INSERT INTO Respuesta_Consulta
   
	VALUES(@Id_Consulta, @Id_Servicio, @descripcion_respuesta);
END 
GO

--MODIFICACIONES--
CREATE PROCEDURE modificarRespuestas
   @Id_Respuesta int,
   @Id_Consulta int,
   @Id_Servicio INT,
   @descripcion_respuesta varchar(100)
AS
BEGIN
	UPDATE Respuesta_Consulta
	SET
		
	Id_Consulta = @Id_Consulta,
	Id_Servicio = @Id_Servicio,
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


--Llamada a la función
--SELECT dbo.verificarEmpleado(15) as EMPLEADO


--FUNCION--
--Recibe como parametro el numero de factura y retorna el codigo del empleado que realizo los servicios asociados a la factura
 CREATE FUNCTION verificarEmpleado (@nroFactura AS int)
	RETURNS INT
	AS
	BEGIN
	DECLARE @retornaEmpleado INT
	SELECT @retornaEmpleado = Id_Empleado from Facturas 
	WHERE Id_Factura = @nroFactura
	RETURN @retornaEmpleado
	END;
GO


-- Se genera una tabla denominada auditoria para registrar cuando se hagan eliminaciones o inserciones en la tabla formulario
CREATE TABLE auditoria(
	Fecha_reserva DATE  NOT NULL,
    Id_Horario INT NOT NULL,
    Id_Sucursal INT NOT NULL,
    Id_Usuario INT NOT NULL,
	fechaModificacion DATETIME NOT NULL,
	usuario VARCHAR(50) NOT NULL,
	tipoOperacion VARCHAR(10)
);
GO

--TRIGGERS--

--TRIGGER que registra las inserciones que se hagan en la tabla turnos
CREATE TRIGGER TR_turno_INSERT 
ON Turno
	AFTER INSERT
AS
BEGIN
	INSERT INTO auditoria
	(Fecha_reserva,Id_Horario,Id_Sucursal,Id_Usuario,fechaModificacion, usuario,tipoOperacion)
	SELECT Fecha_reserva,Id_Horario,Id_Sucursal,Id_Usuario, GETDATE(), system_user, 'insertar'
	FROM inserted
END

GO

--TRIGGER que registra las eliminaciones que se hagan en la tabla turnos
CREATE TRIGGER TR_turno_DELETE 
ON Turno
	AFTER DELETE
AS
BEGIN
	INSERT INTO auditoria
	(Fecha_reserva,Id_Horario,Id_Sucursal,Id_Usuario,fechaModificacion, usuario,tipoOperacion)
	SELECT Fecha_reserva , Id_Horario,Id_Sucursal,Id_Usuario, GETDATE(), system_user, 'eliminar'
	FROM deleted
	
END
GO
/*Sentencias para eliminar los triggers*/
--drop trigger TR_turno_DELETE 
--drop trigger TR_turno_INSERT



--VISTAS--
CREATE VIEW Detalles_Facturacion
AS
SELECT df.Id_Factura as "N° Factura", 
s.Descripcion_servicio as Servicio, 
CONCAT(u.Apellido_usuario, ' ', u.Nombre_usuario) As "Nombre de cliente", df.Subtotal AS "Pago por servicio"
FROM Detalle_Factura df
INNER JOIN Servicios s on df.Id_Servicio = s.Id_Servicio
INNER JOIN Facturas f on df.Id_Factura = f.Id_Factura
INNER JOIN Vehiculos v on v.Patente = f.Patente
INNER JOIN Usuarios u on u.Id_Usuario = v.id_Usuario
GROUP BY df.Id_Factura, s.Descripcion_servicio, u.Nombre_usuario, u.Apellido_usuario, df.Subtotal
GO

CREATE VIEW factura_usuario
AS
SELECT f.Id_Factura AS "N° Factura", CONCAT(u.Apellido_usuario, ' ', u.Nombre_usuario) As "Nombre de cliente", SUM(Subtotal) AS Importe From Facturas f
INNER JOIN Detalle_Factura df on f.Id_Factura = df.Id_Factura
INNER JOIN Vehiculos v on v.Patente = f.Patente
INNER JOIN Usuarios u on u.Id_Usuario = v.id_Usuario
GROUP BY f.Id_Factura, u.Apellido_usuario, u.Nombre_usuario
GO

CREATE VIEW vehiculo_usuario
AS
SELECT v.Patente AS Patente, m.Descripcion_marca as Marca, md.Descripcion_modelo as Modelo,  CONCAT(u.Apellido_usuario, ' ',u.Nombre_usuario) As "Nombre de cliente", u.Telefono_usuario AS Telefono, u.Email_usuario AS EMAIL
FROM Vehiculos v
INNER JOIN Usuarios u  ON v.Id_Usuario = u.id_Usuario
INNER JOIN Modelos md on v.Id_Modelo = md.Id_Modelo and v.Id_Marca = md.Id_Marca
INNER JOIN Marcas m on md.Id_Marca = m.Id_Marca
GO

CREATE VIEW Consultas_Respuestas
AS
SELECT s.Descripcion_servicio as "Servicio", c.descripcion_consulta as "Consulta", rc.descripcion_respuesta as "Respuesta" FROM Respuesta_Consulta rc
INNER JOIN Consultas c on rc.Id_Consulta = c.Id_Consulta and rc.Id_Servicio = c.Id_Servicio
INNER JOIN Servicios s ON rc.Id_Servicio = s.Id_Servicio

GO

CREATE VIEW lista_turnos
AS SELECT t.Fecha_reserva as "Fecha Reserva", h.Descripcion_horario AS Horario, CONCAT(u.Apellido_usuario, ' ', u.Nombre_usuario ) as "Nombre Cliente", u.Telefono_usuario , s.Direccion_sucursal AS "Direccion sucursal", s.Razon_Social_sucursal as "Nombre Sucursal" FROM Turno t
INNER JOIN Sucursal s on t.Id_Sucursal = s.Id_Sucursal
INNER JOIN Horarios_Atencion h on t.Id_Horario = h.Id_Horario
INNER JOIN Usuarios u on t.Id_Usuario = u.Id_Usuario
GO

CREATE VIEW lista_vehiculos
AS SELECT m.Descripcion_marca as Marca, md.Descripcion_modelo as Modelo FROM Modelos md
INNER JOIN Marcas m on md.Id_Marca = m.Id_Marca
Go
