---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

ALTER PROCEDURE DameTorneoActivo
@pnIdLiga		INT
AS
BEGIN

	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	SELECT	MAX(IdTorneo) as IdTorneo , nombre
	FROM	Torneo
	WHERE IdLiga = @pnIdLiga
	GROUP BY  nombre


END

