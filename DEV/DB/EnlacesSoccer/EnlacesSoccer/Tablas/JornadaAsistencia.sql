USE Operacion
GO
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('JornadaAsistencia') AND  OBJECTPROPERTY(id, 'IsUserTable') = 1)
DROP TABLE JornadaAsistencia
GO

CREATE TABLE JornadaAsistencia ( 
	IdTorneo tinyint NOT NULL,
	IdJornada tinyint NOT NULL,
	IdEquipo tinyint NOT NULL,
	IdJunta smallint NOT NULL,
	Asistio bit DEFAULT 0 NOT NULL,
	FechaUltimaMod datetime DEFAULT getdate() NOT NULL,
	NombrePcMod varchar(50) DEFAULT host_name() NOT NULL,
	ClaUsuarioMod tinyint NOT NULL
)
GO

ALTER TABLE JornadaAsistencia ADD CONSTRAINT PK_JornadaAsistencia 
	PRIMARY KEY CLUSTERED (IdTorneo, IdJornada, IdEquipo, IdJunta)
GO

ALTER TABLE JornadaAsistencia ADD CONSTRAINT FK_JornadaAsistencia_Equipo 
	FOREIGN KEY (IdEquipo) REFERENCES Equipo (IdEquipo)
GO

ALTER TABLE JornadaAsistencia ADD CONSTRAINT FK_JornadaAsistencia_Jornada 
	FOREIGN KEY (IdTorneo, IdJornada) REFERENCES Jornada (IdTorneo, IdJornada)
GO

ALTER TABLE JornadaAsistencia ADD CONSTRAINT FK_JornadaAsistencia_Torneo 
	FOREIGN KEY (IdTorneo) REFERENCES Torneo (IdTorneo)
GO









