
--*********************************************************************

--TMPUpdateTorneo
ALTER TABLE TMPUpdateTorneo DROP CONSTRAINT PK_TMPUpdateTorneo 
go



--JornadaPartidoJugador
ALTER TABLE JornadaPartidoJugador DROP CONSTRAINT PK_JornadaPartidoJugador 
go

ALTER TABLE JornadaPartidoJugador DROP CONSTRAINT FK_JornadaPartidoJugador_Equipo 
go

ALTER TABLE JornadaPartidoJugador DROP CONSTRAINT FK_JornadaPartidoJugador_Jugador 
go


--JornadaAsistencia
ALTER TABLE JornadaAsistencia DROP CONSTRAINT PK_JornadaAsistencia 
go

ALTER TABLE JornadaAsistencia DROP CONSTRAINT FK_JornadaAsistencia_Equipo 
go

ALTER TABLE JornadaAsistencia DROP CONSTRAINT FK_JornadaAsistencia_Jornada 
go

ALTER TABLE JornadaAsistencia DROP CONSTRAINT FK_JornadaAsistencia_Torneo 
go



--JornadaPartido
ALTER TABLE JornadaPartido DROP CONSTRAINT PK_JornadaPartido 
go

ALTER TABLE JornadaPartido DROP CONSTRAINT FK_JornadaPartido_Arbitro 
go

ALTER TABLE JornadaPartido DROP CONSTRAINT FK_JornadaPartido_Jornada 
go




--LiguillaPartido
ALTER TABLE LiguillaPartido DROP CONSTRAINT PK_LiguillaPartido 
go

ALTER TABLE LiguillaPartido DROP CONSTRAINT FK_LiguillaPartido_Arbitro 
go

ALTER TABLE LiguillaPartido DROP CONSTRAINT FK_LiguillaPartido_FaseLiguilla 
go

ALTER TABLE LiguillaPartido DROP CONSTRAINT FK_LiguillaPartido_Torneo 
go


--Junta
ALTER TABLE Junta DROP CONSTRAINT PK_Junta 
go

ALTER TABLE Junta DROP CONSTRAINT FK_Junta_Liga 
go

ALTER TABLE Junta DROP CONSTRAINT FK_Junta_Torneo 
go



--Sancion
ALTER TABLE Sancion DROP CONSTRAINT PK_Sancion 
go

ALTER TABLE Sancion DROP CONSTRAINT FK_Sancion_Equipo 
go

ALTER TABLE Sancion DROP CONSTRAINT FK_Sancion_Jornada 
go

ALTER TABLE Sancion DROP CONSTRAINT FK_Sancion_Jugador 
go

ALTER TABLE Sancion DROP CONSTRAINT FK_Sancion_TipoSancion 
go


--TorneoEquipoJugador
ALTER TABLE TorneoEquipoJugador DROP CONSTRAINT UK_TorneoJugador
go

ALTER TABLE TorneoEquipoJugador DROP CONSTRAINT PK_TorneoEquipoJugador 
go

ALTER TABLE TorneoEquipoJugador DROP CONSTRAINT FK_TorneoEquipoJugador_Equipo 
go

ALTER TABLE TorneoEquipoJugador DROP CONSTRAINT FK_TorneoEquipoJugador_Jugador 
go

ALTER TABLE TorneoEquipoJugador DROP CONSTRAINT FK_TorneoEquipoJugador_Torneo 
go


--TorneoEquipo
ALTER TABLE TorneoEquipo DROP CONSTRAINT PK_TorneoEquipo 
go

ALTER TABLE TorneoEquipo DROP CONSTRAINT FK_TorneoEquipo_Equipo 
go

ALTER TABLE TorneoEquipo DROP CONSTRAINT FK_TorneoEquipo_Jornada 
go

ALTER TABLE TorneoEquipo DROP CONSTRAINT FK_TorneoEquipo_Torneo 
go


--Torneo
ALTER TABLE Torneo DROP CONSTRAINT UQ_Torneo_Nombre
go



ALTER TABLE Torneo DROP CONSTRAINT FK_Torneo_Liga 
go

--Jornada
ALTER TABLE Jornada DROP CONSTRAINT PK_Jornada 
go

ALTER TABLE Jornada DROP CONSTRAINT FK_Jornada_Torneo 
go

ALTER TABLE Torneo DROP CONSTRAINT PK_Torneo 
go

--Configuracion
ALTER TABLE Configuracion DROP CONSTRAINT PK_Configuracion 
go



--TipoSancion
ALTER TABLE TipoSancion	DROP CONSTRAINT UQ_TipoSancion_Clave_Descripcion 
go

ALTER TABLE TipoSancion DROP CONSTRAINT PK_TipoSancion 
go



--Equipo
ALTER TABLE Equipo DROP CONSTRAINT UQ_Equipo_Nombre 
go

ALTER TABLE Equipo DROP CONSTRAINT PK_Equipo 
go

ALTER TABLE Equipo DROP CONSTRAINT FK_Equipo_Liga 
go




--Jugador
ALTER TABLE Jugador DROP CONSTRAINT PK_Jugador 
go

--Arbitro
ALTER TABLE Arbitro DROP CONSTRAINT PK_Arbitro 
GO


--**************************JornadaPartidoJugador*******************************************

ALTER TABLE dbo.JornadaPartidoJugador ADD IdLiga int NULL
GO
UPDATE dbo.JornadaPartidoJugador
SET IdLiga = 1
GO
ALTER TABLE dbo.JornadaPartidoJugador ALTER COLUMN IdLiga int NOT NULL
GO


SELECT * FROM dbo.JornadaPartidoJugador

--*****************************JornadaAsistencia****************************************



ALTER TABLE dbo.JornadaAsistencia ADD IdLiga int NULL
GO
UPDATE dbo.JornadaAsistencia
SET IdLiga = 1
GO
ALTER TABLE dbo.JornadaAsistencia ALTER COLUMN IdLiga int NOT NULL
GO

SELECT * FROM dbo.JornadaAsistencia

--****************************JornadaPartido*****************************************

ALTER TABLE dbo.JornadaPartido ADD IdLiga int NULL
GO
UPDATE dbo.JornadaPartido
SET IdLiga = 1
GO
ALTER TABLE dbo.JornadaPartido ALTER COLUMN IdLiga int NOT NULL
GO


SELECT * FROM dbo.JornadaPartido




--*****************************Jornada****************************************


ALTER TABLE dbo.Jornada ADD IdLiga int NULL
GO
UPDATE dbo.Jornada
SET IdLiga = 1
GO
ALTER TABLE dbo.Jornada ALTER COLUMN IdLiga int NOT NULL
GO


SELECT * FROM dbo.Jornada



--*****************************LiguillaPartido****************************************

ALTER TABLE LiguillaPartido ADD	IdLiga int NOT NULL
GO

UPDATE dbo.LiguillaPartido
SET IdLiga = 1
GO

ALTER TABLE LiguillaPartido ALTER COLUMN IdLiga int NOT NULL
GO

SELECT * FROM dbo.LiguillaPartido



--*******************************Junta**************************************

ALTER TABLE Junta ADD	IdLiga int  NULL
GO

UPDATE dbo.Junta
SET IdLiga = 1
GO

ALTER TABLE Junta ALTER COLUMN IdLiga int NOT NULL
GO

SELECT * FROM dbo.Junta

--********************************Sancion*************************************

ALTER TABLE Sancion ADD	IdLiga int NULL
GO

UPDATE dbo.Sancion
SET IdLiga = 1
GO

ALTER TABLE Sancion ALTER COLUMN IdLiga int NOT NULL
GO

SELECT * FROM dbo.Sancion


--*******************************TorneoEquipoJugador**************************************

ALTER TABLE dbo.TorneoEquipoJugador ADD IdLiga int NULL
GO
UPDATE dbo.TorneoEquipoJugador
SET IdLiga = 1
GO
ALTER TABLE dbo.TorneoEquipoJugador ALTER COLUMN IdLiga int NOT NULL
GO

SELECT * FROM dbo.TorneoEquipoJugador

--*******************************TorneoEquipo**************************************

ALTER TABLE dbo.TorneoEquipo ADD IdLiga int NULL
GO
UPDATE dbo.TorneoEquipo
SET IdLiga = 1
GO
ALTER TABLE dbo.TorneoEquipo ALTER COLUMN IdLiga int NOT NULL
GO

SELECT * FROM dbo.TorneoEquipo

--*******************************Torneo**************************************

ALTER TABLE dbo.Torneo ADD IdLiga int NULL
GO
UPDATE dbo.Torneo
SET IdLiga = 1
GO
ALTER TABLE dbo.Torneo ALTER COLUMN IdLiga int NOT NULL
GO



SELECT * FROM dbo.Torneo



--****************************Configuracion*****************************************
ALTER TABLE dbo.Configuracion ADD IdLiga int NULL
GO
UPDATE dbo.Configuracion
SET IdLiga = 1
GO
ALTER TABLE dbo.Configuracion ALTER COLUMN IdLiga int NOT NULL
GO

SELECT * FROM dbo.Configuracion



--*******************************TipoSancion**************************************OK

ALTER TABLE dbo.TipoSancion ADD IdLiga int NULL
GO
UPDATE dbo.TipoSancion
SET IdLiga = 1
GO
ALTER TABLE dbo.TipoSancion ALTER COLUMN IdLiga int NOT NULL
GO


select * from dbo.TipoSancion


--*******************************Equipo**************************************OK

ALTER TABLE dbo.Equipo ADD IdLiga int NULL
GO
UPDATE dbo.Equipo
SET IdLiga = 1
GO
ALTER TABLE dbo.Equipo ALTER COLUMN IdLiga int NOT NULL
GO


select * from dbo.Equipo


--*******************************Jugador**************************************OK

ALTER TABLE dbo.Jugador ADD IdLiga int NULL
GO
UPDATE dbo.Jugador
SET IdLiga = 1
GO
ALTER TABLE dbo.Jugador ALTER COLUMN IdLiga int NOT NULL
GO


select * from dbo.Jugador



--*******************************Arbitro**************************************OK

ALTER TABLE dbo.Arbitro ADD IdLiga int NULL
GO
UPDATE dbo.Arbitro
SET IdLiga = 1
GO
ALTER TABLE dbo.Arbitro ALTER COLUMN IdLiga int NOT NULL
GO


select * from dbo.Arbitro


--*******************************TMPUpdateTorneo**************************************OK

ALTER TABLE dbo.TMPUpdateTorneo ADD IdLiga int NULL
GO
UPDATE dbo.TMPUpdateTorneo
SET IdLiga = 1
GO
ALTER TABLE dbo.TMPUpdateTorneo ALTER COLUMN IdLiga int NOT NULL
GO


select * from dbo.TMPUpdateTorneo



--*********************************************************************

--Configuracion
ALTER TABLE Configuracion ADD CONSTRAINT PK_Configuracion 
	PRIMARY KEY CLUSTERED (IdLiga, IdConfiguracion)
go

--Equipo
ALTER TABLE Equipo
	ADD CONSTRAINT UQ_Equipo_Nombre UNIQUE (Nombre)
go

ALTER TABLE Equipo ADD CONSTRAINT PK_Equipo 
	PRIMARY KEY CLUSTERED (IdLiga, IdEquipo)
go

ALTER TABLE Equipo ADD CONSTRAINT FK_Equipo_Liga 
	FOREIGN KEY (IdLiga) REFERENCES Liga (IdLiga)
go


--Jugador
ALTER TABLE Jugador ADD CONSTRAINT PK_Jugador 
	PRIMARY KEY CLUSTERED (IdLiga, IdJugador)
go

--Arbitro
ALTER TABLE Arbitro ADD CONSTRAINT PK_Arbitro 
PRIMARY KEY (IdLiga, IdArbitro) 


--Jornada
ALTER TABLE Jornada ADD CONSTRAINT PK_Jornada 
	PRIMARY KEY CLUSTERED (IdLiga, IdTorneo, IdJornada)
go



--JornadaPartido
ALTER TABLE JornadaPartido ADD CONSTRAINT PK_JornadaPartido 
	PRIMARY KEY CLUSTERED (IdLiga, IdTorneo, IdJornada, IdEquipo1, IdEquipo2)
go

ALTER TABLE JornadaPartido ADD CONSTRAINT FK_JornadaPartido_Arbitro 
	FOREIGN KEY (IdLiga, IdArbitro) REFERENCES Arbitro (IdLiga, IdArbitro)
go

ALTER TABLE JornadaPartido ADD CONSTRAINT FK_JornadaPartido_Jornada 
	FOREIGN KEY (IdLiga, IdTorneo, IdJornada) REFERENCES Jornada (IdLiga, IdTorneo, IdJornada)
go




--JornadaPartidoJugador
ALTER TABLE JornadaPartidoJugador ADD CONSTRAINT PK_JornadaPartidoJugador 
	PRIMARY KEY CLUSTERED (IdTorneo, IdJornada, IdEquipo, IdJugador, IdLiga)
go

ALTER TABLE JornadaPartidoJugador ADD CONSTRAINT FK_JornadaPartidoJugador_Equipo 
	FOREIGN KEY (IdLiga, IdEquipo) REFERENCES Equipo (IdLiga, IdEquipo)
go

ALTER TABLE JornadaPartidoJugador ADD CONSTRAINT FK_JornadaPartidoJugador_Jugador 
	FOREIGN KEY (IdLiga, IdJugador) REFERENCES Jugador (IdLiga, IdJugador)
go


--select idjugador, idliga
--from JornadaPartidoJugador
--except
--select idjugador, idliga 
--from Jugador jug


--delete
--from JornadaPartidoJugador
--where idliga = 1 and idjugador = 377

--select idjugador, idliga
--from JornadaPartidoJugador
--where idliga = 1 and idjugador = 377


--JornadaAsistencia
ALTER TABLE JornadaAsistencia ADD CONSTRAINT PK_JornadaAsistencia 
	PRIMARY KEY CLUSTERED (IdLiga, IdTorneo, IdJornada, IdEquipo, IdJunta)
go

ALTER TABLE JornadaAsistencia ADD CONSTRAINT FK_JornadaAsistencia_Equipo 
	FOREIGN KEY (IdLiga, IdEquipo) REFERENCES Equipo (IdLiga, IdEquipo)
go

ALTER TABLE JornadaAsistencia ADD CONSTRAINT FK_JornadaAsistencia_Jornada 
	FOREIGN KEY (IdLiga, IdTorneo, IdJornada) REFERENCES Jornada (IdLiga, IdTorneo, IdJornada)
go




--LiguillaPartido
ALTER TABLE LiguillaPartido ADD CONSTRAINT PK_LiguillaPartido 
	PRIMARY KEY CLUSTERED (IdLiga, IdTorneo, IdFaseLiguilla, IdEquipo1, IdEquipo2)
go

ALTER TABLE LiguillaPartido ADD CONSTRAINT FK_LiguillaPartido_Arbitro 
	FOREIGN KEY (IdLiga, IdArbitro) REFERENCES Arbitro (IdLiga, IdArbitro)
go

ALTER TABLE LiguillaPartido ADD CONSTRAINT FK_LiguillaPartido_FaseLiguilla 
	FOREIGN KEY (IdFaseLiguilla) REFERENCES FaseLiguilla (IdFaseLiguilla)
go




--Junta
ALTER TABLE Junta ADD CONSTRAINT PK_Junta 
	PRIMARY KEY CLUSTERED (IdJunta, IdTorneo, IdLiga)
go

ALTER TABLE Junta ADD CONSTRAINT FK_Junta_Liga 
	FOREIGN KEY (IdLiga) REFERENCES Liga (IdLiga)
go




--Sancion
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




--Torneo
ALTER TABLE Torneo
	ADD CONSTRAINT UQ_Torneo_Nombre UNIQUE (Nombre)
go

ALTER TABLE Torneo ADD CONSTRAINT PK_Torneo 
	PRIMARY KEY CLUSTERED (IdLiga, IdTorneo)
go

ALTER TABLE Torneo ADD CONSTRAINT FK_Torneo_Liga 
	FOREIGN KEY (IdLiga) REFERENCES Liga (IdLiga)
go

ALTER TABLE Jornada ADD CONSTRAINT FK_Jornada_Torneo 
	FOREIGN KEY (IdLiga, IdTorneo) REFERENCES Torneo (IdLiga, IdTorneo)
go

ALTER TABLE JornadaAsistencia ADD CONSTRAINT FK_JornadaAsistencia_Torneo 
	FOREIGN KEY (IdLiga, IdTorneo) REFERENCES Torneo (IdLiga, IdTorneo)
go

ALTER TABLE LiguillaPartido ADD CONSTRAINT FK_LiguillaPartido_Torneo 
	FOREIGN KEY (IdLiga, IdTorneo) REFERENCES Torneo (IdLiga, IdTorneo)
go

ALTER TABLE Junta ADD CONSTRAINT FK_Junta_Torneo 
	FOREIGN KEY (IdLiga, IdTorneo) REFERENCES Torneo (IdLiga, IdTorneo)
go

--TorneoEquipo
ALTER TABLE TorneoEquipo ADD CONSTRAINT PK_TorneoEquipo 
	PRIMARY KEY CLUSTERED (IdLiga, IdTorneo, IdEquipo, IdJornada)
go

ALTER TABLE TorneoEquipo ADD CONSTRAINT FK_TorneoEquipo_Equipo 
	FOREIGN KEY (IdLiga, IdEquipo) REFERENCES Equipo (IdLiga, IdEquipo)
go

ALTER TABLE TorneoEquipo ADD CONSTRAINT FK_TorneoEquipo_Jornada 
	FOREIGN KEY (IdLiga, IdTorneo, IdJornada) REFERENCES Jornada (IdLiga, IdTorneo, IdJornada)
go

ALTER TABLE TorneoEquipo ADD CONSTRAINT FK_TorneoEquipo_Torneo 
	FOREIGN KEY (IdLiga, IdTorneo) REFERENCES Torneo (IdLiga, IdTorneo)
go



--TorneoEquipoJugador
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


--TipoSancion
ALTER TABLE TipoSancion
	ADD CONSTRAINT UQ_TipoSancion_Clave_Descripcion UNIQUE (Clave, Descripcion)
go

ALTER TABLE TipoSancion ADD CONSTRAINT PK_TipoSancion 
	PRIMARY KEY CLUSTERED (IdLiga, IdTipoSancion)
go

ALTER TABLE Sancion ADD CONSTRAINT FK_Sancion_TipoSancion 
	FOREIGN KEY (IdLiga, IdTipoSancion) REFERENCES TipoSancion (IdLiga, IdTipoSancion)
go

--ALTER TABLE TMPUpdateTorneo ADD CONSTRAINT PK_TMPUpdateTorneo 
--	PRIMARY KEY CLUSTERED (IdTorneo, renglon, IdLiga)
--go