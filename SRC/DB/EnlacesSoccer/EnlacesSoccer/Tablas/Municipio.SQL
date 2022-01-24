--USE EnlacesSoccer
--go
--IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('Municipio') AND  OBJECTPROPERTY(id, 'IsUserTable') = 1)
--DROP TABLE Municipio
--go

CREATE TABLE Municipio ( 
	IdPais tinyint NOT NULL,
	IdEstado smallint NOT NULL,
	IdMunicipio smallint NOT NULL,
	Nombre varchar(100) NOT NULL,
	Activo bit DEFAULT ((1)) NOT NULL,
	FechaUltimaMod datetime DEFAULT (getdate()) NOT NULL,
	NombrePcMod varchar(50) DEFAULT (host_name()) NOT NULL,
	ClaUsuarioMod tinyint DEFAULT ((0)) NOT NULL
)
go

ALTER TABLE Municipio
	ADD CONSTRAINT UQ_Municipio_Nombre UNIQUE (IdPais, IdEstado, Nombre)
go

ALTER TABLE Municipio ADD CONSTRAINT PK_Municipio 
	PRIMARY KEY CLUSTERED (IdPais, IdEstado, IdMunicipio)
go

ALTER TABLE Municipio ADD CONSTRAINT FK_Municipio_Estado 
	FOREIGN KEY (IdPais, IdEstado) REFERENCES Estado (IdPais, IdEstado)
go



ALTER TABLE Municipio
	DROP CONSTRAINT UQ_Municipio_Nombre 
go





