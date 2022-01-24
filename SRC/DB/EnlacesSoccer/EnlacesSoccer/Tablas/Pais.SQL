--USE EnlacesSoccer
--go
--IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('Pais') AND  OBJECTPROPERTY(id, 'IsUserTable') = 1)
--DROP TABLE Pais
--go

CREATE TABLE Pais ( 
	IdPais tinyint NOT NULL,
	Nombre varchar(100) NOT NULL,
	Activo bit DEFAULT ((1)) NOT NULL,
	FechaUltimaMod datetime DEFAULT (getdate()) NOT NULL,
	NombrePcMod varchar(50) DEFAULT (host_name()) NOT NULL,
	ClaUsuarioMod tinyint DEFAULT ((0)) NOT NULL,
	CausaBaja bit DEFAULT ((0)) NOT NULL
)
go

ALTER TABLE Pais
	ADD CONSTRAINT UQ_Pais_Nombre UNIQUE (Nombre)
go

ALTER TABLE Pais ADD CONSTRAINT PK_Pais 
	PRIMARY KEY CLUSTERED (IdPais)
go








