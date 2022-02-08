use EnlacesSoccer
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Felipe Diaz 
-- Create date: 06/09/2011
-- Description:	Buscar las juntas
-- =============================================
ALTER PROCEDURE BuscarJuntaSel
--ALTER PROCEDURE BuscarJuntaSel
	@pnIdLiga	INT=1,
	@pdFechaJunta	smalldatetime
AS
BEGIN
SET NOCOUNT ON
	SELECT		IdJunta,
				FechaHora,
				ISNULL(Acuerdos,'') AS Acuerdos,
				ISNULL(Observaciones,'') AS Observaciones
	FROM		dbo.Junta
	WHERE		IdLiga = @pnIdLiga AND DATEDIFF(DAY,0,FechaHora) = 
				DATEDIFF(DAY,0,@pdFechaJunta) 
	ORDER BY	IdJunta
	
SET NOCOUNT OFF
END

