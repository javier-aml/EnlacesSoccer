DELETE FROM [dbo].[Equipo]
GO
DECLARE @sNOMBRE_PC_MOD		VARCHAR(64)	SET @sNOMBRE_PC_MOD='Carga Inicial'
DECLARE @sFECHA_ULTIMA_MOD	DATETIME	SET @sFECHA_ULTIMA_MOD='20110101'

INSERT INTO Equipo(
			IdEquipo
           ,Nombre
           ,Activo
           ,FechaUltimaMod
           ,NombrePcMod
           ,ClaUsuarioMod)
SELECT		IdEquipo		= 0
			,Nombre			= 'X'
			,Activo			= 0
			,FechaUltimaMod	= @sFECHA_ULTIMA_MOD
			,NombrePcMod	= @sNOMBRE_PC_MOD
			,ClaUsuarioMod	= 0
UNION

SELECT		IdEquipo		= 1
			,Nombre			= 'Holanda'
			,Activo			= 1
			,FechaUltimaMod	= @sFECHA_ULTIMA_MOD
			,NombrePcMod	= @sNOMBRE_PC_MOD
			,ClaUsuarioMod	= 0
UNION

SELECT		IdEquipo		= 2
			,Nombre			= 'Taller Central'
			,Activo			= 1
			,FechaUltimaMod	= @sFECHA_ULTIMA_MOD
			,NombrePcMod	= @sNOMBRE_PC_MOD
			,ClaUsuarioMod	= 0
UNION

SELECT		IdEquipo		= 3
			,Nombre			= 'CF Monterrey'
			,Activo			= 1
			,FechaUltimaMod	= @sFECHA_ULTIMA_MOD
			,NombrePcMod	= @sNOMBRE_PC_MOD
			,ClaUsuarioMod	= 0
UNION

SELECT		IdEquipo		= 4
			,Nombre			= 'Furia Roja'
			,Activo			= 1
			,FechaUltimaMod	= @sFECHA_ULTIMA_MOD
			,NombrePcMod	= @sNOMBRE_PC_MOD
			,ClaUsuarioMod	= 0
UNION

SELECT		IdEquipo		= 5
			,Nombre			= 'Manchester'
			,Activo			= 1
			,FechaUltimaMod	= @sFECHA_ULTIMA_MOD
			,NombrePcMod	= @sNOMBRE_PC_MOD
			,ClaUsuarioMod	= 0
UNION

SELECT		IdEquipo		= 6
			,Nombre			= 'IIDEA Bajio FC'
			,Activo			= 1
			,FechaUltimaMod	= @sFECHA_ULTIMA_MOD
			,NombrePcMod	= @sNOMBRE_PC_MOD
			,ClaUsuarioMod	= 0
UNION

SELECT		IdEquipo		= 7
			,Nombre			= 'Deportivo TGR'
			,Activo			= 1
			,FechaUltimaMod	= @sFECHA_ULTIMA_MOD
			,NombrePcMod	= @sNOMBRE_PC_MOD
			,ClaUsuarioMod	= 0
UNION

SELECT		IdEquipo		= 8
			,Nombre			= 'Sup 35'
			,Activo			= 1
			,FechaUltimaMod	= @sFECHA_ULTIMA_MOD
			,NombrePcMod	= @sNOMBRE_PC_MOD
			,ClaUsuarioMod	= 0
UNION

SELECT		IdEquipo		= 9
			,Nombre			= 'Fuzion Electric'
			,Activo			= 1
			,FechaUltimaMod	= @sFECHA_ULTIMA_MOD
			,NombrePcMod	= @sNOMBRE_PC_MOD
			,ClaUsuarioMod	= 0
UNION

SELECT		IdEquipo		= 10
			,Nombre			= 'Skyra'
			,Activo			= 1
			,FechaUltimaMod	= @sFECHA_ULTIMA_MOD
			,NombrePcMod	= @sNOMBRE_PC_MOD
			,ClaUsuarioMod	= 0
UNION

SELECT		IdEquipo		= 11
			,Nombre			= 'Maquina de Colada'
			,Activo			= 1
			,FechaUltimaMod	= @sFECHA_ULTIMA_MOD
			,NombrePcMod	= @sNOMBRE_PC_MOD
			,ClaUsuarioMod	= 0
UNION

SELECT		IdEquipo		= 12
			,Nombre			= 'Arsenal IND'
			,Activo			= 1
			,FechaUltimaMod	= @sFECHA_ULTIMA_MOD
			,NombrePcMod	= @sNOMBRE_PC_MOD
			,ClaUsuarioMod	= 0
UNION

SELECT		IdEquipo		= 13
			,Nombre			= 'Los Juniors'
			,Activo			= 1
			,FechaUltimaMod	= @sFECHA_ULTIMA_MOD
			,NombrePcMod	= @sNOMBRE_PC_MOD
			,ClaUsuarioMod	= 0
UNION

SELECT		IdEquipo		= 14
			,Nombre			= 'Gallos de Aceria'
			,Activo			= 1
			,FechaUltimaMod	= @sFECHA_ULTIMA_MOD
			,NombrePcMod	= @sNOMBRE_PC_MOD
			,ClaUsuarioMod	= 0
UNION

SELECT		IdEquipo		= 15
			,Nombre			= 'Operación LAM 3'
			,Activo			= 1
			,FechaUltimaMod	= @sFECHA_ULTIMA_MOD
			,NombrePcMod	= @sNOMBRE_PC_MOD
			,ClaUsuarioMod	= 0
UNION

SELECT		IdEquipo		= 16
			,Nombre			= 'Escorias FC'
			,Activo			= 1
			,FechaUltimaMod	= @sFECHA_ULTIMA_MOD
			,NombrePcMod	= @sNOMBRE_PC_MOD
			,ClaUsuarioMod	= 0
UNION

SELECT		IdEquipo		= 17
			,Nombre			= 'Lagartos del BGV'
			,Activo			= 1
			,FechaUltimaMod	= @sFECHA_ULTIMA_MOD
			,NombrePcMod	= @sNOMBRE_PC_MOD
			,ClaUsuarioMod	= 0
UNION

SELECT		IdEquipo		= 18
			,Nombre			= 'Drink Team'
			,Activo			= 1
			,FechaUltimaMod	= @sFECHA_ULTIMA_MOD
			,NombrePcMod	= @sNOMBRE_PC_MOD
			,ClaUsuarioMod	= 0
UNION

SELECT		IdEquipo		= 19
			,Nombre			= 'Snowmen'
			,Activo			= 1
			,FechaUltimaMod	= @sFECHA_ULTIMA_MOD
			,NombrePcMod	= @sNOMBRE_PC_MOD
			,ClaUsuarioMod	= 0