IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('Equipo') AND  OBJECTPROPERTY(id, 'IsUserTable') = 1)
DROP TABLE Equipo
GO

CREATE TABLE Equipo ( 
	IdEquipo tinyint NOT NULL,
	Nombre varchar(100) NOT NULL,
	Activo bit DEFAULT 1 NOT NULL,
	FechaUltimaMod smalldatetime DEFAULT getdate() NOT NULL,
	NombrePcMod varchar(50) DEFAULT host_name() NOT NULL,
	ClaUsuarioMod tinyint DEFAULT 0 NOT NULL
)
GO

ALTER TABLE Equipo
	ADD CONSTRAINT UQ_Equipo_Nombre UNIQUE (Nombre)
GO

ALTER TABLE Equipo ADD CONSTRAINT PK_Equipo 
	PRIMARY KEY CLUSTERED (IdEquipo)
GO







