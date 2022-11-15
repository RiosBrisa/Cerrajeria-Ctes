# PROYECTO DE ESTUDIO BASES DE DATOS I: CERRAJERIA CTES
  <p align="left">
   <img src="https://img.shields.io/badge/STATUS-EN%20DESAROLLO-green">
   </p>

El presente proyecto pretende mostrar el funcionamiento de una base de datos de una aplicación de la empresa Cerrajeria Ctes. Trataremos de explicar las relaciones existentes entre el usuario y el programa así como las diferentes funcionalidades a la cuales tiene acceso mediante un registro previo de sus datos. Esta aplicación busca agilizar la gestión de la empresa para la atenciones en sucursales, consultas de usuarios acerca de los diferentes servicios que ofrece la empresa , además de poder ver las facturas por servicios realizados.


### Dependencias 📋

<strong>Microsoft SQL Server: </strong> Sistema de gestión de base de datos relacional, desarrollado por la empresa Microsoft

<strong> SQL Express Edition: </strong> Versión "ligera" de Microsoft SQL server, para uso libre y distribuible a los desarrolladores de software.


### Instalación 🔧

1. Primero, debe descargar el siguiente archivo zip si no lo ha hecho: Cerrajeria-Ctes-main.zip
2. En segundo lugar, descomprima el archivo zip, verá cuatro archivos de script SQL:
* DefinicionModeloDatos_Cerrajeria2022
* ABM, Trigger, Vistas BD Cerrajeria
* Transaccion, Permisos
* Lote_Datos_Cerrajeria
3. Conéctese al Servidor SQL
4. En el menú Archivo, elija Abrir> Archivo ... elemento de menú para abrir un archivo de script.
5. Seleccione DefinicionModeloDatos_Cerrajeria2022
6. En la barra Estándar, seleccione Ejecutar para ejecutar el script SQL.
7. Debería ver que el siguiente resultado indica que la consulta se ejecutó correctamente: Query executed successfully
8. Siga los pasos 4 a 6 para los siguientes scripts, recuerde que se debe ejecutar en el orden que se indica a continuacion:
* ABM, Trigger, Vistas BD Cerrajeria
* Lote_Datos_Cerrajeria
* Transaccion, Permisos


## Archivos ⚙️

* DefinicionModelosDatos_Cerrajeria2022.sql: Este script contiene la sentencia necesarias para crear la base de datos con sus respectivas tablas.

CREATE DATABASE 'nombreBD' es un comando empleado para crear una nueva base de datos vacía. <br>
```
CREATE DATABASE cerrajeria;
```

USE es un comando la base de datos nombreBD como la base de datos por defecto para los comandos que se utilicen.
```
USE cerrajeria;
```

CREATE TABLE 'NombreTabla' define una tabla. Se debe proporcionar el nombre de la tabla, los nombres y atributos de sus columnas

_Sintaxis de creación de tablas_
```
CREATE TABLE Marcas (
   Id_Marca INT IDENTITY (1,1) NOT NULL,
   Descripcion_marca VARCHAR(50)  NOT NULL,
   CONSTRAINT Marcas_pk PRIMARY KEY (Id_Marca),
);
```

* ABM, Trigger, Vistas BD Cerrajeria - Este script contiene los procecimiento almacenados y funciones necesarios para realizar los ABM (Altas, Bajas, Modificaciones) en la base de datos, y triggers desarrollados para realizar auditorias


CREATE PROCEDURE es la sentencia de creación de un proceso almacenado, seguido del nombre que se le quiere asignar <br>
Una instrucción BEGIN para indicar que empieza el código SQL del procedimiento y una instruccion END para cerrar el codigo 

_Sintaxis de procedimiento almacenado para realizar altas en una tabla_
```
CREATE PROCEDURE insertarMarca
	@Descripcion_marca varchar(50)
AS
BEGIN
	INSERT INTO Marcas
	VALUES(@Descripcion_marca);
END 
GO
```

CREATE FUNCTION es la sentencia de creacion de una funcion, seguido del nombre que se le quiere asignar.

_Sintaxis de creacion de funcion_
```
CREATE FUNCTION VerificarTurnoUsuario (@Id_Usuario AS INT, @FechaReserva as DATE)
RETURNS INT
AS 
BEGIN
   DECLARE @Cant INT =0
   DECLARE @FechaActual DATE = GETDATE()
   Select @Cant = count(*) FROM turno WHERE id_Usuario =  @Id_Usuario and Fecha_Reserva = @FechaReserva
   RETURN @Cant
END;
```

_Sintaxis de funcion para invocar una funcion_
```
SELECT dbo.VerificarTurnoUsuario(1, '1/12/2022') as "Cantidad de Turnos"
```

CREATE TRIGGER crea un nuevo disparador que se activa automáticamente cada vez que ocurre un evento INSERT, UPDATE o DELETE en una tabla en el momento de disparo especificado que indica cuando deben ejecutarse, este puede ser BEFORE o AFTER

_Sintaxis de trigger_
```
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
```

CREATE VIEW define una vista para una o mas tablas 
_Sintaxis de vista_
```
CREATE VIEW lista_vehiculos
AS SELECT m.Descripcion_marca as Marca, md.Descripcion_modelo as Modelo FROM Modelos md
INNER JOIN Marcas m on md.Id_Marca = m.Id_Marca
```

* Transaccion, Permisos - Este script contiene los procediminetos para crear y asignar permisos a los usuarios, y una transaccion desarrollado sobre la entidad factura.

BEGIN TRAN es una instruccion que se utiliza para indicar el comienzo de una transacción 
BEGIN TRY y END TRY se utiliza para el manejo de errores, de manera que de ocurrir algun error, el control es transferido a la declarion CATCH
COMMIT TRAN confirma la transaccion
ROLLBACK TRAN devuleve los datos al estado que tenian al inicio de la transaccion

_Sintaxis de para una transaccion_
```
BEGIN TRAN
BEGIN TRY
	/*Registrar Cabecera de factura*/
    EXEC insertarFactura AB384KL,7,3, '6/5/2022'
	/*Registrar Detalle de Factura*/
	--Dato '0' ingresados erroneamente para generar el error
	EXEC insertarFacturaDetalle 0, 3,9500
    EXEC insertarFacturaDetalle 15, 3,15000
    /*Registrar Cabecera de factura*/
    EXEC insertarFactura BA564AV,1,2, '6/5/2022'
	/*Registrar Detalle de Factura*/
	EXEC insertarFacturaDetalle 0, 1,50000
    EXEC insertarFacturaDetalle 15, 2,25000
	/* Confirmamos la transaccion*/
	COMMIT TRAN
END TRY
BEGIN CATCH
	/* Ocurrió un error, deshacemos los cambios*/ 
ROLLBACK TRAN
PRINT 'Ha ocurrido un error!'
END CATCH
```

CREATE LOGIN crea una identidad utilizada para conectarse a una instancia de SQL Server

```
CREATE LOGIN superAdministrador WITH password='1234',
CHECK_EXPIRATION= OFF, CHECK_POLICY=OFF,
DEFAULT_DATABASE= cerrajeria;
```

CREATE USER crea un usuario para la base de datos y se le asignan permisos
```
CREATE USER superAdministrador FOR LOGIN superAdministrador
EXEC sp_addrolemember 'db_ddladmin', 'superAdministrador';
EXEC sp_addrolemember 'db_datawriter','superAdministrador';
EXEC sp_addrolemember 'db_datareader','superAdministrador';
```

GRANT se empleaa para asignar permisos del sistema
Puede asinarse al usuario directamente

_Sintaxis de asignacion de permisos_
```
GRANT CREATE TABLE TO superAdministrador
GRANT CREATE VIEW TO superAdministrador
GRANT CREATE PROCEDURE TO superAdministrador
GRANT EXECUTE TO superAdministrador
```

Puede emplearce CREATE ROLE de servidor proporcionan permisos relacionados con el servidor de bases de datos, asignar permisos y asignar el rol al usuario
```
CREATE ROLE db_rolSuperAdministrador
GRANT CREATE TABLE TO SuperAdministrador;
EXEC sp_addrolemember 'db_rolSuperAdministrador', 'SuperAdministrador'
```


* Lote_Datos_Cerrajeria - Este script contiene los datos a insertar en las tablas, los mismo son insertados en sus respectivas tablas mediante la incovacion de procesos almacenados.


El procedimiento se ejecuta colocando "EXECUTE" (o "EXEC") seguido del nombre del procedimiento y los valores para los parametros del procedimiento
_Sintaxis de invocacion de una procedimiento almacenado_
```
EXEC InsertarMarca 'TOYOTA'
```
### Analice las pruebas end-to-end 🔩

_Explica que verifican estas pruebas y por qué_

```
Da un ejemplo
```

### Y las pruebas de estilo de codificación ⌨️

_Explica que verifican estas pruebas y por qué_

```
Da un ejemplo
```

## Construido con 🛠️
* [MOCKAROO](https://www.mockaroo.com/) - Usado para generar los datos de prueba
* [VERTABELO](https://vertabelo.com/) - Usado para generar diagrama ERS
* [SQL SERVER](https://maven.apache.org/) - Usado para crear la estructura de la base de datos y realizar operaciones en la base de datos

## Wiki 📖

Puedes encontrar mas informacio sobre el proyecto en [Wiki](https://github.com/RiosBrisa/Cerrajeria-Ctes/wiki)

## Autores ✒️

* **Rios, Brisa Abigail** - *Trabajo Inicial* - (https://github.com/RiosBrisa/)
* **Sanchez Duete, Osvaldo Mauricio** - *Trabajo Inicial* - [sandutmau] (https://github.com/sandutmau)
* **Vallejos Salgado, Azul Maia** - *Trabajo Inicial* - [Maia] (https://github.com/bleucode)
* **Resoagli, Gaston** - *Trabajo Inicial* - [GastonResoagli](https://github.com/GastonResoagli)




