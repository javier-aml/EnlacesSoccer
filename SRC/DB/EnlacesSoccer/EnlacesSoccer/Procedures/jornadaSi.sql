---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE dbo.jornadaSi
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
										
	INSERT INTO Jornada
		   (IdLiga
		   ,IdTorneo
           ,IdJornada
           ,PorJugar
           ,TieneJuegoPendiente
           ,FechaUltimaMod
           ,NombrePcMod
           ,ClaUsuarioMod)
	SELECT  IdLiga			    = @pnIdLiga
		   ,IdTorneo			= @nIdTorneo
           ,IdJornada			= @nIdJornada
           ,PorJugar			= @nPorJugar
           ,TieneJuegoPendiente = @nTieneJuegoPendiente
           ,FechaUltimaMod		= @tFechaActual
           ,NombrePcMod			= @sNombrePcMod
           ,ClaUsuarioMod		= @nClaUsuarioMod
END

