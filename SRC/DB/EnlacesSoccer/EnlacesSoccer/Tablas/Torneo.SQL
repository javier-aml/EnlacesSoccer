IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('Torneo') AND  OBJECTPROPERTY(id, 'IsUserTable') = 1)
DROP TABLE Torneo
GO

CREATE TABLE Torneo ( 
	IdTorneo tinyint NOT NULL,
	Nombre varchar(100) NOT NULL,
	FechaUltimaMod smalldatetime DEFAULT getdate() NOT NULL,
	NombrePcMod varchar(50) DEFAULT host_name() NOT NULL,
	ClaUsuarioMod tinyint DEFAULT 0 NOT NULL
)
GO

ALTER TABLE Torneo
	ADD CONSTRAINT UQ_Torneo_Nombre UNIQUE (Nombre)
GO

ALTER TABLE Torneo ADD CONSTRAINT PK_Torneo 
	PRIMARY KEY CLUSTERED (IdTorneo)
GO






