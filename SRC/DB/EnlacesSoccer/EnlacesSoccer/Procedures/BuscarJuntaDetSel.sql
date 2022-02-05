
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- =============================================
-- Author:		Felipe Diaz 
-- Create date: 06/09/2011
-- Description:	Buscar una junta en especifico
-- =============================================
--ALTER PROCEDURE BuscarJuntaDetSel
ALTER PROCEDURE BuscarJuntaDetSel 
	@IdLiga	        INT,
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
	WHERE		IdLiga = @IdLiga AND IdJunta = @pnIdJunta
	and			IdTorneo	= @pnIdTorneo
	
SET NOCOUNT OFF
END

