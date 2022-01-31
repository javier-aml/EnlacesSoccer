USE EnlacesSoccer
go
CREATE TABLE TorneoEquipoJugador ( 
	IdLiga int NOT NULL,
	IdTorneo int NOT NULL,
	IdEquipo int NOT NULL,
	IdJugador int NOT NULL,
	PartidosJugados tinyint NOT NULL,
	GolesAnotados tinyint NOT NULL,
	TarjetasAmarillasRecibidas tinyint NOT NULL,
	TarjetasRojasRecibidas tinyint NOT NULL,
	FechaUltimaMod smalldatetime DEFAULT (getdate()) NOT NULL,
	NombrePcMod varchar(50) DEFAULT (host_name()) NOT NULL,
	ClaUsuarioMod tinyint DEFAULT ((0)) NOT NULL,
	NumeroJugador smallint DEFAULT ((0)) NOT NULL
)
go

ALTER TABLE TorneoEquipoJugador
	ADD CONSTRAINT UK_TorneoJugador UNIQUE (IdTorneo, IdJugador)
go

ALTER TABLE TorneoEquipoJugador ADD CONSTRAINT PK_TorneoEquipoJugador 
	PRIMARY KEY CLUSTERED (IdLiga, IdTorneo, IdEquipo, IdJugador)
go

ALTER TABLE TorneoEquipoJugador ADD CONSTRAINT FK_TorneoEquipoJugador_Equipo 
	FOREIGN KEY (IdLiga, IdEquipo) REFERENCES Equipo (IdLiga, IdEquipo)
go

ALTER TABLE TorneoEquipoJugador ADD CONSTRAINT FK_TorneoEquipoJugador_Jugador 
	FOREIGN KEY (IdLiga, IdJugador) REFERENCES Jugador (IdLiga, IdJugador)
go

ALTER TABLE TorneoEquipoJugador ADD CONSTRAINT FK_TorneoEquipoJugador_Torneo 
	FOREIGN KEY (IdLiga, IdTorneo) REFERENCES Torneo (IdLiga, IdTorneo)
go













