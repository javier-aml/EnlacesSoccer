SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

CREATE PROCEDURE JornadasPorTorneo
	@nIdTorneo	INT
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT	IdJornada, 'Jornada '+CONVERT(VARCHAR, IdJornada) Nombre
	FROM	Jornada
	WHERE	IdTorneo = @nIdTorneo
	ORDER BY IdJornada

END
GO