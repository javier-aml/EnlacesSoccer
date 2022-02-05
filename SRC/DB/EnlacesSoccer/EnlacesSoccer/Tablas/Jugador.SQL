USE EnlacesSoccer
go
CREATE TABLE Jugador ( 
	IdLiga int NOT NULL,
	IdJugador smallint NOT NULL,
	Nombre varchar(100) NOT NULL,
	Activo bit DEFAULT ((1)) NOT NULL,
	FechaUltimaMod smalldatetime DEFAULT (getdate()) NOT NULL,
	NombrePcMod varchar(50) DEFAULT (host_name()) NOT NULL,
	ClaUsuarioMod tinyint DEFAULT ((0)) NOT NULL,
	NumeroNomina int NULL,
	Fotografia image NULL,
	Planta varchar(50) NULL,
	Contratista varchar(50) NULL,
	Area varchar(50) NULL,
	NumeroCamisa int NULL
)
go

ALTER TABLE Jugador ADD CONSTRAINT PK_Jugador 
	PRIMARY KEY CLUSTERED (IdLiga, IdJugador)
go














