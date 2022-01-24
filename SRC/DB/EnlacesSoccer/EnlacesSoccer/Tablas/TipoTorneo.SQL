USE EnlacesSoccer
go
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('TipoTorneo') AND  OBJECTPROPERTY(id, 'IsUserTable') = 1)
DROP TABLE TipoTorneo
go

CREATE TABLE TipoTorneo ( 
	IdTipoTorneo tinyint NOT NULL,
	Descripcion varchar(100) NOT NULL,
	Activo bit DEFAULT 1 NOT NULL,
	FechaUltimaMod smalldatetime DEFAULT (getdate()) NOT NULL,
	NombrePcMod varchar(50) DEFAULT (host_name()) NOT NULL,
	ClaUsuarioMod tinyint DEFAULT ((0)) NOT NULL
)
go

ALTER TABLE TipoTorneo
	ADD CONSTRAINT UQ_TipoTorneo_Descripcion UNIQUE (Descripcion)
go

ALTER TABLE TipoTorneo ADD CONSTRAINT PK_TipoTorneo 
	PRIMARY KEY CLUSTERED (IdTipoTorneo)
go







