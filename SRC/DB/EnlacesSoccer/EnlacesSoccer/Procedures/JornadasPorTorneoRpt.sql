---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

ALTER PROCEDURE [dbo].[JornadasPorTorneoRpt]
	@pnIdLiga	INT,
	@nIdTorneo	INT
AS
BEGIN
	SET NOCOUNT ON;
	
	Select 0 as idJornada,  'Todas' as nombre
	union all
	SELECT	IdJornada, 'Jornada '+CONVERT(VARCHAR, IdJornada) Nombre
	FROM	Jornada
	WHERE	IdLiga = @pnIdLiga AND IdTorneo = @nIdTorneo
	ORDER BY IdJornada

END

