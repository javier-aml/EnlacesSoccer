
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('JornadaPartidoJugador') AND  OBJECTPROPERTY(id, 'IsUserTable') = 1)
DROP TABLE JornadaPartidoJugador
GO

CREATE TABLE JornadaPartidoJugador ( 
	IdTorneo tinyint NOT NULL,
	IdJornada tinyint NOT NULL,
	IdEquipo tinyint NOT NULL,
	IdJugador smallint NOT NULL,
	GolesJugador tinyint NOT NULL,
	RecibioTarjetaAmarilla bit DEFAULT 0 NOT NULL,
	RecibioTarjetaRoja bit DEFAULT 0 NOT NULL,
	FechaUltimaMod smalldatetime DEFAULT getdate() NOT NULL,
	NombrePcMod varchar(50) DEFAULT host_name() NOT NULL,
	ClaUsuarioMod tinyint DEFAULT 0 NOT NULL
)
GO

ALTER TABLE JornadaPartidoJugador ADD CONSTRAINT PK_JornadaPartidoJugador 
	PRIMARY KEY CLUSTERED (IdTorneo, IdJornada, IdEquipo, IdJugador)
GO











