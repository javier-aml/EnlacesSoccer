USE Operacion
GO
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('TorneoEquipoJugador') AND  OBJECTPROPERTY(id, 'IsUserTable') = 1)
DROP TABLE TorneoEquipoJugador
GO

CREATE TABLE TorneoEquipoJugador ( 
	IdTorneo tinyint NOT NULL,
	IdEquipo tinyint NOT NULL,
	IdJugador smallint NOT NULL,
	PartidosJugados tinyint NOT NULL,
	GolesAnotados tinyint NOT NULL,
	TarjetasAmarillasRecibidas tinyint NOT NULL,
	TarjetasRojasRecibidas tinyint NOT NULL,
	FechaUltimaMod smalldatetime DEFAULT getdate() NOT NULL,
	NombrePcMod varchar(50) DEFAULT host_name() NOT NULL,
	ClaUsuarioMod tinyint DEFAULT 0 NOT NULL
)
GO

ALTER TABLE TorneoEquipoJugador
	ADD CONSTRAINT UK_TorneoJugador UNIQUE (IdTorneo, IdJugador)
GO

ALTER TABLE TorneoEquipoJugador ADD CONSTRAINT PK_TorneoEquipoJugador 
	PRIMARY KEY CLUSTERED (IdTorneo, IdEquipo, IdJugador)
GO

ALTER TABLE TorneoEquipoJugador ADD CONSTRAINT FK_TorneoEquipoJugador_Equipo 
	FOREIGN KEY (IdEquipo) REFERENCES Equipo (IdEquipo)
GO

ALTER TABLE TorneoEquipoJugador ADD CONSTRAINT FK_TorneoEquipoJugador_Jugador 
	FOREIGN KEY (IdJugador) REFERENCES Jugador (IdJugador)
GO

ALTER TABLE TorneoEquipoJugador ADD CONSTRAINT FK_TorneoEquipoJugador_Torneo 
	FOREIGN KEY (IdTorneo) REFERENCES Torneo (IdTorneo)
GO











