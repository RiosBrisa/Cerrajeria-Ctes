CREATE DATABASE cerrajeria;
GO
USE cerrajeria;
GO



-- Table: Marcas
CREATE TABLE Marcas (
   Id_Marca INT IDENTITY (1,1) NOT NULL,
   Descripcion_marca VARCHAR(50)  NOT NULL,
   CONSTRAINT Marcas_pk PRIMARY KEY (Id_Marca),
);
GO


-- Table: Modelos
--Restricciones:
CREATE TABLE Modelos (
   Id_Marca  INT NOT NULL,
   Id_Modelo INT NOT NULL,
   Descripcion_modelo VARCHAR(50)  NOT NULL,
   CONSTRAINT Modelos_pk PRIMARY KEY (Id_Marca, Id_Modelo),
   CONSTRAINT Modelos_Marca_fk FOREIGN KEY (Id_Marca) REFERENCES Marcas(Id_Marca)
);
GO
-- Table: Usuarios
--Restricciones:
--Los usuarios deben ser mayores de 18 años para registrarse, este dato se verificará mediante el ingreso de la fecha de nacimiento
CREATE TABLE Usuarios (
   Id_Usuario INT IDENTITY(1,1) NOT NULL,
   Nombre_usuario VARCHAR(30)  NOT NULL,
   Apellido_usuario VARCHAR(30)  NOT NULL,
   Telefono_usuario BIGINT  NOT NULL,
   Email_usuario VARCHAR(50)  NOT NULL,
   Contraseña_usuario VARCHAR(8)  NOT NULL,
   FechaNac DATE NOT NULL,
   CONSTRAINT Usuarios_pk PRIMARY KEY (Id_Usuario),
   CONSTRAINT Usuarios_edad_ck CHECK((DATEDIFF(YEAR, fechaNac, GETDATE())) >= 18),
   CONSTRAINT Usuarios_Constraseña_ck CHECK(LEN(Contraseña_usuario) = 8)
);
GO


--Table: Horarios_Atencion
--Restricciones:
CREATE TABLE Horarios_Atencion(
	Id_Horario INT IDENTITY,
	Descripcion_horario VARCHAR(10) NOT NULL,
	CONSTRAINT Horarios_Atencion_pk PRIMARY KEY(Id_Horario),
);
GO

-- Table: TipoPago
--Restricciones:
CREATE TABLE TipoPago (
   Id_tipoPago INT IDENTITY(1,1) NOT NULL,
   Descripcion_tipoPago VARCHAR(50)  NOT NULL,
   CONSTRAINT TipoPago_pk PRIMARY KEY  (Id_tipoPago),
);
GO

-- Table: Servicios
-- Restricciones:
CREATE TABLE Servicios (
   Id_Servicio INT IDENTITY(1,1) NOT NULL,
   Descripcion_servicio VARCHAR(50)  NOT NULL,
   CONSTRAINT Servicios_pk PRIMARY KEY  (Id_Servicio),
);
GO

--Table: Sucursal
--Restricciones:
CREATE TABLE Sucursal (
	Id_Sucursal INT IDENTITY (1,1) NOT NULL,
	Razon_Social_sucursal VARCHAR(50) NOT NULL,
	Direccion_sucursal VARCHAR(50) Not null,
	Telefono_sucursal BIGINT NOT NULL,
	CONSTRAINT Sucursal_pk PRIMARY KEY(Id_Sucursal),
	);
GO 
-- Table: Turno
--Restricciones:
--La fecha de reserva debe ser posterior a la fecha de emision del turno generado
--La fecha de emision del turno es por defecto la fecha actual obtenida por medio de la sentencia GETDATE()
CREATE TABLE Turno (
   Fecha_reserva DATE  NOT NULL,
   Id_Horario INT NOT NULL,
   Id_Sucursal INT NOT NULL,
   Id_Usuario INT NOT NULL,
   --CONSTRAINT Turno_pk PRIMARY KEY (Id_Reserva),
   CONSTRAINT Turno_pk PRIMARY KEY (Fecha_reserva, Id_Horario, Id_Sucursal),
   CONSTRAINT Turno_Horario_fk FOREIGN KEY (Id_Horario) REFERENCES Horarios_Atencion(Id_Horario),
   CONSTRAINT Turno_Usuario_fk FOREIGN KEY (Id_Usuario) REFERENCES Usuarios(Id_Usuario), 
   CONSTRAINT Turno_FechaReserva_ck CHECK (fecha_reserva > GETDATE())
);
GO

-- Table: Empleado
--Restricciones:
--El empleado debe ser mayor de 18 años para poder registrarse, este dato se verificará mediante la fecha de nacimiento
--El campo genero de la entidad empleado  esta restrindigido a: F(Femenino), M(Masculino)
CREATE TABLE Empleado (
   Id_Empleado INT IDENTITY(1,1) NOT NULL,
   Nombre_empleado VARCHAR(30)  NOT NULL,
   Apellido_empleado VARCHAR(30)  NOT NULL,
   Telefono_empleado BIGINT  NOT NULL,
   Dni_empleado INT NOT NULL,
   fechaNac DATE NOT NULL,
   Id_Sucursal INT NOT NULL,
   Genero_empleado CHAR NOT NULL,
   CONSTRAINT Empleado_pk PRIMARY KEY (Id_Empleado),
   CONSTRAINT Empleado_Sucursal FOREIGN KEY (Id_Sucursal) REFERENCES Sucursal(Id_Sucursal),
   CONSTRAINT Empleado_edad_ck CHECK((DATEDIFF(YEAR, fechaNac, GETDATE()) >= 18)),
   CONSTRAINT Empleado_dni_ck CHECK(Dni_empleado > 0),
   CONSTRAINT Empleado_genero CHECK(Genero_empleado IN ('M','F')),
   CONSTRAINT Empleado_dni_UQ UNIQUE(Dni_empleado)
  
);

GO

-- Table: Vehiculos
CREATE TABLE Vehiculos (
   Patente VARCHAR(7)  NOT NULL,
   Id_Marca INT  NOT NULL,
   Id_Modelo INT  NOT NULL,
   id_Usuario INT  NOT NULL,
   CONSTRAINT Vehiculos_pk PRIMARY KEY  (Patente),
   CONSTRAINT Vehiculo_Modelos_fk FOREIGN KEY (Id_Marca,Id_Modelo) REFERENCES Modelos(Id_Marca,Id_Modelo),
   CONSTRAINT Vehiculo_Usuarios_fk FOREIGN KEY (Id_Usuario) REFERENCES Usuarios(Id_Usuario),
   );

   GO


-- Table: Consultas_Servicios
CREATE TABLE Consultas (
   Id_Consulta INT  NOT NULL,
   Id_Servicio INT  NOT NULL,
   descripcion_consulta VARCHAR(100)  NOT NULL,
   CONSTRAINT Consultas_Servicios_pk PRIMARY KEY  (id_Consulta, Id_Servicio),
   CONSTRAINT Consultas_Servicios_Servicios_fk FOREIGN KEY (Id_Servicio) REFERENCES Servicios(Id_Servicio),
);

GO
-- Table: Respuesta
CREATE TABLE Respuesta_Consulta (
   Id_Respuesta INT IDENTITY(1,1) NOT NULL,
   Id_Consulta INT  NOT NULL,
   Id_Servicio INT NOT NULL,
   descripcion_respuesta VARCHAR(100) NOT NULL,
   CONSTRAINT Respuesta_Consulta_pk PRIMARY KEY  (Id_Respuesta),
   CONSTRAINT Respuesta_Consulta_fk FOREIGN KEY (Id_Consulta, Id_Servicio) REFERENCES Consultas (Id_Consulta, Id_Servicio),
);
GO

-- Table: Facturas
--Restricciones:
--La fecha de emision de la factura es por defecto la fecha actual obtenida por medio de la sentencia GETDATE()
CREATE TABLE Facturas (
   Id_Factura INT IDENTITY(1,1) NOT NULL,
   Patente VARCHAR(7)  NOT NULL,
   Id_Empleado INT  NOT NULL,
   Id_tipoPago INT  NOT NULL,
   Fecha_factura DATE CONSTRAINT Factura_fecha_df DEFAULT GETDATE(),
   CONSTRAINT Facturas_pk PRIMARY KEY  (Id_Factura),
   CONSTRAINT Factura_Vehiculo_fk FOREIGN KEY (Patente) REFERENCES Vehiculos(Patente),
   CONSTRAINT Factura_Empleado_fk FOREIGN KEY (Id_Empleado) REFERENCES Empleado(Id_Empleado),
   CONSTRAINT Factura_tipoPago_fk FOREIGN KEY (Id_tipoPago) REFERENCES TipoPago(Id_tipoPago),
);

GO

-- Table: Detalle_Factura
--Restricciones:
--El subtotal por el servicio realizado debe ser superior a 0
CREATE TABLE Detalle_Factura (
   Id_Factura INT  NOT NULL,
   Id_Servicio INT  NOT NULL,
   Subtotal DECIMAL(8,2) NOT NULL,
   CONSTRAINT Detalle_Factura_pk PRIMARY KEY  (Id_Factura,Id_Servicio),
   CONSTRAINT Detalle_Factura_Factura_fk FOREIGN KEY (Id_Factura) REFERENCES Facturas(Id_Factura),
   CONSTRAINT Detalle_Factura_Servicios_fk FOREIGN KEY (Id_Servicio) REFERENCES Servicios(Id_Servicio),
   CONSTRAINT Detalle_Factura_Subtotal_ck CHECK (Subtotal > 0)
);

GO

