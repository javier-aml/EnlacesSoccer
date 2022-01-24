--EXEC ValidarInformacionHistorica 3, 35

ALTER PROCEDURE ValidarInformacionHistorica
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

	IF @IdTorneoActivo =  @IdTorneo
	BEGIN
		SET @EsModificarRelacionEquipoJugador = 1		
	END
	ELSE
	BEGIN
	
		IF EXISTS(
					SELECT 1
					FROM	   Torneo			     TOR
					INNER JOIN TorneoEquipoJugador   TEJ ON (TOR.IdTorneo  = TEJ.IdTorneo)
					INNER JOIN JornadaPartidoJugador JPJ ON (TEJ.IdTorneo  = JPJ.IdTorneo AND TEJ.IdEquipo  = JPJ.IdEquipo AND TEJ.IdJugador  = JPJ.IdJugador)
					WHERE TEJ.IdTorneo  = @IdTorneo
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

