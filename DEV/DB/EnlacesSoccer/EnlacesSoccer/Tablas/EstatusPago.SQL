--USE EnlacesSoccer
--go
--IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('EstatusPago') AND  OBJECTPROPERTY(id, 'IsUserTable') = 1)
--DROP TABLE EstatusPago
--go

CREATE TABLE EstatusPago ( 
	IdEstatusPago tinyint NOT NULL,
	Descripcion varchar(50) NOT NULL,
	Activo bit DEFAULT 1 NOT NULL,
	FechaUltimaMod smalldatetime DEFAULT getdate() NOT NULL,
	NombrePcMod varchar(50) DEFAULT host_name() NOT NULL,
	ClaUsuarioMod tinyint DEFAULT 0 NOT NULL
)
go

ALTER TABLE EstatusPago
	ADD CONSTRAINT UQ_EstatusPago_Descripcion UNIQUE (Descripcion)
go

ALTER TABLE EstatusPago ADD CONSTRAINT PK_EstatusPago 
	PRIMARY KEY CLUSTERED (IdEstatusPago)
go







