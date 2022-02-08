---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[jornadaPartidoSu]
	@pnIdLiga					INT=1,
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
	@nGanaEnPenales1			BIT,
	@nGanaEnPenales2			BIT,
	@nJugado					BIT,
	@sObservaciones				VARCHAR(500),
	@nIdArbitro					TINYINT,
	@sNombrePcMod				VARCHAR(50),
	@nClaUsuarioMod				TINYINT
AS
BEGIN
SET NOCOUNT ON;
	--DECLARACION DE VARIABLES
	DECLARE @tFechaActual	DATETIME	SET @tFechaActual = dbo.ObtieneFechaActual()
	DECLARE @nPendientes	INT SET @nPendientes = 0
	DECLARE @nPorJugar		INT SET @nPorJugar = 1

	UPDATE dbo.JornadaPartido
	SET		GolesEquipo1			= @nGolesEquipo1
           ,GolesEquipo2			= @nGolesEquipo2
           ,RecibioTarjetaAEquipo1	= @nRecibioTarjetaAEquipo1
           ,RecibioTarjetaAEquipo2	= @nRecibioTarjetaAEquipo2
           ,RecibioTarjetaREquipo1	= @nRecibioTarjetaREquipo1
           ,RecibioTarjetaREquipo2	= @nRecibioTarjetaREquipo2
           ,Jugado					= @nJugado
           ,GanaEnPenales1			= @nGanaEnPenales1
           ,GanaEnPenales2			= @nGanaEnPenales2
           ,Observaciones			= @sObservaciones
           ,IdArbitro				= @nIdArbitro
           ,FechaUltimaMod			= @tFechaActual
           ,NombrePcMod				= @sNombrePcMod
           ,ClaUsuarioMod			= @nClaUsuarioMod
	WHERE	IdLiga		= @pnIdLiga
		AND IdTorneo	= @nIdTorneo
		AND	IdJornada	= @nIdJornada
		AND IdEquipo1	= @nIdEquipo1
		AND IdEquipo2	= @nIdEquipo2
	
	IF EXISTS (SELECT 1 
			   FROM dbo.JornadaPartido 
			   WHERE IdLiga = @pnIdLiga	
		   AND IdTorneo	    = @nIdTorneo
		   AND IdJornada	= @nIdJornada
		   AND IdEquipo1	= @nIdEquipo1
		   AND IdEquipo2	= @nIdEquipo2
		   AND Jugado = 1 )
		SET @nPorJugar = 0
	
	IF EXISTS (SELECT 1 
			   FROM dbo.JornadaPartido 
			   WHERE IdLiga = @pnIdLiga	
		   AND 	IdTorneo	= @nIdTorneo
		AND	IdJornada	= @nIdJornada
		AND Jugado = 0 )
		SET @nPendientes = 1
	
	UPDATE jornada 
	SET PorJugar = @nPorJugar, TieneJuegoPendiente=@nPendientes 
	WHERE IdLiga = @pnIdLiga AND  IdTorneo= @nIdTorneo AND IdJornada = @nIdJornada


END

