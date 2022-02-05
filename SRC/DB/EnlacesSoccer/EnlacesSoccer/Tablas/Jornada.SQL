USE EnlacesSoccer
go
CREATE TABLE Jornada ( 
	IdLiga int NOT NULL,
	IdTorneo int NOT NULL,
	IdJornada tinyint NOT NULL,
	PorJugar bit DEFAULT ((1)) NOT NULL,
	TieneJuegoPendiente bit DEFAULT ((0)) NOT NULL,
	FechaUltimaMod smalldatetime DEFAULT (getdate()) NOT NULL,
	NombrePcMod varchar(50) DEFAULT (host_name()) NOT NULL,
	ClaUsuarioMod tinyint DEFAULT ((0)) NOT NULL
)
go

ALTER TABLE Jornada ADD CONSTRAINT PK_Jornada 
	PRIMARY KEY CLUSTERED (IdLiga, IdTorneo, IdJornada)
go

ALTER TABLE Jornada ADD CONSTRAINT FK_Jornada_Torneo 
	FOREIGN KEY (IdLiga, IdTorneo) REFERENCES Torneo (IdLiga, IdTorneo)
go









