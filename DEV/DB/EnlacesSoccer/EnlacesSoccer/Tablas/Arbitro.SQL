IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('Arbitro') AND  OBJECTPROPERTY(id, 'IsUserTable') = 1)
DROP TABLE Arbitro
GO

CREATE TABLE Arbitro ( 
	IdArbitro tinyint NOT NULL,
	Nombre varchar(100) NOT NULL,
	Telefono varchar(50) NULL,
	Activo bit DEFAULT 1 NOT NULL,
	JuegosArbitrados smallint DEFAULT 0 NOT NULL,
	FechaUltimaMod smalldatetime DEFAULT getdate() NOT NULL,
	NombrePcMod varchar(50) DEFAULT host_name() NOT NULL,
	ClaUsuarioMod tinyint DEFAULT 0 NOT NULL
)
GO

ALTER TABLE Arbitro
	ADD CONSTRAINT UQ_Arbitro_Nombre UNIQUE (Nombre)
GO

ALTER TABLE Arbitro ADD CONSTRAINT PK_Arbitro 
	PRIMARY KEY CLUSTERED (IdArbitro)
GO









