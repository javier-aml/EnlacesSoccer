USE EnlacesSoccer
go
CREATE TABLE JornadaPartido ( 
	IdLiga int NOT NULL,
	IdTorneo int NOT NULL,
	IdJornada tinyint NOT NULL,
	IdEquipo1 tinyint NOT NULL,
	IdEquipo2 tinyint NOT NULL,
	GolesEquipo1 tinyint NOT NULL,
	GolesEquipo2 tinyint NOT NULL,
	RecibioTarjetaAEquipo1 bit DEFAULT ((0)) NOT NULL,
	RecibioTarjetaAEquipo2 bit NOT NULL,
	RecibioTarjetaREquipo1 bit DEFAULT ((0)) NOT NULL,
	RecibioTarjetaREquipo2 bit DEFAULT ((0)) NOT NULL,
	Jugado bit DEFAULT ((0)) NOT NULL,
	IdArbitro tinyint NOT NULL,
	FechaHora smalldatetime NOT NULL,
	FechaUltimaMod smalldatetime DEFAULT (getdate()) NOT NULL,
	NombrePcMod varchar(50) DEFAULT (host_name()) NOT NULL,
	ClaUsuarioMod tinyint DEFAULT ((0)) NOT NULL,
	Programado bit DEFAULT ((0)) NOT NULL,
	Observaciones varchar(500) NULL,
	GanaEnPenales1 bit DEFAULT ((0)) NOT NULL,
	GanaEnPenales2 bit DEFAULT ((0)) NOT NULL
)
go

ALTER TABLE JornadaPartido ADD CONSTRAINT PK_JornadaPartido 
	PRIMARY KEY CLUSTERED (IdLiga, IdTorneo, IdJornada, IdEquipo1, IdEquipo2)
go

ALTER TABLE JornadaPartido ADD CONSTRAINT FK_JornadaPartido_Arbitro 
	FOREIGN KEY (IdLiga, IdArbitro) REFERENCES Arbitro (IdLiga, IdArbitro)
go

ALTER TABLE JornadaPartido ADD CONSTRAINT FK_JornadaPartido_Jornada 
	FOREIGN KEY (IdTorneo, IdJornada) REFERENCES Jornada (IdLiga, IdTorneo, IdJornada)
go






















