---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[jornadaSu]
	@pnIdLiga				INT=1,
	@nIdTorneo				TINYINT,
	@nIdJornada				TINYINT,
	@nPorJugar				BIT,
	@nTieneJuegoPendiente	BIT,
	@sNombrePcMod			VARCHAR(50),
	@nClaUsuarioMod			TINYINT
AS
BEGIN
	SET NOCOUNT ON;

	--DECLARACION DE VARIABLES
	DECLARE @tFechaActual	DATETIME	SET @tFechaActual = dbo.ObtieneFechaActual()

	UPDATE [dbo].[Jornada]
	SET PorJugar			 = @nPorJugar
		,TieneJuegoPendiente = @nTieneJuegoPendiente
		,FechaUltimaMod		 = @tFechaActual
		,NombrePcMod		 = @sNombrePcMod
		,ClaUsuarioMod		 = @nClaUsuarioMod
	WHERE	IdLiga		= @pnIdLiga
	AND     IdTorneo	= @nIdTorneo
	AND		IdJornada	= @nIdJornada
END

