---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[jornadaPartidoSi]
	@pnIdLiga					INT,
	@nIdTorneo					TINYINT,
	@nIdJornada					TINYINT,
	@nIdEquipo1					TINYINT,
	@nIdEquipo2					TINYINT,
	@nGolesEquipo1				TINYINT,
	@nGolesEquipo2				TINYINT,
	@nRecibioTarjetaAEquipo1	BIT,
	@nRecibioTarjetaAEquipo2	BIT,
	@nRecibioTarjetaREquipo1	BIT,
	@nRecibioTarjetaREquipo2	BIT,
	@nJugado					BIT,
	@nProgramado				BIT,
	@tFechaHora					DATETIME,
	@nIdArbitro					TINYINT,
	@sNombrePcMod				VARCHAR(50),
	@nClaUsuarioMod				TINYINT
	
AS
BEGIN
SET NOCOUNT ON;
	--DECLARACION DE VARIABLES
	DECLARE @tFechaActual	DATETIME	SET @tFechaActual = dbo.ObtieneFechaActual()
										
	INSERT INTO JornadaPartido
		   (IdLiga
		   ,IdTorneo
           ,IdJornada
           ,IdEquipo1
           ,IdEquipo2
           ,GolesEquipo1
           ,GolesEquipo2
           ,RecibioTarjetaAEquipo1
           ,RecibioTarjetaAEquipo2
           ,RecibioTarjetaREquipo1
           ,RecibioTarjetaREquipo2
           ,Jugado
           ,Observaciones
           ,Programado
           ,IdArbitro
           ,FechaHora
           ,FechaUltimaMod
           ,NombrePcMod
           ,ClaUsuarioMod)
	SELECT	IdLiga					= @pnIdLiga
		   ,IdTorneo				= @nIdTorneo
           ,IdJornada				= @nIdJornada
           ,IdEquipo1				= @nIdEquipo1
           ,IdEquipo2				= @nIdEquipo2
           ,GolesEquipo1			= @nGolesEquipo1
           ,GolesEquipo2			= @nGolesEquipo2
           ,RecibioTarjetaAEquipo1	= @nRecibioTarjetaAEquipo1
           ,RecibioTarjetaAEquipo2	= @nRecibioTarjetaAEquipo2
           ,RecibioTarjetaREquipo1	= @nRecibioTarjetaREquipo1
           ,RecibioTarjetaREquipo2	= @nRecibioTarjetaREquipo2
           ,Jugado					= @nJugado
           ,Observaciones			= ''
           ,Programado				= @nProgramado
           ,IdArbitro				= @nIdArbitro
           ,FechaHora				= @tFechaHora
           ,FechaUltimaMod			= @tFechaActual
           ,NombrePcMod				= @sNombrePcMod
           ,ClaUsuarioMod			= @nClaUsuarioMod
END

