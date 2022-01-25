DROP TABLE BitacoraCambiosBD
GO

CREATE TABLE BitacoraCambiosBD(IdAutonumerico INT IDENTITY, 
							   Fecha SMALLDATETIME, 
							   Usuario VARCHAR(100),
							   Evento sysname,
							   NombreSchema sysname,							   
							   ObjetoBDAfectado sysname, 
							   Query NVARCHAR(MAX),
							   EventoXML XML)






