USE EnlacesSoccer
go
CREATE TABLE Junta ( 
	IdLiga int NOT NULL,
	IdJunta smallint NOT NULL,
	IdTorneo tinyint NOT NULL,
	FechaHora smalldatetime NOT NULL,
	Acuerdos varchar(500) NULL,
	Observaciones varchar(500) NULL,
	FechaUltimaMod smalldatetime DEFAULT (getdate()) NOT NULL,
	NombrePcMod varchar(50) DEFAULT (host_name()) NOT NULL,
	ClaUsuarioMod tinyint DEFAULT ((0)) NOT NULL
)
go

ALTER TABLE Junta ADD CONSTRAINT PK_Junta 
	PRIMARY KEY CLUSTERED (IdJunta, IdTorneo, IdLiga)
go

ALTER TABLE Junta ADD CONSTRAINT FK_Junta_Liga 
	FOREIGN KEY (IdLiga) REFERENCES Liga (IdLiga)
go

ALTER TABLE Junta ADD CONSTRAINT FK_Junta_Torneo 
	FOREIGN KEY (IdLiga, IdTorneo) REFERENCES Torneo (IdLiga, IdTorneo)
go










