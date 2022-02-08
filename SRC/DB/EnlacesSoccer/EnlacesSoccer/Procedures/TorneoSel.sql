---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

ALTER PROCEDURE [dbo].[TorneoSel]
@pnIdLiga	INT=1,	
@nIdTorneo	INT
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT	Nombre
	FROM	Torneo
	WHERE	IdLiga = @pnIdLiga AND IdTorneo = @nIdTorneo
END

