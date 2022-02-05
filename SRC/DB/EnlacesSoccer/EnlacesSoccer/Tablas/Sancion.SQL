USE EnlacesSoccer
go
CREATE TABLE Sancion ( 
	IdLiga int NOT NULL,
	IdTorneo int NOT NULL,
	IdEquipo int NOT NULL,
	IdJornada tinyint NOT NULL,
	IdJugador int NOT NULL,
	JuegosSuspendido tinyint DEFAULT ((1)) NOT NULL,
	JuegosPendientes tinyint NOT NULL,
	Activa bit DEFAULT ((1)) NOT NULL,
	FechaUltimaMod smalldatetime DEFAULT (getdate()) NOT NULL,
	NombrePcMod varchar(50) DEFAULT (host_name()) NOT NULL,
	ClaUsuarioMod tinyint DEFAULT ((0)) NOT NULL,
	IdTipoSancion int NOT NULL
)
go

ALTER TABLE Sancion ADD CONSTRAINT PK_Sancion 
	PRIMARY KEY CLUSTERED (IdLiga, IdTorneo, IdEquipo, IdJornada, IdJugador, IdTipoSancion)
go

ALTER TABLE Sancion ADD CONSTRAINT FK_Sancion_Equipo 
	FOREIGN KEY (IdLiga, IdEquipo) REFERENCES Equipo (IdLiga, IdEquipo)
go

ALTER TABLE Sancion ADD CONSTRAINT FK_Sancion_Jornada 
	FOREIGN KEY (IdLiga, IdTorneo, IdJornada) REFERENCES Jornada (IdLiga, IdTorneo, IdJornada)
go

ALTER TABLE Sancion ADD CONSTRAINT FK_Sancion_Jugador 
	FOREIGN KEY (IdLiga, IdJugador) REFERENCES Jugador (IdLiga, IdJugador)
go

ALTER TABLE Sancion ADD CONSTRAINT FK_Sancion_TipoSancion 
	FOREIGN KEY (IdLiga, IdTipoSancion) REFERENCES TipoSancion (IdLiga, IdTipoSancion)
go













