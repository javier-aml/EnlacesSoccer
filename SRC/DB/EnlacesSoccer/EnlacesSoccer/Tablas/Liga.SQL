USE EnlacesSoccer
go
--IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('Liga') AND  OBJECTPROPERTY(id, 'IsUserTable') = 1)
--DROP TABLE Liga
--go

CREATE TABLE Liga ( 
	IdLiga int NOT NULL,
	Nombre varchar(100) NOT NULL,
	Representante varchar(100) NOT NULL,
	Telefono smallint NOT NULL,
	Correo varchar(50) NOT NULL,
	IdPais tinyint NOT NULL,
	IdEstado smallint NOT NULL,
	IdMunicipio smallint NOT NULL,
	Activo bit DEFAULT 0 NOT NULL,
	FechaUltimaMod smalldatetime DEFAULT getdate() NOT NULL,
	NombrePcMod varchar(50) DEFAULT host_name() NOT NULL,
	ClaUsuarioMod tinyint DEFAULT 0 NOT NULL
)
go

ALTER TABLE Liga
	ADD CONSTRAINT UQ_Liga_Nombre UNIQUE (Nombre)
go

ALTER TABLE Liga ADD CONSTRAINT PK_Liga 
	PRIMARY KEY CLUSTERED (IdLiga)
go

ALTER TABLE Liga ADD CONSTRAINT FK_Liga_Municipio 
	FOREIGN KEY (IdPais, IdEstado, IdMunicipio) REFERENCES Municipio (IdPais, IdEstado, IdMunicipio)
go













