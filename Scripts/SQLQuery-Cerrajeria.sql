CREATE DATABASE cerrajeria;

-- Table: Marcas
CREATE TABLE Marcas (
   Id_Marca int  NOT NULL,
   Descripción_marca varchar(50)  NOT NULL,
   CONSTRAINT Marcas_pk PRIMARY KEY  (Id_Marca)
);


-- Table: Modelos
CREATE TABLE Modelos (
   Id_Modelo int  NOT NULL,
   Descripción_modelo varchar(50)  NOT NULL,
   CONSTRAINT Modelos_pk PRIMARY KEY  (Id_Modelo)
);

-- Table: Turno
CREATE TABLE Turno (
   Id_Reserva int  NOT NULL,
   Id_Usuario int  NOT NULL,
   Fecha_reserva date  NOT NULL,
   CONSTRAINT Turno_pk PRIMARY KEY  (Id_Reserva)
);

-- Table: TipoPago
CREATE TABLE TipoPago (
   Id_Pago int  NOT NULL,
   Descripción_pago varchar(50)  NOT NULL,
   CONSTRAINT TipoPago_pk PRIMARY KEY  (Id_Pago)
);

-- Table: Empleado
CREATE TABLE Empleado (
   Id_Tecnico int  NOT NULL,
   Nombre_tecnico varchar(30)  NOT NULL,
   Apellido_tecnico varchar(30)  NOT NULL,
   Telefono_tecnico int  NOT NULL,
   CONSTRAINT Empleado_pk PRIMARY KEY  (Id_Tecnico)
);

-- Table: Respuesta_Servicios
CREATE TABLE Respuesta_Servicios (
   Id_Respuesta int  NOT NULL,
   Descripcion_respuesta varchar(100)  NOT NULL,
   CONSTRAINT Respuesta_Servicios_pk PRIMARY KEY  (Id_Respuesta)
);

-- Table: Servicios
CREATE TABLE Servicios (
   Id_Servicio int  NOT NULL,
   Descripción_servicio varchar(50)  NOT NULL,
   Costo_servicio decimal(8,0)  NOT NULL,
   CONSTRAINT Servicios_pk PRIMARY KEY  (Id_Servicio)
);

-- Table: Usuarios
CREATE TABLE Usuarios (
   Id_Usuario int  NOT NULL,
   Nombre_usuario varchar(30)  NOT NULL,
   Apellido_usuario varchar(30)  NOT NULL,
   Telefono_usuario int  NOT NULL,
   Email_usuario varchar(50)  NOT NULL,
   Contraseña_usuario varchar(8)  NOT NULL,
   Facturas_Id_Factura int  NOT NULL,
   Turno_Id_Reserva int  NOT NULL,
   CONSTRAINT Usuarios_pk PRIMARY KEY  (Id_Usuario)
);

-- Table: Facturas
CREATE TABLE Facturas (
   Id_Factura int  NOT NULL,
   Id_Usuario int  NOT NULL,
   Patente varchar(7)  NOT NULL,
   Id_Empleado int  NOT NULL,
   Fecha_factura int  NOT NULL,
   Id_Pago int  NOT NULL,
   Empleado_Id_Tecnico int  NOT NULL,
   TipoPago_Id_Pago int  NOT NULL,
   CONSTRAINT Facturas_pk PRIMARY KEY  (Id_Factura)
);

-- Table: Detalle_Factura
CREATE TABLE Detalle_Factura (
   Id_Factura int  NOT NULL,
   Id_Servicio int  NOT NULL,
   Importe decimal(8,0)  NOT NULL,
   Facturas_Id_Factura int  NOT NULL,
   Servicios_Id_Servicio int  NOT NULL,
   Vehiculos_Patente varchar(7)  NOT NULL,
   CONSTRAINT Detalle_Factura_pk PRIMARY KEY  (Id_Factura,Id_Servicio)
);

-- Table: Vehiculos
CREATE TABLE Vehiculos (
   Patente varchar(7)  NOT NULL,
   Id_Marca int  NOT NULL,
   Id_Modelo int  NOT NULL,
   id_Usuario int  NOT NULL,
   Modelos_Id_Modelo int  NOT NULL,
   Marcas_Id_Marca int  NOT NULL,
   Usuarios_Id_Usuario int  NOT NULL,
   CONSTRAINT Vehiculos_pk PRIMARY KEY  (Patente)
);

-- Table: Consultas_Servicios
CREATE TABLE Consultas_Servicios (
   Id_Servicio int  NOT NULL,
   Id_Consulta int  NOT NULL,
   descripcion_Consulta varchar(100)  NOT NULL,
   Servicios_Id_Servicio int  NOT NULL,
   Consulta_Respuesta_Id_Consulta int  NOT NULL,
   Consulta_Respuesta_Id_Respuesta int  NOT NULL,
   Consulta_Respuesta_Id_Servicio int  NOT NULL,
   CONSTRAINT Consultas_Servicios_pk PRIMARY KEY  (Id_Servicio,Id_Consulta)
);

-- Table: Consulta_Respuesta
CREATE TABLE Consulta_Respuesta (
   Id_Consulta int  NOT NULL,
   Id_Servicio int  NOT NULL,
   Id_Respuesta int  NOT NULL,
   Respuesta_Servicios_Id_Respuesta int  NOT NULL,
   CONSTRAINT Consulta_Respuesta_pk PRIMARY KEY  (Id_Consulta,Id_Respuesta,Id_Servicio)
);

