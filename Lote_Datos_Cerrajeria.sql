USE cerrajeria;
GO
--MARCAS--
EXEC InsertarMarca 'TOYOTA'
EXEC InsertarMarca 'AUDI'
EXEC InsertarMarca 'HYUNDAI'
EXEC InsertarMarca 'HONDA'
EXEC InsertarMarca 'FORD'
EXEC InsertarMarca 'FIAT'
EXEC InsertarMarca 'CHEVROLET'
EXEC InsertarMarca 'BMW'
EXEC InsertarMarca 'JAGUAR'
EXEC InsertarMarca 'LEXUS'
EXEC InsertarMarca 'MERCEDES'
EXEC InsertarMarca 'NISSAN'
EXEC InsertarMarca 'RENAULT'
EXEC InsertarMarca 'SUBARU'
EXEC InsertarMarca 'VOLKSWAGEN'

--SELECT * FROM MARCAS

--MODELOS--
EXEC InsertarModelo 1 ,1,'YARIS'
EXEC InsertarModelo 1 ,2, 'AURIS'
EXEC InsertarModelo 1 ,3, 'SUPRA'
EXEC InsertarModelo 1 ,4, 'AVENSIS'
EXEC InsertarModelo 2 ,1, 'A1'
EXEC InsertarModelo 2 ,2, 'A4'
EXEC InsertarModelo 2 ,3, 'A3'
EXEC InsertarModelo 2 ,4, 'Q1'
EXEC InsertarModelo 2 ,5, 'Q2'
EXEC InsertarModelo 2 ,5, 'Q3'
EXEC InsertarModelo 3 ,1, 'BAYON'
EXEC InsertarModelo 3 ,2, 'GENESIS'
EXEC InsertarModelo 3 ,3, 'IX20'
EXEC InsertarModelo 3 ,4, 'KONA'
EXEC InsertarModelo 4 ,1, 'ACCORD'
EXEC InsertarModelo 4 ,2, 'CIVIC'
EXEC InsertarModelo 4 ,3, 'NSX'
EXEC InsertarModelo 4 ,4, 'JAZZ'
EXEC InsertarModelo 5 ,1, 'B-MAX'
EXEC InsertarModelo 5 ,2, 'EDGE'
EXEC InsertarModelo 5 ,3, 'EVOS'
EXEC InsertarModelo 5 ,4, 'EXPLORER'
EXEC InsertarModelo 5 ,5, 'GT'
EXEC InsertarModelo 6 ,1, '500'
EXEC InsertarModelo 6 ,2, '500L'
EXEC InsertarModelo 6 ,3, '500X'
EXEC InsertarModelo 6 ,4, 'DOBLO'
EXEC InsertarModelo 7 ,1, 'CAMARO'
EXEC InsertarModelo 7 ,2, 'CRUZE'
EXEC InsertarModelo 7 ,3, 'TRAX'
EXEC InsertarModelo 7 ,4,'VOLT'
EXEC InsertarModelo 7 ,5, 'CORVETTE'
EXEC InsertarModelo 8 ,1, 'I3'
EXEC InsertarModelo 8 ,2, 'I4'
EXEC InsertarModelo 8 ,3, 'I7'
EXEC InsertarModelo 8 ,4, 'SERIE 3'
EXEC InsertarModelo 8 ,5, 'SERIE 4'
EXEC InsertarModelo 8 ,6, 'SERIE 5'
EXEC InsertarModelo 9 ,1, 'E-PACE'
EXEC InsertarModelo 9 ,2, 'F-PACE'
EXEC InsertarModelo 9 ,3, 'XF'
EXEC InsertarModelo 9 ,4, 'XE'
EXEC InsertarModelo 10,1, 'CT'
EXEC InsertarModelo 10,2, 'GS'
EXEC InsertarModelo 10,3, 'LS'
EXEC InsertarModelo 10,4, 'RC'
EXEC InsertarModelo 11,1, 'AMG GT'
EXEC InsertarModelo 11,2, 'CLASE B'
EXEC InsertarModelo 11,3, 'CLASE C'
EXEC InsertarModelo 11,4, 'CITAN'
EXEC InsertarModelo 12,1, 'KICKS'
EXEC InsertarModelo 12,2,'MICRA'
EXEC InsertarModelo 12,3,'NOTE'
EXEC InsertarModelo 12,4,'370Z'
EXEC InsertarModelo 13,1, 'CLI'
EXEC InsertarModelo 13,2,'KOLEOS'
EXEC InsertarModelo 13,3,'LAGUNA'
EXEC InsertarModelo 13,4,'KWID'
EXEC InsertarModelo 14,1, 'BRZ'
EXEC InsertarModelo 14,2, 'IMPREZA'
EXEC InsertarModelo 14,3, 'SOLTERRA'
EXEC InsertarModelo 14,4, 'TREZIA'
EXEC InsertarModelo 15,1, 'AMAROK'
EXEC InsertarModelo 15,2, 'ARTEON'
EXEC InsertarModelo 15,3, 'EOS'
--SELECT * FROM Modelos

--USUARIOS--
EXEC InsertarUsuario 'MYLO' ,'VOLETT' ,3794256072 ,'MVOLETT0@G.CO' ,'65AJMEQT' ,'1/1/1999'
EXEC InsertarUsuario 'ALVY' ,'GLOUCESTER' ,3794222092 ,'AGLOUCESTER1@GMPG.ORG' ,'B1LDIQVA' ,'12/9/2000'
EXEC InsertarUsuario 'TIMMY' ,'ELSMORE' , 3794258404 ,'TELSMORE2@ABOUT.COM' ,'AOS1RDUC' ,'27/12/1987'
EXEC InsertarUsuario 'PEPILLO' ,'SCUD' , 3794256306 ,'PSCUD3@MEETUP.COM' ,'NQDOFSDQ' ,'9/9/1994'
EXEC InsertarUsuario 'CORELLA' ,'HEARON' , 3794253357 ,'CHEARON4@PHPBB.COM' ,'KJVZIS5H' ,'16/1/1999'
EXEC InsertarUsuario 'HILLARD' ,'PIPER' , 3794216583 ,'HPIPER5@DROPBOX.COM' ,'TYSGBEFG' ,'2/6/1986'
EXEC InsertarUsuario 'MELISSE' ,'OLDACRE' , 3794254727 ,'MOLDACRE6@CHICAGOTRIBUNE.COM' ,'PRY6DHOW' ,'4/11/2003'
EXEC InsertarUsuario 'FRASCO' ,'BRAGA' , 3794076233 ,'FBRAGA7@GOOGLE.RU' ,'SKSPGN7Z' ,'11/8/1997'
EXEC InsertarUsuario 'CORBIN' ,'MCBLAIN' , 3794114529 ,'CMCBLAIN8@AMAZON.CO.UK' ,'WGI5BMS3' ,'9/7/1985'
EXEC InsertarUsuario 'WILTON' ,'AGUANNO' , 3794689725 ,'WDAGUANNO9@XREA.COM' ,'6PEIH893' ,'20/2/1995'
EXEC InsertarUsuario 'LIN' ,'FEIGHRY' , 3794218279,'LFEIGHRYA@SO-NET.NE.JP' ,'5XUKZJEQ' ,'14/6/1991'
EXEC InsertarUsuario 'ARDINE' ,'LORKING' , 3794669246 ,'ALORKINGB@ABOUTADS.INFO' ,'IO1FLOZD','18/2/2001'
EXEC InsertarUsuario 'ARLIENE' ,'AYLMORE' , 379407123 ,'AAYLMOREC@BANDCAMP.COM' ,'KEFEVSA0L' ,'8/2/1990'
EXEC InsertarUsuario 'HENDRIK' ,'HENKER' , 3794184987 ,'HHENKERD@123-REG.CO.UK' ,'ME4GKVXJ' ,'21/12/1986'
EXEC InsertarUsuario 'BIRD' ,'TEANBY' , 379444724,'BTEANBYE@GEOCITIES.COM' ,'C33CPMEV' ,'15/4/1989'
EXEC InsertarUsuario 'RICKERT' ,'THEUNISSEN' , 3794737629 ,'RTHEUNISSENF@CREATIVECOMMONS.ORG' ,'VOIRP2W4' ,'3/3/1996'
EXEC InsertarUsuario 'KEARY' ,'GALLACCIO' , 3794631521,'KGALLACCIOG@ORACLE.COM' ,'J8DER2GF' ,'2/12/1997'
EXEC InsertarUsuario 'CLAIBORN' ,'MIRANDO' , 3794873969,'CMIRANDOH@NSW.GOV.AU' ,'LALXBFFN' ,'28/1/1989'
EXEC InsertarUsuario 'CASSI' ,'KELNER' , 3794822072,'CKELNERI@FACEBOOK.COM' ,'NYVHKBV2' ,'15/6/1998'
EXEC InsertarUsuario 'JUDYE' ,'BONWELL' , 3794225434 ,'JBONWELLJ@NETSCAPE.COM' ,'HRAKA1AA' ,'7/3/1995'
EXEC InsertarUsuario 'FIDELITY' ,'BARROWCLIFF' , 3794262920 ,'FBARROWCLIFFK@SMH.COM.AU' ,'17M0STQR' ,'23/1/1994'
EXEC InsertarUsuario 'KRISTOS' ,'OVERNELL' , 3794315491 ,'KOVERNELLL@LIVE.COM' ,'RXGBTRK3' ,'6/9/1990'
EXEC InsertarUsuario 'MIRANDA' ,'FENTEM' , 3794541452 ,'MFENTEMM@YELLOWPAGES.COM' ,'UEDSLSA5' ,'24/9/1998'
EXEC InsertarUsuario 'FREELAND' ,'GALLE' , 379473550 ,'FGALLEN@DELICIOUSDAYS.COM' ,'0M2LY3UZ' ,'18/8/1995'
EXEC InsertarUsuario 'SONNY' ,'UPSHALL' , 3794228429 ,'SUPSHALLO@FTC.GOV' ,'5C9LZP4Z' ,'9/6/1999'
EXEC InsertarUsuario 'LEMMIE' ,'HALDEN' , 3794060742 ,'LHALDENP@SALON.COM' ,'7BWGZNWX' ,'18/10/2002'
EXEC InsertarUsuario 'EREK' ,'CHISWELL' , 3794894513 ,'ECHISWELLQ@EXBLOG.JP' ,'5BZRJLK1' ,'15/11/2000'
EXEC InsertarUsuario 'KOREN' ,'DESBROW' , 3794192195 ,'KDESBROWR@FOXNEWS.COM' ,'XCZWWHA6' ,'16/11/1994'
EXEC InsertarUsuario 'EDEN' ,'DURAK' , 3794532015 ,'EDURAKS@EUROPA.EU' ,'A2AQXJUC' ,'13/8/1998'
EXEC InsertarUsuario 'CULLEN' ,'QUARLES' , 3794234661 ,'CQUARLEST@YCOMBINATOR.COM' ,'CIYQ7S3M' ,'14/7/1985'
EXEC InsertarUsuario 'MARIA', 'LOPEZ', 3794265848, 'MARI@GMAIL.COM', '125CNJ83', '14/7/1999'
--SELECT * FROM Usuarios

--Verificar restriccion de edad en usuario
--EXEC InsertarUsuario 'LUIS', 'THOMSOM', 3794254410, 'LUI@GMAIL.COM', '1F5D788W', '14/7/2010'

EXEC insertarVehiculo AB123CD,1,1,1
EXEC insertarVehiculo AA682FJ,2,1,2
EXEC insertarVehiculo AC211FD,3,1,3
EXEC insertarVehiculo AL485CD,4,1,1
EXEC insertarVehiculo AA323CD,5,1,5
EXEC insertarVehiculo AB123CD,6,1,6
EXEC insertarVehiculo AF642FJ,7,1,7
EXEC insertarVehiculo AC200FD,8,1,8
EXEC insertarVehiculo AL455CB,9,1,9
EXEC insertarVehiculo FJ326CA,10,1,10
EXEC insertarVehiculo BA123CD,11,1,11
EXEC insertarVehiculo AD682LK,12,1,12
EXEC insertarVehiculo AD457GH,13,1,13
EXEC insertarVehiculo CA384ND,14,1,14
EXEC insertarVehiculo AA242ND,15,1,15
EXEC insertarVehiculo AB574JF,1,2,16
EXEC insertarVehiculo CA658CK,2,2,17
EXEC insertarVehiculo AA001AS,3,2,18
EXEC insertarVehiculo CB658AL,4,2,19
EXEC insertarVehiculo AA746DF,5,2,20
EXEC insertarVehiculo AB012ND,6,2,21
EXEC insertarVehiculo NA654AS,7,2,22
EXEC insertarVehiculo DH453DF,8,2,23
EXEC insertarVehiculo SJ582SK,9,2,24
EXEC insertarVehiculo BJ289DK,10,2,25
EXEC insertarVehiculo AA241ND,11,2,26
EXEC insertarVehiculo AA354ND,12,2,27
EXEC insertarVehiculo AF634FB,13,2,28
EXEC insertarVehiculo AI145NB,14,2,29
EXEC insertarVehiculo AP225OP,15,2,30
EXEC insertarVehiculo AO665DK,1,3,31

--SELECT * FROM Vehiculos



--HORARIOS ATENCION--
EXEC insertarHorarioAtencion '8:30'
EXEC insertarHorarioAtencion '8:45'
EXEC insertarHorarioAtencion '9:00'
EXEC insertarHorarioAtencion '9:15'
EXEC insertarHorarioAtencion '9:30'
EXEC insertarHorarioAtencion '9:45'
EXEC insertarHorarioAtencion '10:00'
EXEC insertarHorarioAtencion '10:15'
EXEC insertarHorarioAtencion '10:30'
EXEC insertarHorarioAtencion '10:45'
EXEC insertarHorarioAtencion '11:00'
EXEC insertarHorarioAtencion '11:15'
EXEC insertarHorarioAtencion '11:30'
EXEC insertarHorarioAtencion '11:45'
EXEC insertarHorarioAtencion '12:00'
EXEC insertarHorarioAtencion '12:15'
EXEC insertarHorarioAtencion '12:30'
EXEC insertarHorarioAtencion '12:45'
EXEC insertarHorarioAtencion '13:00'
--SELECT * FROM Horarios_Atencion

--TIPO PAGO--
EXEC insertartipoPago 'DEBITO'
EXEC insertartipoPago 'EFECTIVO'
EXEC insertartipoPago 'CREDITO'
--SELECT * FROM tipoPago

--SERVICIOS--
EXEC InsertarServicio 'REPARACIÓN MAQUINA LEVANTA CRISTALES'
EXEC InsertarServicio 'REPARACIÓN CERRADURA PUERTA'
EXEC InsertarServicio 'REPARACIÓN CILINDRO DE PUERTA'
EXEC InsertarServicio 'REPARACIÓN CILINDRO CONTACTO'
EXEC InsertarServicio 'REPARACION DE BAÚL'
EXEC InsertarServicio 'APERTURA Y REPARACIÓN DE CAPO'
EXEC InsertarServicio 'APERTURA AUTO'
EXEC InsertarServicio 'COPIA DE LLAVE'
EXEC InsertarServicio 'COLOCACIÓN DE ALARMA X28 Z20'
EXEC InsertarServicio 'REPARACIÓN CIERRE CENTRALIZADO'
--SELECT * FROM Servicios;

--SUCURSAL--
EXEC InsertarSucursal 'EDIFICIO-1' ,'Lavalle 165',3794360582
EXEC InsertarSucursal 'EDIFICIO-2' ,'Roca 325',3794863693
EXEC InsertarSucursal 'EDIFICIO-3' ,'3 de Abril 621',3794102201
EXEC InsertarSucursal 'EDIFICIO-4' ,'Uruguay 789',3794221352
EXEC InsertarSucursal 'EDIFICIO-5' ,'Buenos Aires 69',3794224122
--SELECT * FROM Sucursal

--TURNO--
truncate table Turno
truncate table auditoria
select * from auditoria
EXEC insertarTurno '1/12/2022', 1,1,1
EXEC insertarTurno '1/12/2022', 2,1,2
EXEC insertarTurno '1/12/2022', 3,1,3
EXEC insertarTurno '1/12/2022', 4,1,4
EXEC insertarTurno '1/12/2022', 5,1,5
EXEC insertarTurno '1/12/2022', 1,2,6
EXEC insertarTurno '1/12/2022', 2,2,7
EXEC insertarTurno '1/12/2022', 3,2,8
EXEC insertarTurno '2/12/2022', 4,3,1
EXEC insertarTurno '2/12/2022', 5,3,2
EXEC insertarTurno '3/12/2022', 6,3,3
EXEC insertarTurno '3/12/2022', 1,4,9
EXEC insertarTurno '3/12/2022', 2,4,10
EXEC insertarTurno '3/12/2022', 3,4,11
EXEC insertarTurno '3/12/2022', 4,4,12
EXEC insertarTurno '3/12/2022', 1,5,13
EXEC insertarTurno '3/12/2022', 2,5,14
EXEC insertarTurno '3/12/2022', 3,5,15
SELECT * FROM turno

--EMPLEADO--
EXEC insertarEmpleado 'Kimmi' ,'Houseman' , 3794959090, 36438048 ,'6/6/1989' , 1 ,'F'
EXEC insertarEmpleado 'Logan' ,'Spilling' , 3794885263 ,49680861 ,'1/1/1980' ,1 ,'M'
EXEC insertarEmpleado 'Bobina' ,'Iannuzzelli' , 3794650638 ,39584746 ,'5/8/1987' ,1 ,'F'
EXEC insertarEmpleado 'Bernie' ,'Conquer' , 3794237389,42058289 ,'11/12/1992' ,1 ,'M'
EXEC insertarEmpleado 'Chalmers' ,'Errichelli' , 3794967262,36542497 ,'12/6/1999' ,2 ,'M'
EXEC insertarEmpleado 'Afton' ,'Tiery' , 3794550775 ,48585778 ,'3/2/1994' ,2 ,'F'
EXEC insertarEmpleado 'Waverley' ,'Grange' , 3794487139 ,38913978 ,'8/4/1983' ,2 ,'M'
EXEC insertarEmpleado 'Augustine' ,'Rawood' , 3794236144,45978851 ,'29/2/1992' ,2 ,'F'
EXEC insertarEmpleado 'Derron' ,'Mussilli' , 3794414026 ,38081861 ,'6/9/1989' ,3, 'M'
EXEC insertarEmpleado 'Giralda' ,'Cassey' , 3794390616 ,32258927 ,'20/12/1999' ,3, 'F'
EXEC insertarEmpleado 'Gerry' ,'Scroggie' , 3794735794 ,37653347 ,'12/6/1983' ,3, 'M'
EXEC insertarEmpleado 'Alfredo' ,'Burtwell' , 3794117027 ,39666318 ,'14/11/1999' ,3, 'M'
EXEC insertarEmpleado 'Marcela' ,'Broderick' , 3794395772 ,35907911 ,'22/7/1991' ,4, 'F'
EXEC insertarEmpleado 'Arlee' ,'Alfuso' , 3794031662 ,35892450 ,'28/10/1990' ,4, 'M'
EXEC insertarEmpleado 'Ofilio' ,'Braferton' , 3794107987 ,37713535 ,'3/10/1989' ,4, 'M'
EXEC insertarEmpleado 'Neils' ,'Sousa' , 3794436230,37928623 ,'5/6/1980' ,4, 'M'
EXEC insertarEmpleado 'Xenia' ,'Garriock' , 3794057829 ,45884871 ,'9/2/1997' ,5, 'F'
EXEC insertarEmpleado 'Johnathon' ,'Maunder' , 3794344565 ,40069220 ,'22/5/2000' ,5, 'M'
EXEC insertarEmpleado 'Albert' ,'Ibbeson' , 3794050798,42171594 ,'6/1/2001' ,5, 'M'
EXEC insertarEmpleado 'Marice' ,'Verney' , 3794549709 ,41689393 ,'24/11/1995' ,5, 'F'
SELECT * FROM Empleado;


--CONSULTAS--
EXEC insertarConsultas 1,1,'Cuánto tiempo demora la reparación?' 
EXEC insertarConsultas 2,1,'¿Precio aproximado de la reparación?'
EXEC insertarConsultas 1,2, '¿Cuánto tiempo demora la reparación'
EXEC insertarConsultas 2,2, '¿Precio aproximado de la reparación?'
EXEC insertarConsultas 1,3,'¿Precio aproximado de la reparación?'
EXEC insertarConsultas 1,4, '¿Precio aproximado de la reparación?'
EXEC insertarConsultas 2,4, '¿De no encender el coche puede algún cerrajero encenderlo?'
EXEC insertarConsultas 1,5, 'Me forzaron el baúl, cuanto sale la reparación?'
EXEC insertarConsultas 1,6, '¿No puedo abrir el capo, que hago'
EXEC insertarConsultas 2,6, '¿Cuánto tiempo puede tardar la reparación'
EXEC insertarConsultas 1,7,'¿El coche se cerró con la llave adentro?'
EXEC insertarConsultas 2,7, '¿Precio aproximado de la apertura?'
EXEC insertarConsultas 1,8, '¿Precio aproximado de una copia de llave?'
EXEC insertarConsultas 2,8, '¿Se me perdió la última llave, me pueden hacer una copia'
EXEC insertarConsultas 1,9, '. ¿Cuánto sale la instalación?'
EXEC insertarConsultas 2,9,'¿Si el vehiculo no tiene cierre centralizado se puede agregar?'
EXEC insertarConsultas 3,9, '¿Qué trae la instalación?'
EXEC insertarConsultas 1,10, '¿Una puerta queda abierta queda abierta al cerrar con el mando a distancia?'
EXEC insertarConsultas 2,10, '¿No abre o cierra el vehiculo al utilizar el mando a distancia?'
EXEC insertarConsultas 3,10, '¿Perdida del telemando?'
--SELECT * FROM Consultas

--RESPUESTAS--

EXEC insertarRespuestas 1,1, 'Todo tipo de trabajo tarda un aproximado de 2 – 3 Horas, 
excepto auto de alta gama que demanda más tiempo'
EXEC insertarRespuestas 2,1, 'Puede rondar los $9000 a $11500 el trabajo el tipo de levanta cristal si es manual o eléctrico y variando las piezas a remplazar'
EXEC insertarRespuestas 1,2, 'La reparación puede tardar 2 hora aproximadamente'
EXEC insertarRespuestas 2,2, 'El precio puede rondar si es reparación o cambio total de cerradura de puerta'
EXEC insertarRespuestas 1,3,'l precio puede rondar si es reparación o cambio total de cerradura de puerta'
EXEC insertarRespuestas 1,4, 'La reparación puede rondar los 15000 pesos sin contar el contacto si es necesario cambiar'
EXEC insertarRespuestas 2,4, 'Si. Nos tiene que pasar la dirección, el cerrajero lo pone en contacto y arranque para llevar a cerrajería para el arreglo'
EXEC insertarRespuestas 1,5, 'Un cerrajero puede hacer la apertura, sin reparación solo apertura para solucionar el momento' 
EXEC insertarRespuestas 2,5, 'La reparación todo vale conforme al daño generado, se tiene que hacer acercar a la cerrajería y se le dará un presupuesto del costo del servicio'
EXEC insertarRespuestas 1,6, 'No insistir en abrir y acercarse a la cerrajería'
EXEC insertarRespuestas 2,6, 'La apertura de capo puede demandar más tiempo, se  recomienda que deja al menos un día completo'
EXEC insertarRespuestas 1,7,'Se le solicitara la dirección, numero celular y que auto es el que posee'
EXEC insertarRespuestas 2,7,'Apertura en horario comercial puede rondar los $2200'
EXEC insertarRespuestas 1,8, 'Copia de llave con trasponer cuesta $9800'
EXEC insertarRespuestas 2,8, 'No, la perdida de la última llave se le pedirá que traiga el coche con grúa y se le avisara cuando se halla el tallado de nuevas  llaves con transponder'
EXEC insertarRespuestas 1,9,'Si es solo instalación de alarma cuesta $29500, sin cierre centralizado, el vehículo lo debe tener'
EXEC insertarRespuestas 2,9,'Si, tiene un costo adicional, seria instalación de alarma y cierra con un costo actual $39500'
EXEC insertarRespuestas 3,9,'La instalación trae 2 controles con su volumétrico de fabrica'
EXEC insertarRespuestas 1,10, 'Es problema de cierre centralizado, se hace pasar el vehículo en la cerrajería y se repara la puerta que no cierra'
EXEC insertarRespuestas 2,10, 'Puede ser problema de sistema de cierre centralizado o problema con el telemando solo se puede verificar con el vehículo en la cerrajería'
EXEC insertarRespuestas 3,10, 'Se puede generar otro telemando para el vehículo que incluye también el encendido del vehículo, es necesario saber el mólelo y marca del vehículo para ver disponible de stock'

--FACTURA--
EXEC insertarFactura AB123CD,1,1,'09/08/2021'
EXEC insertarFactura AA682FJ,1,1,'10/12/2021'
EXEC insertarFactura AC211FD,2,1,'6/6/2022'
EXEC insertarFactura AL485CD,2,1,'3/9/2022'
EXEC insertarFactura AA323CD,3,2,'3/7/2019'
EXEC insertarFactura AB123CD,3,2,'7/11/2022'
EXEC insertarFactura AF642FJ,4,2,'7/11/2020'
EXEC insertarFactura AC200FD,4,2,'8/9/1990'
EXEC insertarFactura AL455CB,5,3,'12/12/2021'
EXEC insertarFactura FJ326CA,5,3,'6/4/2022'
EXEC insertarFactura BA123CD,6,3, '2/1/2021'
EXEC insertarFactura AD682LK,6,1, '6/10/2022'
EXEC insertarFactura AD457GH,7,2, '10/10/2022'
EXEC insertarFactura CA384ND,7,3, '6/5/2021'
--SELECT * FROM Facturas

EXEC insertarFacturaDetalle 1, 1,11000
EXEC insertarFacturaDetalle 1, 2,20500
EXEC insertarFacturaDetalle 2, 3,25600
EXEC insertarFacturaDetalle 2, 4,22100
EXEC insertarFacturaDetalle 3, 1,13300
EXEC insertarFacturaDetalle 4, 2,21500
EXEC insertarFacturaDetalle 5, 10,252500
EXEC insertarFacturaDetalle 5, 4,25500
EXEC insertarFacturaDetalle 6, 5,25500
EXEC insertarFacturaDetalle 6, 3,12500
EXEC insertarFacturaDetalle 6, 6,12500
EXEC insertarFacturaDetalle 7, 2,23300
EXEC insertarFacturaDetalle 7, 1,21500
EXEC insertarFacturaDetalle 8, 2,1800
EXEC insertarFacturaDetalle 8, 5,65000
EXEC insertarFacturaDetalle 8, 1,27200
EXEC insertarFacturaDetalle 9, 2,24700
EXEC insertarFacturaDetalle 9, 1,26500
EXEC insertarFacturaDetalle 10, 2,15500
EXEC insertarFacturaDetalle 11, 5,5500
EXEC insertarFacturaDetalle 12, 4,4500
EXEC insertarFacturaDetalle 13, 9,8500
EXEC insertarFacturaDetalle 13, 8,9500
EXEC insertarFacturaDetalle 14, 5,15000
--SELECT * FROM Detalle_Factura


