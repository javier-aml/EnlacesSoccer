---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

ALTER PROCEDURE RegistrarJugadorEquipo
	@pnIdLiga		INT=1,
	@nIdTorneo		INT,
	@nIdEquipo		INT,
	@nIdJugador		INT,
	@nNumero		INT,
	@sNombrePcMod	VARCHAR(50),
	@nClaUsuarioMod	INT
AS
BEGIN

	SET NOCOUNT ON;

	--DECLARACION DE VARIABLES
	DECLARE @nFechaActual DATETIME		
	
	SET @nFechaActual = dbo.ObtieneFechaActual()
	
	IF NOT EXISTS(SELECT 1 FROM TorneoEquipoJugador WITH(NOLOCK) 
				  WHERE IdLiga  = @pnIdLiga
				  AND IdTorneo = @nIdTorneo 
				  AND IdEquipo = @nIdEquipo 
				  AND IdJugador = @nIdJugador)
	BEGIN

		INSERT INTO TorneoEquipoJugador
			   (IdLiga
			   ,IdTorneo
			   ,IdEquipo
			   ,IdJugador
			   ,PartidosJugados
			   ,GolesAnotados
			   ,TarjetasAmarillasRecibidas
			   ,TarjetasRojasRecibidas
			   ,FechaUltimaMod
			   ,NombrePcMod
			   ,ClaUsuarioMod
			   ,NumeroJugador)
		 SELECT IdLiga						= @pnIdLiga
			   ,IdTorneo					= @nIdTorneo
			   ,IdEquipo					= @nIdEquipo
			   ,IdJugador					= @nIdJugador
			   ,PartidosJugados				= 0
			   ,GolesAnotados				= 0
			   ,TarjetasAmarillasRecibidas	= 0
			   ,TarjetasRojasRecibidas		= 0
			   ,FechaUltimaMod				= @nFechaActual
			   ,NombrePcMod					= @sNombrePcMod
			   ,ClaUsuarioMod				= @nClaUsuarioMod
			   ,NumeroJugador				= @nNumero

	END	

		IF NOT EXISTS(SELECT 1 
					  FROM   jornadapartidojugador JPJ
					  WHERE  IdLiga  = @pnIdLiga
					  AND IdTorneo = @nIdTorneo 
					  AND IdEquipo = @nIdEquipo 
					  AND IdJugador = @nIdJugador)
		BEGIN
		
			DECLARE @IdJugadorMin AS INT
						
			SELECT @IdJugadorMin = MIN(IdJugador)
			FROM jornadapartidojugador
			WHERE  IdLiga  = @pnIdLiga
			AND IdTorneo = @nIdTorneo 
			AND IdEquipo = @nIdEquipo 			
			
			INSERT INTO jornadapartidojugador(  IdLiga,
											    IdTorneo,
												IdJornada,
												IdEquipo,
												IdJugador,
												Jugo,
												GolesJugador,
												RecibioTarjetaAmarilla,
												RecibioTarjetaRoja,
												FechaUltimaMod,
												NombrePcMod,
												ClaUsuarioMod)
			SELECT  IdLiga,
					IdTorneo,
					IdJornada,
					IdEquipo,
					@nIdJugador,
					Jugo,
					GolesJugador,
					RecibioTarjetaAmarilla,
					RecibioTarjetaRoja,
					FechaUltimaMod,
					NombrePcMod,
					ClaUsuarioMod
			FROM jornadapartidojugador
			WHERE   IdLiga  = @pnIdLiga
			AND IdTorneo = @nIdTorneo 
			AND IdEquipo = @nIdEquipo 
			AND IdJugador = @IdJugadorMin
			
		END
				
		
		IF NOT EXISTS(SELECT 1 
					  FROM   TorneoEquipoJugador TEJ
					  WHERE  IdLiga  = @pnIdLiga
					  AND IdTorneo = @nIdTorneo AND IdEquipo = @nIdEquipo AND IdJugador = @nIdJugador)
		AND     EXISTS(SELECT 1 
					   FROM   jornadapartidojugador JPJ
					   WHERE  IdLiga  = @pnIdLiga
					   AND IdTorneo = @nIdTorneo AND IdEquipo = @nIdEquipo AND IdJugador = @nIdJugador)
		BEGIN
		
			DELETE JPJ
			FROM   jornadapartidojugador JPJ
			WHERE  IdLiga  = @pnIdLiga
			AND IdTorneo = @nIdTorneo AND IdEquipo = @nIdEquipo AND IdJugador = @nIdJugador
		
		END
		
								
END

