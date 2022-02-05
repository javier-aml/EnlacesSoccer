---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

ALTER PROCEDURE JornadasPorTorneo
	@pnIdLiga	INT,
	@nIdTorneo	INT
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT	IdJornada, 'Jornada '+CONVERT(VARCHAR, IdJornada) Nombre
	FROM	Jornada
	WHERE	IdLiga =  @pnIdLiga AND IdTorneo = @nIdTorneo
	ORDER BY IdJornada

END

