INSERT INTO dbo.TipoSancion (
	IdTipoSancion,
	Clave,
	Descripcion,
	JuegosSuspension,
	Activa,
	FechaUltimaMod,
	NombrePcMod,
	ClaUsuarioMod
) 
SELECT  IdTipoSancion    = 1,
		Clave			 = 'DTA',
		Descripcion		 = 'Doble Tarjeta Amarilla',
		JuegosSuspension = 1,
		Activa			 = 1,
		FechaUltimaMod   = GETDATE(),
		NombrePcMod		 = 'Carga Inicial',
		ClaUsuarioMod	 = 0
UNION
SELECT  IdTipoSancion    = 2,
		Clave			 = 'EPD',
		Descripcion		 = 'Entrada por detras',
		JuegosSuspension = 2,
		Activa			 = 1,
		FechaUltimaMod   = GETDATE(),
		NombrePcMod		 = 'Carga Inicial',
		ClaUsuarioMod	 = 0	
UNION
SELECT  IdTipoSancion    = 3,
		Clave			 = 'AVC',
		Descripcion		 = 'Agresión Verbal a un contrario',
		JuegosSuspension = 2,
		Activa			 = 1,
		FechaUltimaMod   = GETDATE(),
		NombrePcMod		 = 'Carga Inicial',
		ClaUsuarioMod	 = 0
UNION
SELECT  IdTipoSancion    = 4,
		Clave			 = 'AVA',
		Descripcion		 = 'Agresión Verbal al arbitro',
		JuegosSuspension = 2,
		Activa			 = 1,
		FechaUltimaMod   = GETDATE(),
		NombrePcMod		 = 'Carga Inicial',
		ClaUsuarioMod	 = 0						
UNION
SELECT  IdTipoSancion    = 5,
		Clave			 = 'AFC',
		Descripcion		 = 'Agresión Fisica a un contrario',
		JuegosSuspension = 5,
		Activa			 = 1,
		FechaUltimaMod   = GETDATE(),
		NombrePcMod		 = 'Carga Inicial',
		ClaUsuarioMod	 = 0			