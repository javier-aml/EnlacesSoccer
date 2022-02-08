---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- =============================================
-- Author:		Felipe Diaz Acevedo
-- Create date: 21/09/2011
-- Description:	Regresa las jornadas de un torneo que ya han sido jugadas
-- =============================================

ALTER PROCEDURE JornadasPorTorneoJugadas
	@pnIdLiga	INT=1,
	@nIdTorneo	INT
AS
BEGIN
	SET NOCOUNT ON;
	
	
	SELECT	IdJornada, 'Jornada '+CONVERT(VARCHAR, IdJornada) Nombre
	FROM	Jornada
	WHERE	IdLiga =  @pnIdLiga	AND IdTorneo = @nIdTorneo
	AND		PorJugar = 0
	ORDER BY IdJornada

END

