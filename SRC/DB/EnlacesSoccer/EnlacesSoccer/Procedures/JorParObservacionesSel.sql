---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[JorParObservacionesSel]
	@pnIdLiga					INT,
	@nIdTorneo					TINYINT,
	@nIdJornada					TINYINT,
	@nIdEquipo1					TINYINT,
	@nIdEquipo2					TINYINT
AS
BEGIN
SET NOCOUNT ON

	SELECT	Observaciones 
	FROM	dbo.JornadaPartido
	WHERE	IdLiga      = @pnIdLiga
		AND IdTorneo	= @nIdTorneo
		AND	IdJornada	= @nIdJornada
		AND IdEquipo1	= @nIdEquipo1
		AND IdEquipo2	= @nIdEquipo2
SET NOCOUNT OFF
END

