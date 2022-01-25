
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('Usuario') AND  OBJECTPROPERTY(id, 'IsUserTable') = 1)
DROP TABLE Usuario
GO

CREATE TABLE Usuario ( 
	IdUsuario tinyint NOT NULL,
	NombreUsuario varchar(100) NOT NULL,
	Login varchar(50) NOT NULL,
	Password varchar(50) NOT NULL,
	Clave varchar(50) NOT NULL,
	Activo bit DEFAULT 1 NOT NULL,
	FechaUltimaMod smalldatetime DEFAULT getdate() NOT NULL,
	NombrePcMod varchar(50) NOT NULL,
	ClaUsuarioMod tinyint DEFAULT 0 NOT NULL
)
GO

ALTER TABLE Usuario
	ADD CONSTRAINT UQ_Usuario_Login UNIQUE (Login)
GO

ALTER TABLE Usuario
	ADD CONSTRAINT UQ_Usuario_NombreUsuario UNIQUE (NombreUsuario)
GO

ALTER TABLE Usuario ADD CONSTRAINT PK_Usuario 
	PRIMARY KEY CLUSTERED (IdUsuario)
GO










