
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
ALTER PROCEDURE dbo.ActualizaEstadisticaJugador
(
@IdLiga	  INT,
@IdTorneo TINYINT,
@IdEquipo TINYINT
)
AS
BEGIN
	
	DECLARE @IdJugadorMIN SMALLINT
	DECLARE @IdJugadorMAX SMALLINT
	DECLARE @PartidosJugados TINYINT
	DECLARE @GolesAnotados TINYINT
	DECLARE @TarjetasAmarillasRecibidas TINYINT
	DECLARE @TarjetasRojasRecibidas TINYINT
		
	SELECT @IdJugadorMIN = MIN(IdJugador)
	FROM dbo.TorneoEquipoJugador
	WHERE IdLiga = @IdLiga AND IdTorneo = @IdTorneo AND IdEquipo = @IdEquipo
	
	SELECT @IdJugadorMAX = MAX(IdJugador)
	FROM dbo.TorneoEquipoJugador
	WHERE IdLiga = @IdLiga AND IdTorneo = @IdTorneo AND IdEquipo = @IdEquipo
	
	
	SET @PartidosJugados			= 0
	SET @GolesAnotados			    = 0
	SET @TarjetasAmarillasRecibidas = 0
	SET @TarjetasRojasRecibidas		= 0
	
	WHILE @IdJugadorMIN <= @IdJugadorMAX
	BEGIN
		
			
			SELECT @PartidosJugados = COUNT(1)
			FROM dbo.JornadaPartidoJugador
			WHERE IdLiga = @IdLiga AND IdTorneo = @IdTorneo AND IdEquipo = @IdEquipo AND IdJugador = @IdJugadorMIN AND Jugo = 1 
			
			SELECT @GolesAnotados = SUM(GolesJugador)
			FROM dbo.JornadaPartidoJugador
			WHERE IdLiga = @IdLiga AND IdTorneo = @IdTorneo AND IdEquipo = @IdEquipo AND IdJugador = @IdJugadorMIN AND Jugo = 1  
					
			SELECT @TarjetasAmarillasRecibidas = COUNT(1)
			FROM dbo.JornadaPartidoJugador
			WHERE IdLiga = @IdLiga AND IdTorneo = @IdTorneo AND IdEquipo = @IdEquipo AND IdJugador = @IdJugadorMIN AND Jugo = 1 AND RecibioTarjetaAmarilla = 1
			
			SELECT @TarjetasRojasRecibidas = COUNT(1)
			FROM dbo.JornadaPartidoJugador
			WHERE IdLiga = @IdLiga AND IdTorneo = @IdTorneo AND IdEquipo = @IdEquipo AND IdJugador = @IdJugadorMIN AND Jugo = 1 AND RecibioTarjetaRoja = 1
			
						
			
			BEGIN TRANSACTION
			
			
				UPDATE  dbo.TorneoEquipoJugador
				SET		PartidosJugados				= @PartidosJugados,
						GolesAnotados				= ISNULL(@GolesAnotados,0),
						TarjetasAmarillasRecibidas  = @TarjetasAmarillasRecibidas,
						TarjetasRojasRecibidas		= @TarjetasRojasRecibidas,
						FechaUltimaMod				= dbo.ObtieneFechaActual(),
						NombrePcMod					= HOST_NAME(),
						ClaUsuarioMod				= 0
				WHERE  IdLiga = @IdLiga AND IdTorneo = @IdTorneo AND IdEquipo = @IdEquipo AND IdJugador = @IdJugadorMIN
			
						
			COMMIT TRANSACTION	
		
			SET @IdJugadorMIN = @IdJugadorMIN + 1
	END

END