DELETE FROM [dbo].[Arbitro]
GO
DECLARE @sNOMBRE_PC_MOD		VARCHAR(64)	SET @sNOMBRE_PC_MOD='Carga Inicial'
DECLARE @sFECHA_ULTIMA_MOD	DATETIME	SET @sFECHA_ULTIMA_MOD='20110101'

INSERT INTO Arbitro(
			IdArbitro
           ,Nombre
           ,Telefono
           ,Activo
           ,JuegosArbitrados
           ,FechaUltimaMod
           ,NombrePcMod
           ,ClaUsuarioMod)
SELECT		 IdArbitro			= 0
			,Nombre				= 'X'
			,Telefono			= 'Dummy'
			,Activo				= 0
			,JuegosArbitrados	= 0
			,FechaUltimaMod		= @sFECHA_ULTIMA_MOD
			,NombrePcMod		= @sNOMBRE_PC_MOD
			,ClaUsuarioMod		= 0