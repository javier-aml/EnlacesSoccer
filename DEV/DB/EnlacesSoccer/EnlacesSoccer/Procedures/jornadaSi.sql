SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE jornadaSi
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
	DECLARE @tFechaActual	DATETIME	SET @tFechaActual = GETDATE()
										
	INSERT INTO Jornada
		   (IdTorneo
           ,IdJornada
           ,PorJugar
           ,TieneJuegoPendiente
           ,FechaUltimaMod
           ,NombrePcMod
           ,ClaUsuarioMod)
	SELECT	IdTorneo			= @nIdTorneo
           ,IdJornada			= @nIdJornada
           ,PorJugar			= @nPorJugar
           ,TieneJuegoPendiente = @nTieneJuegoPendiente
           ,FechaUltimaMod		= @tFechaActual
           ,NombrePcMod			= @sNombrePcMod
           ,ClaUsuarioMod		= @nClaUsuarioMod
END
GO