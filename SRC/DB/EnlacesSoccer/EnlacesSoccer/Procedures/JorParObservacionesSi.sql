---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[JorParObservacionesSi]
	@pnIdLiga					INT,
	@nIdTorneo					TINYINT,
	@nIdJornada					TINYINT,
	@nIdEquipo1					TINYINT,
	@nIdEquipo2					TINYINT,
	@sObservaciones				VARCHAR(500),
	@sNombrePcMod				VARCHAR(50),
	@nClaUsuarioMod				TINYINT
AS
BEGIN
SET NOCOUNT ON
	--DECLARACION DE VARIABLES
	DECLARE @tFechaActual	DATETIME	SET @tFechaActual = dbo.ObtieneFechaActual()

	UPDATE [dbo].[JornadaPartido]
	SET		Observaciones = @sObservaciones
           ,FechaUltimaMod			= @tFechaActual
           ,NombrePcMod				= @sNombrePcMod
           ,ClaUsuarioMod			= @nClaUsuarioMod
	WHERE	IdLiga		= @pnIdLiga
		AND IdTorneo	= @nIdTorneo
		AND	IdJornada	= @nIdJornada
		AND IdEquipo1	= @nIdEquipo1
		AND IdEquipo2	= @nIdEquipo2
SET NOCOUNT OFF
END

