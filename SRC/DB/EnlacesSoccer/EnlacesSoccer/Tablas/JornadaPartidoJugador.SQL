USE EnlacesSoccer
go
CREATE TABLE JornadaPartidoJugador ( 
	IdLiga int NOT NULL,
	IdTorneo tinyint NOT NULL,
	IdJornada tinyint NOT NULL,
	IdEquipo tinyint NOT NULL,
	IdJugador smallint NOT NULL,
	Jugo bit DEFAULT ((1)) NOT NULL,
	GolesJugador tinyint NOT NULL,
	RecibioTarjetaAmarilla bit DEFAULT ((0)) NOT NULL,
	RecibioTarjetaRoja bit DEFAULT ((0)) NOT NULL,
	FechaUltimaMod smalldatetime DEFAULT (getdate()) NOT NULL,
	NombrePcMod varchar(50) DEFAULT (host_name()) NOT NULL,
	ClaUsuarioMod tinyint DEFAULT ((0)) NOT NULL
)
go

ALTER TABLE JornadaPartidoJugador ADD CONSTRAINT PK_JornadaPartidoJugador 
	PRIMARY KEY CLUSTERED (IdTorneo, IdJornada, IdEquipo, IdJugador, IdLiga)
go

ALTER TABLE JornadaPartidoJugador ADD CONSTRAINT FK_JornadaPartidoJugador_Equipo 
	FOREIGN KEY (IdLiga, IdEquipo) REFERENCES Equipo (IdLiga, IdEquipo)
go

ALTER TABLE JornadaPartidoJugador ADD CONSTRAINT FK_JornadaPartidoJugador_Jugador 
	FOREIGN KEY (IdLiga, IdJugador) REFERENCES Jugador (IdLiga, IdJugador)
go













