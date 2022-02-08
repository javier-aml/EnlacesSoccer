---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--EXEC dbo.ObtenerInformacionTorneo @pnIdLiga = 1, @IdTorneo = 5

ALTER PROCEDURE dbo.ObtenerInformacionTorneo
	@pnIdLiga	   INT=1,
	@IdTorneo		int
AS
BEGIN

	
	SET NOCOUNT ON;
	
	SELECT Nombre,
		   Activo
	FROM	Torneo
	WHERE IdLiga = @pnIdLiga
	AND IdTorneo = @IdTorneo		
	

END

