USE EnlacesSoccer
go
CREATE TABLE TMPUpdateTorneo ( 
	IdLiga int NOT NULL,
	IdTorneo tinyint NOT NULL,
	renglon int identity(1,1)  NOT NULL,
	Nombre varchar(100) NULL,
	FechaUltimaMod smalldatetime NULL,
	NombrePcMod varchar(50) NULL,
	ClaUsuarioMod tinyint NULL,
	ActivoAnterior bit NULL,
	computerName nvarchar(100) NULL,
	fechaUltimoCambio datetime NULL,
	folio int NULL
)
go

ALTER TABLE TMPUpdateTorneo ADD CONSTRAINT PK_TMPUpdateTorneo 
	PRIMARY KEY CLUSTERED (IdTorneo, renglon, IdLiga)
go












