--USE EnlacesSoccer
--go
--IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('Estado') AND  OBJECTPROPERTY(id, 'IsUserTable') = 1)
--DROP TABLE Estado
--go

CREATE TABLE Estado ( 
	IdPais tinyint NOT NULL,
	IdEstado smallint NOT NULL,
	Nombre varchar(100) NOT NULL,
	Activo bit DEFAULT ((1)) NOT NULL,
	FechaUltimaMod datetime DEFAULT (getdate()) NOT NULL,
	NombrePcMod varchar(50) DEFAULT (host_name()) NOT NULL,
	ClaUsuarioMod tinyint DEFAULT ((0)) NOT NULL
)
go

ALTER TABLE Estado
	ADD CONSTRAINT UQ_Estado_Nombre UNIQUE (IdPais, Nombre)
go

ALTER TABLE Estado ADD CONSTRAINT PK_Estado 
	PRIMARY KEY CLUSTERED (IdPais, IdEstado)
go

ALTER TABLE Estado ADD CONSTRAINT FK_Estado_Pais 
	FOREIGN KEY (IdPais) REFERENCES Pais (IdPais)
go




