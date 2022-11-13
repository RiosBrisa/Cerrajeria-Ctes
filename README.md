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
* DefinicionModeloDatos_Cerrajeria2022, Este archivo es para crear la base de datos con sus respectivas tablas.
* ABM, Trigger, Vistas BD Cerrajeria - Este archivo contiene los procecimiento almacenados y funciones necesarios para realizar los ABM (Altas, Bajas, Modificaciones) en la base de datos, y triggers desarrollados para realizar auditorias
* Transaccion, Permisos - Este contiene los procediminetos para crear y asignar permisos a los usuarios, y una transaccion desarrollado sobre la entidad factura.
* Lote_Datos_Cerrajeria - Este archivo contiene los datos a insertar en las tablas.
3. Conéctese al Servidor SQL
4. En el menú Archivo, elija Abrir> Archivo ... elemento de menú para abrir un archivo de script.
5. Seleccione DefinicionModeloDatos_Cerrajeria2022
6. En la barra Estándar, seleccione Ejecutar para ejecutar el script SQL.
7. Debería ver que el siguiente resultado indica que la consulta se ejecutó correctamente: Query executed successfully
8. Siga los pasos 4 a 6 para los siguientes scripts, recuerde que se debe ejecutar en el orden que se indica a continuacion:
* ABM, Trigger, Vistas BD Cerrajeria
* Lote_Datos_Cerrajeria
* Transaccion, Permisos

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




