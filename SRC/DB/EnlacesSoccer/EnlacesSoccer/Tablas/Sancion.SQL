USE Operacion
GO
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('Sancion') AND  OBJECTPROPERTY(id, 'IsUserTable') = 1)
DROP TABLE Sancion
GO

CREATE TABLE Sancion ( 
	IdTorneo tinyint NOT NULL,
	IdEquipo tinyint NOT NULL,
	IdJornada tinyint NOT NULL,
	IdJugador smallint NOT NULL,
	IdTipoSancion tinyint NOT NULL,
	JuegosSuspendido tinyint DEFAULT 1 NOT NULL,
	JuegosPendientes tinyint NOT NULL,
	Activa bit DEFAULT 1 NOT NULL,
	FechaUltimaMod smalldatetime DEFAULT getdate() NOT NULL,
	NombrePcMod varchar(50) DEFAULT host_name() NOT NULL,
	ClaUsuarioMod tinyint DEFAULT 0 NOT NULL
)
GO

ALTER TABLE Sancion ADD CONSTRAINT PK_Sancion 
	PRIMARY KEY CLUSTERED (IdTorneo, IdEquipo, IdJornada, IdJugador, IdTipoSancion)
GO

ALTER TABLE Sancion ADD CONSTRAINT FK_Sancion_Equipo 
	FOREIGN KEY (IdEquipo) REFERENCES Equipo (IdEquipo)
GO

ALTER TABLE Sancion ADD CONSTRAINT FK_Sancion_Jornada 
	FOREIGN KEY (IdTorneo, IdJornada) REFERENCES Jornada (IdTorneo, IdJornada)
GO

ALTER TABLE Sancion ADD CONSTRAINT FK_Sancion_Jugador 
	FOREIGN KEY (IdJugador) REFERENCES Jugador (IdJugador)
GO

ALTER TABLE Sancion ADD CONSTRAINT FK_Sancion_TipoSancion 
	FOREIGN KEY (IdTipoSancion) REFERENCES TipoSancion (IdTipoSancion)
GO












