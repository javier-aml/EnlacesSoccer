---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--EXEC ValidarInformacionHistorica @pnIdLiga = 1, @IdTorneo = 5, @IdEquipo = 54

ALTER PROCEDURE ValidarInformacionHistorica
	@pnIdLiga		INT,
	@IdTorneo		TINYINT,
	@IdEquipo		INT
AS
BEGIN

	
	SET NOCOUNT ON;
	
	DECLARE @EsModificarRelacionEquipoJugador AS TINYINT
	DECLARE @IdTorneoActivo AS TINYINT
	
	SELECT  @IdTorneoActivo = IdTorneo
	FROM	Torneo			     
	WHERE   Activo = 1
	AND IdLiga = @pnIdLiga

	IF @IdTorneoActivo =  @IdTorneo
	BEGIN
		SET @EsModificarRelacionEquipoJugador = 1		
	END
	ELSE
	BEGIN
	
		IF EXISTS(
					SELECT 1
					FROM	   Torneo			     TOR
					INNER JOIN TorneoEquipoJugador   TEJ ON (TOR.IdLiga  = TEJ.IdLiga AND TOR.IdTorneo  = TEJ.IdTorneo)
					INNER JOIN JornadaPartidoJugador JPJ ON (TEJ.IdLiga  = JPJ.IdLiga AND TEJ.IdTorneo  = JPJ.IdTorneo AND TEJ.IdEquipo  = JPJ.IdEquipo AND TEJ.IdJugador  = JPJ.IdJugador)
					WHERE TEJ.IdLiga = @pnIdLiga
					AND   TEJ.IdTorneo  = @IdTorneo
					AND   TEJ.IdEquipo  = @IdEquipo
					--AND   TEJ.IdJugador = @IdJugador
				  )  
		BEGIN
			SET @EsModificarRelacionEquipoJugador = 0
		END
		ELSE
		BEGIN
			SET @EsModificarRelacionEquipoJugador = 1
		END

	END

	SELECT EsModificarRelacionEquipoJugador = @EsModificarRelacionEquipoJugador
	
END

