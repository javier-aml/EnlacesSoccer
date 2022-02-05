USE EnlacesSoccer
go
CREATE TABLE TorneoEquipo ( 
	IdLiga int NOT NULL,
	IdTorneo int NOT NULL,
	IdEquipo int NOT NULL,
	IdJornada tinyint NOT NULL,
	PartidosJugados tinyint NOT NULL,
	PartidosGanados tinyint NOT NULL,
	PartidosEmpatados tinyint NOT NULL,
	PartidosPerdidos tinyint NOT NULL,
	GolesFavor smallint NOT NULL,
	GolesContra smallint NOT NULL,
	DiferenciaGoles smallint NOT NULL,
	Puntos tinyint DEFAULT ((0)) NOT NULL,
	PuntosFairPlay numeric(3,1) DEFAULT ((0)) NOT NULL,
	PuntosDescontadosFairPlay numeric(3,1) DEFAULT ((0)) NOT NULL,
	PuntosDescontadosJunta numeric(3,1) DEFAULT ((0)) NOT NULL,
	FechaUltimaMod smalldatetime DEFAULT (getdate()) NOT NULL,
	NombrePcMod varchar(50) DEFAULT (host_name()) NOT NULL,
	ClaUsuarioMod tinyint DEFAULT ((0)) NOT NULL
)
go

ALTER TABLE TorneoEquipo ADD CONSTRAINT PK_TorneoEquipo 
	PRIMARY KEY CLUSTERED (IdLiga, IdTorneo, IdEquipo, IdJornada)
go

ALTER TABLE TorneoEquipo ADD CONSTRAINT FK_TorneoEquipo_Equipo 
	FOREIGN KEY (IdLiga, IdEquipo) REFERENCES Equipo (IdLiga, IdEquipo)
go

ALTER TABLE TorneoEquipo ADD CONSTRAINT FK_TorneoEquipo_Jornada 
	FOREIGN KEY (IdLiga, IdTorneo, IdJornada) REFERENCES Jornada (IdLiga, IdTorneo, IdJornada)
go

ALTER TABLE TorneoEquipo ADD CONSTRAINT FK_TorneoEquipo_Torneo 
	FOREIGN KEY (IdLiga, IdTorneo) REFERENCES Torneo (IdLiga, IdTorneo)
go



















