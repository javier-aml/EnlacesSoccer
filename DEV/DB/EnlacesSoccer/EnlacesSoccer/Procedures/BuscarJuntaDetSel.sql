use torneoDEACERO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Felipe Diaz 
-- Create date: 06/09/2011
-- Description:	Buscar una junta en especifico
-- =============================================
create PROCEDURE BuscarJuntaDetSel
--ALTER PROCEDURE BuscarJuntaDetSel 
	@pnIdJunta		int,
	@pnIdTorneo		int
AS
BEGIN
SET NOCOUNT ON
	SELECT		IdJunta,
				FechaHora,
				ISNULL(Acuerdos,'') AS Acuerdos,
				ISNULL(Observaciones,'') AS Observaciones
	FROM		dbo.Junta
	WHERE		IdJunta		= @pnIdJunta
	and			IdTorneo	= @pnIdTorneo
	
SET NOCOUNT OFF
END

