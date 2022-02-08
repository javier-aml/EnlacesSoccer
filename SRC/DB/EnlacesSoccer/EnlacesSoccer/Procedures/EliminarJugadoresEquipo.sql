---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

ALTER PROCEDURE EliminarJugadoresEquipo
	@pnIdLiga	    INT=1,
	@nIdTorneo		INT,
	@nIdEquipo		INT
AS
BEGIN

	SET NOCOUNT ON;


	--Selecciono los jugadores que estan libres para seleccionar en ese torneo.
	DELETE	TorneoEquipoJugador
	WHERE	IdLiga = @pnIdLiga 
	    AND IdTorneo = @nIdTorneo
		AND	IdEquipo = @nIdEquipo
								
END

