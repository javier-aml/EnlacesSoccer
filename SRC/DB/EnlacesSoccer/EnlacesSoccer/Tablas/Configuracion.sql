USE EnlacesSoccer
go
CREATE TABLE Configuracion ( 
	IdLiga int NOT NULL,
	IdConfiguracion tinyint NOT NULL,
	Descripcion varchar(250) NOT NULL,
	ValorNumerico numeric(10,2) NULL,
	ValorAlfanumerico varchar(250) NULL,
	ValorFecha smalldatetime NULL,
	Activa bit DEFAULT ((1)) NOT NULL,
	FechaUltimaMod smalldatetime DEFAULT (getdate()) NOT NULL,
	NombrePcMod varchar(50) DEFAULT (host_name()) NOT NULL,
	ClaUsuarioMod tinyint NOT NULL
)
go

ALTER TABLE Configuracion ADD CONSTRAINT PK_Configuracion 
	PRIMARY KEY CLUSTERED (IdLiga, IdConfiguracion)
go











