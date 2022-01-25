SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Felipe Diaz Acevedo
-- Create date: 21/09/2011
-- Description:	Regresa las jornadas de un torneo que ya han sido jugadas
-- JornadasPorTorneoJugadas 1
-- =============================================

CREATE PROCEDURE JornadasPorTorneoJugadas
	@nIdTorneo	INT
AS
BEGIN
	SET NOCOUNT ON;
	
	
	SELECT	IdJornada, 'Jornada '+CONVERT(VARCHAR, IdJornada) Nombre
	FROM	Jornada
	WHERE	IdTorneo = @nIdTorneo
	AND		PorJugar = 0
	ORDER BY IdJornada

END
GO