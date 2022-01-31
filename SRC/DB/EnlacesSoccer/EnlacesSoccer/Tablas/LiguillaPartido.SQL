USE EnlacesSoccer
go
CREATE TABLE LiguillaPartido ( 
	IdLiga int NOT NULL,
	IdTorneo int NOT NULL,
	IdFaseLiguilla tinyint NOT NULL,
	IdEquipo1 tinyint NOT NULL,
	IdEquipo2 tinyint NOT NULL,
	PosicionTorneo tinyint NOT NULL,
	GolesEquipo1 tinyint NOT NULL,
	GolesEquipo2 tinyint NOT NULL,
	PenalesEquipo1 tinyint NOT NULL,
	PenalesEquipo2 tinyint NOT NULL,
	RecibioTarjetaAEquipo1 bit NOT NULL,
	RecibioTarjetaAEquipo2 bit NOT NULL,
	RecibioTarjetaREquipo1 bit NOT NULL,
	RecibioTarjetaREquipo2 bit NOT NULL,
	Jugado bit NOT NULL,
	Programado bit NOT NULL,
	IdArbitro int NOT NULL,
	FechaHora smalldatetime NOT NULL,
	Observaciones varchar(500) NOT NULL,
	FechaUltimaMod smalldatetime NOT NULL,
	NombrePcMod varchar(50) NOT NULL,
	ClaUsuarioMod tinyint NOT NULL
)
go

ALTER TABLE LiguillaPartido ADD CONSTRAINT PK_LiguillaPartido 
	PRIMARY KEY CLUSTERED (IdLiga, IdTorneo, IdFaseLiguilla, IdEquipo1, IdEquipo2)
go

ALTER TABLE LiguillaPartido ADD CONSTRAINT FK_LiguillaPartido_Arbitro 
	FOREIGN KEY (IdArbitro) REFERENCES Arbitro (IdLiga, IdArbitro)
go

ALTER TABLE LiguillaPartido ADD CONSTRAINT FK_LiguillaPartido_FaseLiguilla 
	FOREIGN KEY (IdFaseLiguilla) REFERENCES FaseLiguilla (IdFaseLiguilla)
go

ALTER TABLE LiguillaPartido ADD CONSTRAINT FK_LiguillaPartido_Torneo 
	FOREIGN KEY (IdTorneo) REFERENCES Torneo (IdLiga, IdTorneo)
go























