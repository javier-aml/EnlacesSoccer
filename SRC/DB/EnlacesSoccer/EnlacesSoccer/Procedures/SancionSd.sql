---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,> exec PartidosPorJornadaPorTorneoReporte 1,2
-- =============================================

ALTER PROCEDURE [dbo].[SancionSd]
	@pnIdLiga	INT=1,
	@nIdTorneo	TINYINT,
	@nIdJornada	TINYINT,
	@nIdEquipo	TINYINT,
	@nIdJugador	SMALLINT
AS
BEGIN
	SET NOCOUNT ON;
	
	DELETE FROM dbo.Sancion
	WHERE	IdLiga   = @pnIdLiga
		AND IdTorneo = @nIdTorneo
		AND	IdEquipo = @nIdEquipo
        AND	IdJornada = @nIdJornada
        AND	IdJugador = @nIdJugador

	SET NOCOUNT OFF
END

