USE DATABASE EnlacesSoccer
go
CREATE TABLE Arbitro ( 
	IdLiga int NOT NULL,
	IdArbitro tinyint NOT NULL,
	Nombre varchar NOT NULL,
	Telefono varchar NULL,
	Activo bit DEFAULT ((1)) NOT NULL,
	JuegosArbitrados smallint DEFAULT ((0)) NOT NULL,
	FechaUltimaMod smalldatetime DEFAULT (getdate()) NOT NULL,
	NombrePcMod varchar DEFAULT (host_name()) NOT NULL,
	ClaUsuarioMod tinyint DEFAULT ((0)) NOT NULL
) 

go

ALTER TABLE Arbitro
	ADD CONSTRAINT UQ_Arbitro_Nombre UNIQUE (Nombre)
go
ALTER TABLE Arbitro ADD CONSTRAINT PK_Arbitro 
PRIMARY KEY (IdLiga, IdArbitro) 

go











