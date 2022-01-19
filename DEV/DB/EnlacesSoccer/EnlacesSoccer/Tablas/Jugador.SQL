IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('Jugador') AND  OBJECTPROPERTY(id, 'IsUserTable') = 1)
DROP TABLE Jugador
GO

CREATE TABLE Jugador ( 
	IdJugador smallint NOT NULL,
	Nombre varchar(100) NOT NULL,
	NumeroNomina int NULL,
	Activo bit DEFAULT 1 NOT NULL,
	FechaUltimaMod smalldatetime DEFAULT getdate() NOT NULL,
	NombrePcMod varchar(50) DEFAULT host_name() NOT NULL,
	ClaUsuarioMod tinyint DEFAULT 0 NOT NULL,
	Fotografia image NULL
)
GO

ALTER TABLE Jugador
	ADD CONSTRAINT UQ_Jugador_Nombre UNIQUE (Nombre)
GO

ALTER TABLE Jugador ADD CONSTRAINT PK_Jugador 
	PRIMARY KEY CLUSTERED (IdJugador)
GO









