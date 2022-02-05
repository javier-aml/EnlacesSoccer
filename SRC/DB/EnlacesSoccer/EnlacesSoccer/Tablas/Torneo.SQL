USE EnlacesSoccer
go
CREATE TABLE Torneo ( 
	IdLiga int NOT NULL,
	IdTorneo tinyint NOT NULL,
	Nombre varchar(100) NOT NULL,
	IdTipoTorneo tinyint NOT NULL,
	Horario varchar(50) NOT NULL,
	FechaUltimaMod smalldatetime DEFAULT (getdate()) NOT NULL,
	NombrePcMod varchar(50) DEFAULT (host_name()) NOT NULL,
	ClaUsuarioMod tinyint DEFAULT ((0)) NOT NULL,
	Activo bit DEFAULT ((0)) NOT NULL
)
go

ALTER TABLE Torneo
	ADD CONSTRAINT UQ_Torneo_Nombre UNIQUE (Nombre)
go

ALTER TABLE Torneo ADD CONSTRAINT PK_Torneo 
	PRIMARY KEY CLUSTERED (IdLiga, IdTorneo)
go

ALTER TABLE Torneo ADD CONSTRAINT FK_Torneo_Liga 
	FOREIGN KEY (IdLiga) REFERENCES Liga (IdLiga)
go










