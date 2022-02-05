USE EnlacesSoccer
go
CREATE TABLE TipoSancion ( 
	IdLiga int NOT NULL,
	IdTipoSancion tinyint NOT NULL,
	Clave varchar(6) NOT NULL,
	Descripcion varchar(250) NOT NULL,
	JuegosSuspension tinyint NOT NULL,
	Activa bit DEFAULT ((1)) NOT NULL,
	FechaUltimaMod datetime DEFAULT (getdate()) NOT NULL,
	NombrePcMod varchar(50) DEFAULT (host_name()) NOT NULL,
	ClaUsuarioMod tinyint DEFAULT ((0)) NOT NULL,
	CausaBaja bit DEFAULT ((0)) NOT NULL
)
go

ALTER TABLE TipoSancion
	ADD CONSTRAINT UQ_TipoSancion_Clave_Descripcion UNIQUE (Clave, Descripcion)
go

ALTER TABLE TipoSancion ADD CONSTRAINT PK_TipoSancion 
	PRIMARY KEY CLUSTERED (IdLiga, IdTipoSancion)
go











