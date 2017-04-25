--------------- uso del XMl para llenado de tablas ---------------
DECLARE @x xml

SELECT @x=P
FROM OPENROWSET (BULK 'C:\Users\zomna\Documents\Maestría\Bases\Proyecto\Archivos Prueba\Movimientos.XML', SINGLE_BLOB) AS Movimientos(P)

-------- Tabla 1 -------- 
DECLARE @hdoc1 int

EXEC sp_xml_preparedocument @hdoc1 OUTPUT, @x

SELECT * FROM OPENXML(@hdoc1,'/Proyecto/FechaProceso', 1)
WITH (
 [Fecha]  DATETIME '@Fecha',
 [Nombre] varchar(50) 'Persona/@Nombre',
 [Nick] varchar(50) 'Persona/@Nick',
 [ValorDocID] int 'Persona/@ValorDocID',
 [FechaNacimiento] datetime 'Persona/@FechaNacimiento',
 [Telefono1] int 'Persona/@Tel1',
 [Telefono2] int 'Persona/@Tel2',
 [email] varchar(50) 'Persona/@Email',
 [Clave] varchar(50) 'Persona/@Clave',
 [FK_TipoDocID] varchar(50) 'Persona/@FK_TipoDocID'  )

EXEC sp_xml_removedocument @hdoc1
--------------------------------------------
--------------------------------------------
--------------------------------------------
DECLARE @y xml

SELECT @y=P
FROM OPENROWSET (BULK 'C:\Users\zomna\Documents\Maestría\Bases\Proyecto\Archivos Prueba\Monedas.XML', SINGLE_BLOB) AS Monedas(P)

-------- Tabla 2 -------- 
DECLARE @hdoc2 int

EXEC sp_xml_preparedocument @hdoc2 OUTPUT, @y

SELECT * FROM OPENXML(@hdoc2,'/Monedas/Moneda', 1)
WITH (
 [ID]  int 'ID',
 [Nombre] varchar(50) 'Nombre',
 [Simbolo] varchar(50) 'Simbolo')

EXEC sp_xml_removedocument @hdoc2

----------------------------------------------------
----------------------------------------------------
----------------------------------------------------

DECLARE @x1 xml

SELECT @x1=P
FROM OPENROWSET (BULK 'C:\Users\zomna\Documents\Maestría\Bases\Proyecto\Archivos Prueba\Parentescos.XML', SINGLE_BLOB) AS Parentescos(P)

-------- Tabla 3 -------- 
DECLARE @hdoc3 int

EXEC sp_xml_preparedocument @hdoc3 OUTPUT, @x1

SELECT * FROM OPENXML(@hdoc3,'/Parentescos/Parentesco', 1)
WITH (
 [ID]  int 'ID',
 [Nombre] varchar(50) 'Nombre')

EXEC sp_xml_removedocument @hdoc3

----------------------------------------------------
----------------------------------------------------
----------------------------------------------------

DECLARE @x1 xml

SELECT @x1=P
FROM OPENROWSET (BULK 'C:\Users\zomna\Documents\Maestría\Bases\Proyecto\Archivos Prueba\Parentescos.XML', SINGLE_BLOB) AS Parentescos(P)

-------- Tabla 4 -------- 
DECLARE @hdoc3 int

EXEC sp_xml_preparedocument @hdoc3 OUTPUT, @x1

SELECT * FROM OPENXML(@hdoc3,'/Parentescos/Parentesco', 1)
WITH (
 [ID]  int 'ID',
 [Nombre] varchar(50) 'Nombre')

EXEC sp_xml_removedocument @hdoc3

----------------------------------------------------
----------------------------------------------------
----------------------------------------------------


----------------------------------------------------
----------------------------------------------------
----------------------------------------------------

DECLARE @x2 xml

SELECT @x2=P
FROM OPENROWSET (BULK 'C:\Users\zomna\Documents\Maestría\Bases\Proyecto\Archivos Prueba\Periodos.XML', SINGLE_BLOB) AS Periodos(P)

-------- Tabla 5 -------- 
DECLARE @hdoc4 int

EXEC sp_xml_preparedocument @hdoc4 OUTPUT, @x2

SELECT * FROM OPENXML(@hdoc4,'/Periodos/Periodo', 1)
WITH (
 [ID]  int 'ID',
 [Nombre] varchar(50) 'Nombre',
 [TasaAnual] varchar(50) 'TasaIntAnual')

EXEC sp_xml_removedocument @hdoc4

----------------------------------------------------
----------------------------------------------------
----------------------------------------------------

----------------------------------------------------
----------------------------------------------------

DECLARE @x3 xml

SELECT @x3=P
FROM OPENROWSET (BULK 'C:\Users\zomna\Documents\Maestría\Bases\Proyecto\Archivos Prueba\TipoCuentas.XML', SINGLE_BLOB) AS TipoCuentas(P)

-------- Tabla 6 -------- 
DECLARE @hdoc5 int

EXEC sp_xml_preparedocument @hdoc5 OUTPUT, @x3

SELECT * FROM OPENXML(@hdoc5,'/TipoCuentas/TipoCuenta', 1)
WITH (
 [ID]  int 'ID',
 [Nombre] varchar(50) 'Nombre',
 [SaldoMin] money 'SaldoMin',
 [MultaNoSaldoMin] money 'MultaNoSaldoMin',
 [MultaCajeroHum] money 'MultaCajeroHum',
 [QMaxRetiroCajeroHum] money 'QMaxRetiroCajeroHum',
 [CargoPorServicio] money 'CargoPorServicio',
 [TasaInteresAnual] money 'TasaInteresAnual',
 [FK_Moneda] int 'FK_Moneda')

EXEC sp_xml_removedocument @hdoc5

----------------------------------------------------
----------------------------------------------------
----------------------------------------------------



----------------------------------------------------

----------------------------------------------------
----------------------------------------------------

DECLARE @x4 xml

SELECT @x4=P
FROM OPENROWSET (BULK 'C:\Users\zomna\Documents\Maestría\Bases\Proyecto\Archivos Prueba\TipoDocumentos.XML', SINGLE_BLOB) AS TipoDocumentos(P)

-------- Tabla 7 -------- 
DECLARE @hdoc6 int

EXEC sp_xml_preparedocument @hdoc6 OUTPUT, @x4

SELECT * FROM OPENXML(@hdoc6,'/TipoDocumentos/TipoDocumento', 1)
WITH (
 [ID]  int 'ID',
 [Nombre] varchar(50) 'Nombre')

EXEC sp_xml_removedocument @hdoc6

----------------------------------------------------
----------------------------------------------------

----------------------------------------------------
----------------------------------------------------

DECLARE @x5 xml

SELECT @x5=P
FROM OPENROWSET (BULK 'C:\Users\zomna\Documents\Maestría\Bases\Proyecto\Archivos Prueba\TipoMovimientosIn.XML', SINGLE_BLOB) AS TipoMovimientosIn(P)

-------- Tabla 8 -------- 
DECLARE @hdoc7 int

EXEC sp_xml_preparedocument @hdoc7 OUTPUT, @x5

SELECT * FROM OPENXML(@hdoc7,'/MovimientosIn/MovimientoIn', 1)
WITH (
 [ID]  int 'ID',
 [Nombre] varchar(50) 'Nombre',
 [EsCredito] int 'EsCredito')

EXEC sp_xml_removedocument @hdoc7


----------------------------------------------------
----------------------------------------------------

DECLARE @x6 xml

SELECT @x6=P
FROM OPENROWSET (BULK 'C:\Users\zomna\Documents\Maestría\Bases\Proyecto\Archivos Prueba\TipoMovimientosSO.XML', SINGLE_BLOB) AS TipoMovimientosSO(P)

-------- Tabla 9 -------- 
DECLARE @hdoc8 int

EXEC sp_xml_preparedocument @hdoc8 OUTPUT, @x6

SELECT * FROM OPENXML(@hdoc8,'/MovimientosSO/MovimientoSO', 1)
WITH (
 [ID]  int 'ID',
 [Nombre] varchar(50) 'Nombre',
 [EsCredito] int 'EsCredito')

EXEC sp_xml_removedocument @hdoc8
----------------------------------------
-------------------------------------