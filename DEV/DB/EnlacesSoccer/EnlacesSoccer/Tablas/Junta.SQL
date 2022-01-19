
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('Junta') AND  OBJECTPROPERTY(id, 'IsUserTable') = 1)
DROP TABLE Junta
GO

CREATE TABLE Junta ( 
	IdJunta smallint NOT NULL,
	FechaHora smalldatetime NOT NULL,
	Acuerdos varchar(500) NULL,
	Observaciones varchar(500) NULL,
	FechaUltimaMod smalldatetime DEFAULT getdate() NOT NULL,
	NombrePcMod varchar(50) DEFAULT host_name() NOT NULL,
	ClaUsuarioMod tinyint DEFAULT 0 NOT NULL
)
GO

ALTER TABLE Junta ADD CONSTRAINT PK_Junta 
	PRIMARY KEY CLUSTERED (IdJunta)
GO


ALTER TABLE Junta DROP CONSTRAINT PK_Junta 
GO

ALTER TABLE Junta ADD IdTorneo TINYINT NULL
GO

UPDATE Junta
SET    IdTorneo = 1
GO

ALTER TABLE Junta ALTER COLUMN IdTorneo TINYINT NOT NULL
GO

ALTER TABLE Junta ADD CONSTRAINT PK_Junta 
	PRIMARY KEY CLUSTERED (IdTorneo, IdJunta)
GO


SELECT *
FROM Torneo