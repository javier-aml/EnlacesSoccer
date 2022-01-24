IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('JornadaPartido') AND  OBJECTPROPERTY(id, 'IsUserTable') = 1)
DROP TABLE JornadaPartido
GO

CREATE TABLE JornadaPartido ( 
	IdTorneo tinyint NOT NULL,
	IdJornada tinyint NOT NULL,
	IdEquipo1 tinyint NOT NULL,
	IdEquipo2 tinyint NOT NULL,
	GolesEquipo1 tinyint NOT NULL,
	GolesEquipo2 tinyint NOT NULL,
	RecibioTarjetaAEquipo1 bit DEFAULT 0 NOT NULL,
	RecibioTarjetaAEquipo2 bit NOT NULL,
	RecibioTarjetaREquipo1 bit DEFAULT 0 NOT NULL,
	RecibioTarjetaREquipo2 bit DEFAULT 0 NOT NULL,
	GanaEnPenales1 bit DEFAULT 0 NOT NULL,
	GanaEnPenales2 bit DEFAULT 0 NOT NULL,
	Jugado bit DEFAULT 0 NOT NULL,
	IdArbitro tinyint NOT NULL,
	FechaHora smalldatetime NOT NULL,
	FechaUltimaMod smalldatetime DEFAULT getdate() NOT NULL,
	NombrePcMod varchar(50) DEFAULT host_name() NOT NULL,
	ClaUsuarioMod tinyint DEFAULT 0 NOT NULL
)
GO

ALTER TABLE JornadaPartido ADD CONSTRAINT PK_JornadaPartido 
	PRIMARY KEY CLUSTERED (IdTorneo, IdJornada, IdEquipo1, IdEquipo2)
GO

ALTER TABLE JornadaPartido ADD CONSTRAINT FK_JornadaPartido_Arbitro 
	FOREIGN KEY (IdArbitro) REFERENCES Arbitro (IdArbitro)
GO

ALTER TABLE JornadaPartido ADD CONSTRAINT FK_JornadaPartido_Jornada 
	FOREIGN KEY (IdTorneo, IdJornada) REFERENCES Jornada (IdTorneo, IdJornada)
GO

















