USE EnlacesSoccer
go
--IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('Pago') AND  OBJECTPROPERTY(id, 'IsUserTable') = 1)
--DROP TABLE Pago
--go

CREATE TABLE Pago ( 
	IdLiga int NOT NULL,
	PeriodoPago smallint NOT NULL,
	FechaPago datetime NOT NULL,
	Importe numeric(10,2) DEFAULT 0 NOT NULL,
	Iva numeric(10,2) DEFAULT 0 NOT NULL,
	Total numeric(10,2) DEFAULT 0 NOT NULL,
	Descuento numeric(10,2) DEFAULT 0 NOT NULL,
	IdEstatusPago tinyint NOT NULL,
	FechaUltimaMod smalldatetime DEFAULT getdate() NOT NULL,
	NombrePcMod varchar(50) DEFAULT host_name() NOT NULL,
	ClaUsuarioMod tinyint DEFAULT 0 NOT NULL
)
go

ALTER TABLE Pago ADD CONSTRAINT PK_Pago 
	PRIMARY KEY CLUSTERED (IdLiga, PeriodoPago)
go

ALTER TABLE Pago ADD CONSTRAINT FK_Pago_EstatusPago 
	FOREIGN KEY (IdEstatusPago) REFERENCES EstatusPago (IdEstatusPago)
go

ALTER TABLE Pago ADD CONSTRAINT FK_Pago_Liga 
	FOREIGN KEY (IdLiga) REFERENCES Liga (IdLiga)
go












