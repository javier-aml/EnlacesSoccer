
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('Jornada') AND  OBJECTPROPERTY(id, 'IsUserTable') = 1)
DROP TABLE Jornada
GO

CREATE TABLE Jornada ( 
	IdTorneo tinyint NOT NULL,
	IdJornada tinyint NOT NULL,
	PorJugar bit DEFAULT 1 NOT NULL,
	TieneJuegoPendiente bit DEFAULT 0 NOT NULL,
	FechaUltimaMod smalldatetime DEFAULT getdate() NOT NULL,
	NombrePcMod varchar(50) DEFAULT host_name() NOT NULL,
	ClaUsuarioMod tinyint DEFAULT 0 NOT NULL
)
GO

ALTER TABLE Jornada ADD CONSTRAINT PK_Jornada 
	PRIMARY KEY CLUSTERED (IdTorneo, IdJornada)
GO

ALTER TABLE Jornada ADD CONSTRAINT FK_Jornada_Torneo 
	FOREIGN KEY (IdTorneo) REFERENCES Torneo (IdTorneo)
GO








