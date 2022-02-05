---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

ALTER PROCEDURE [dbo].[TorneoSel]
@pnIdLiga	INT,	
@nIdTorneo	INT
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT	Nombre
	FROM	Torneo
	WHERE	IdLiga = @pnIdLiga AND IdTorneo = @nIdTorneo
END

