USE EnlacesSoccer
go
CREATE TABLE Equipo ( 
	IdLiga int NOT NULL,
	IdEquipo tinyint NOT NULL,
	Nombre varchar(100) NOT NULL,
	Activo bit DEFAULT ((1)) NOT NULL,
	FechaUltimaMod smalldatetime DEFAULT (getdate()) NOT NULL,
	NombrePcMod varchar(50) DEFAULT (host_name()) NOT NULL,
	ClaUsuarioMod tinyint DEFAULT ((0)) NOT NULL
)
go

ALTER TABLE Equipo
	ADD CONSTRAINT UQ_Equipo_Nombre UNIQUE (Nombre)
go

ALTER TABLE Equipo ADD CONSTRAINT PK_Equipo 
	PRIMARY KEY CLUSTERED (IdLiga, IdEquipo)
go








