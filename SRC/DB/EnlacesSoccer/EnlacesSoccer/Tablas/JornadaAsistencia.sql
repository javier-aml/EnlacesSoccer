USE EnlacesSoccer
go
CREATE TABLE JornadaAsistencia ( 
	IdLiga int NOT NULL,
	IdTorneo int NOT NULL,
	IdJornada tinyint NOT NULL,
	IdEquipo int NOT NULL,
	Asistio bit DEFAULT ((0)) NOT NULL,
	FechaUltimaMod datetime DEFAULT (getdate()) NOT NULL,
	NombrePcMod varchar(50) DEFAULT (host_name()) NOT NULL,
	ClaUsuarioMod tinyint NOT NULL,
	IdJunta smallint NOT NULL
)
go

ALTER TABLE JornadaAsistencia ADD CONSTRAINT PK_JornadaAsistencia 
	PRIMARY KEY CLUSTERED (IdLiga, IdTorneo, IdJornada, IdEquipo, IdJunta)
go

ALTER TABLE JornadaAsistencia ADD CONSTRAINT FK_JornadaAsistencia_Equipo 
	FOREIGN KEY (IdEquipo) REFERENCES Equipo (IdLiga, IdEquipo)
go

ALTER TABLE JornadaAsistencia ADD CONSTRAINT FK_JornadaAsistencia_Jornada 
	FOREIGN KEY (IdTorneo, IdJornada) REFERENCES Jornada (IdLiga, IdTorneo, IdJornada)
go

ALTER TABLE JornadaAsistencia ADD CONSTRAINT FK_JornadaAsistencia_Torneo 
	FOREIGN KEY (IdTorneo) REFERENCES Torneo (IdLiga, IdTorneo)
go










