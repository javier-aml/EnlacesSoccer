

CREATE TABLE TipoSancion ( 
	IdTipoSancion tinyint NOT NULL,
	Clave varchar(3) NOT NULL,
	Descripcion varchar(250) NOT NULL,
	JuegosSuspension tinyint NOT NULL,
	Activa bit DEFAULT 1 NOT NULL,
	FechaUltimaMod datetime DEFAULT getdate() NOT NULL,
	NombrePcMod varchar(50) DEFAULT host_name() NOT NULL,
	ClaUsuarioMod tinyint DEFAULT 0 NOT NULL
)
GO

ALTER TABLE TipoSancion
	ADD CONSTRAINT UQ_TipoSancion_Clave UNIQUE (Clave)
GO

ALTER TABLE TipoSancion
	ADD CONSTRAINT UQ_TipoSancion_Descripcion UNIQUE (Descripcion)
GO

ALTER TABLE TipoSancion ADD CONSTRAINT PK_TipoSancion 
	PRIMARY KEY CLUSTERED (IdTipoSancion)
GO









