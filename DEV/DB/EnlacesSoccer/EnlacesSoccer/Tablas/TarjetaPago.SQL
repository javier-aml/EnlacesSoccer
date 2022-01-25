USE EnlacesSoccer
go
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('TarjetaPago') AND  OBJECTPROPERTY(id, 'IsUserTable') = 1)
DROP TABLE TarjetaPago
go

CREATE TABLE TarjetaPago ( 
	IdLiga int NOT NULL,
	Tarjeta varchar(100) NOT NULL,
	Banco varchar(100) NOT NULL,
	Vencimiento smallint NOT NULL,
	ClaveSeguridad varchar(50) NOT NULL,
	Activo bit DEFAULT 0 NOT NULL,
	FechaUltimaMod smalldatetime DEFAULT getdate() NOT NULL,
	NombrePcMod varchar(50) DEFAULT host_name() NOT NULL,
	ClaUsuarioMod tinyint DEFAULT 0 NOT NULL
)
go

ALTER TABLE TarjetaPago
	ADD CONSTRAINT UQ_TarjetaPago_Tarjeta UNIQUE (Tarjeta)
go

ALTER TABLE TarjetaPago ADD CONSTRAINT PK_TarjetaPago 
	PRIMARY KEY CLUSTERED (IdLiga)
go

ALTER TABLE TarjetaPago ADD CONSTRAINT FK_TarjetaPago_Liga 
	FOREIGN KEY (IdLiga) REFERENCES Liga (IdLiga)
go










