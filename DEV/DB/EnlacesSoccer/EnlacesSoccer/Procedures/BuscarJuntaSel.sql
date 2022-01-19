use torneoDEACERO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Felipe Diaz 
-- Create date: 06/09/2011
-- Description:	Buscar las juntas
-- =============================================
CREATE PROCEDURE BuscarJuntaSel
--ALTER PROCEDURE BuscarJuntaSel
	@pdFechaJunta	smalldatetime
AS
BEGIN
SET NOCOUNT ON
	SELECT		IdJunta,
				FechaHora,
				ISNULL(Acuerdos,'') AS Acuerdos,
				ISNULL(Observaciones,'') AS Observaciones
	FROM		dbo.Junta
	WHERE		DATEDIFF(DAY,0,FechaHora) = 
				DATEDIFF(DAY,0,@pdFechaJunta) 
	ORDER BY	IdJunta
	
SET NOCOUNT OFF
END

