IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('TorneoEquipo') AND  OBJECTPROPERTY(id, 'IsUserTable') = 1)
DROP TABLE TorneoEquipo
GO

CREATE TABLE TorneoEquipo ( 
	IdTorneo tinyint NOT NULL,
	IdEquipo tinyint NOT NULL,
	IdJornada tinyint NOT NULL,
	PartidosJugados tinyint NOT NULL,
	PartidosGanados tinyint NOT NULL,
	PartidosEmpatados tinyint NOT NULL,
	PartidosPerdidos tinyint NOT NULL,
	GolesFavor smallint NOT NULL,
	GolesContra smallint NOT NULL,
	DiferenciaGoles smallint NOT NULL,
	Puntos tinyint DEFAULT 0 NOT NULL,
	PuntosFairPlay tinyint DEFAULT 0 NOT NULL,
	PuntosDescontadosFairPlay tinyint DEFAULT 0 NOT NULL,
	PuntosDescontadosJunta tinyint DEFAULT 0 NOT NULL,
	FechaUltimaMod smalldatetime DEFAULT getdate() NOT NULL,
	NombrePcMod varchar(50) DEFAULT host_name() NOT NULL,
	ClaUsuarioMod tinyint DEFAULT 0 NOT NULL
)
GO

ALTER TABLE TorneoEquipo ADD CONSTRAINT PK_TorneoEquipo 
	PRIMARY KEY CLUSTERED (IdTorneo, IdEquipo, IdJornada)
GO

ALTER TABLE TorneoEquipo ADD CONSTRAINT FK_TorneoEquipo_Equipo 
	FOREIGN KEY (IdEquipo) REFERENCES Equipo (IdEquipo)
GO

ALTER TABLE TorneoEquipo ADD CONSTRAINT FK_TorneoEquipo_Jornada 
	FOREIGN KEY (IdTorneo, IdJornada) REFERENCES Jornada (IdTorneo, IdJornada)
GO

ALTER TABLE TorneoEquipo ADD CONSTRAINT FK_TorneoEquipo_Torneo 
	FOREIGN KEY (IdTorneo) REFERENCES Torneo (IdTorneo)
GO

















