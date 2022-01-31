
--*********************************************************************



ALTER TABLE Configuracion DROP CONSTRAINT PK_Configuracion 
go

ALTER TABLE JornadaPartidoJugador DROP CONSTRAINT PK_JornadaPartidoJugador 
go

ALTER TABLE JornadaPartido DROP CONSTRAINT PK_JornadaPartido 
go

ALTER TABLE JornadaPartido DROP CONSTRAINT FK_JornadaPartido_Arbitro 
go

ALTER TABLE JornadaPartido DROP CONSTRAINT FK_JornadaPartido_Jornada 
go

ALTER TABLE LiguillaPartido DROP CONSTRAINT PK_LiguillaPartido 
go

ALTER TABLE LiguillaPartido DROP CONSTRAINT FK_LiguillaPartido_Arbitro 
go

ALTER TABLE LiguillaPartido DROP CONSTRAINT FK_LiguillaPartido_FaseLiguilla 
go

ALTER TABLE LiguillaPartido DROP CONSTRAINT FK_LiguillaPartido_Torneo 
go

ALTER TABLE Arbitro DROP CONSTRAINT PK_Arbitro 
GO


--*********************************************************************

ALTER TABLE dbo.JornadaPartidoJugador ADD IdLiga int NULL
GO
UPDATE dbo.JornadaPartidoJugador
SET IdLiga = 1
GO
ALTER TABLE dbo.JornadaPartidoJugador ALTER COLUMN IdLiga int NOT NULL
GO

SELECT * FROM dbo.JornadaPartidoJugador

--*********************************************************************

ALTER TABLE dbo.JornadaPartido ADD IdLiga int NULL
GO
UPDATE dbo.JornadaPartido
SET IdLiga = 1
GO
ALTER TABLE dbo.JornadaPartido ALTER COLUMN IdLiga int NOT NULL
GO


SELECT * FROM dbo.JornadaPartido

--*********************************************************************

ALTER TABLE JornadaAsistencia DROP CONSTRAINT PK_JornadaAsistencia 
go

ALTER TABLE JornadaAsistencia DROP CONSTRAINT FK_JornadaAsistencia_Equipo 
go

ALTER TABLE JornadaAsistencia DROP CONSTRAINT FK_JornadaAsistencia_Jornada 
go

ALTER TABLE JornadaAsistencia DROP CONSTRAINT FK_JornadaAsistencia_Torneo 
go



ALTER TABLE dbo.JornadaAsistencia ADD IdLiga int NULL
GO
UPDATE dbo.JornadaAsistencia
SET IdLiga = 1
GO
ALTER TABLE dbo.JornadaAsistencia ALTER COLUMN IdLiga int NOT NULL
GO


ALTER TABLE JornadaAsistencia ADD CONSTRAINT PK_JornadaAsistencia 
	PRIMARY KEY CLUSTERED (IdLiga, IdTorneo, IdJornada, IdEquipo, IdJunta)
go

ALTER TABLE JornadaAsistencia ADD CONSTRAINT FK_JornadaAsistencia_Equipo 
	FOREIGN KEY (IdEquipo) REFERENCES Equipo (IdLiga, IdEquipo)
go

ALTER TABLE JornadaAsistencia ADD CONSTRAINT FK_JornadaAsistencia_Jornada 
	FOREIGN KEY (IdTorneo, IdJornada) REFERENCES Jornada (IdLiga, IdTorneo, IdJornada)
go

ALTER TABLE JornadaAsistencia ADD CONSTRAINT FK_JornadaAsistencia_Torneo 
	FOREIGN KEY (IdTorneo) REFERENCES Torneo (IdLiga, IdTorneo)
go


--*********************************************************************
ALTER TABLE Jornada DROP CONSTRAINT PK_Jornada 
go

ALTER TABLE dbo.Jornada ADD IdLiga int NULL
GO
UPDATE dbo.Jornada
SET IdLiga = 1
GO
ALTER TABLE dbo.Jornada ALTER COLUMN IdLiga int NOT NULL
GO

ALTER TABLE Jornada ADD CONSTRAINT PK_Jornada 
	PRIMARY KEY CLUSTERED (IdLiga, IdTorneo, IdJornada)
go

ALTER TABLE Jornada ADD CONSTRAINT FK_Jornada_Torneo 
	FOREIGN KEY (IdTorneo) REFERENCES Torneo (IdLiga, IdTorneo)
go



--*********************************************************************
ALTER TABLE TorneoEquipoJugador DROP CONSTRAINT PK_TorneoEquipoJugador 
go

ALTER TABLE TorneoEquipoJugador DROP CONSTRAINT FK_TorneoEquipoJugador_Equipo 
go

ALTER TABLE TorneoEquipoJugador DROP CONSTRAINT FK_TorneoEquipoJugador_Jugador 
go

ALTER TABLE TorneoEquipoJugador drop CONSTRAINT FK_TorneoEquipoJugador_Torneo 
go


ALTER TABLE dbo.TorneoEquipoJugador ADD IdLiga int NULL
GO
UPDATE dbo.TorneoEquipoJugador
SET IdLiga = 1
GO
ALTER TABLE dbo.TorneoEquipoJugador ALTER COLUMN IdLiga int NOT NULL
GO

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



--*********************************************************************OK

ALTER TABLE dbo.Arbitro ADD IdLiga int NULL
GO
UPDATE dbo.Arbitro
SET IdLiga = 1
GO
ALTER TABLE dbo.Arbitro ALTER COLUMN IdLiga int NOT NULL
GO






select * from dbo.Arbitro


--*********************************************************************
ALTER TABLE dbo.Configuracion ADD IdLiga int NULL
GO
UPDATE dbo.Configuracion
SET IdLiga = 1
GO
ALTER TABLE dbo.Configuracion ALTER COLUMN IdLiga int NOT NULL
GO

SELECT * FROM dbo.Configuracion

--*********************************************************************

ALTER TABLE Configuracion ADD CONSTRAINT PK_Configuracion 
	PRIMARY KEY CLUSTERED (IdLiga, IdConfiguracion)
go


ALTER TABLE JornadaPartidoJugador ADD CONSTRAINT PK_JornadaPartidoJugador 
	PRIMARY KEY CLUSTERED (IdTorneo, IdJornada, IdEquipo, IdJugador, IdLiga)
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

ALTER TABLE Arbitro ADD CONSTRAINT PK_Arbitro 
PRIMARY KEY (IdLiga, IdArbitro) 

