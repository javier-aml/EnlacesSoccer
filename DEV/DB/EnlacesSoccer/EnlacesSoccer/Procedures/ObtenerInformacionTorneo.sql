
--dbo.ObtenerInformacionTorneo 3

ALTER PROCEDURE dbo.ObtenerInformacionTorneo
	@IdTorneo		int
AS
BEGIN

	
	SET NOCOUNT ON;
	
	SELECT Nombre,
		   Activo
	FROM	Torneo
	WHERE IdTorneo = @IdTorneo		
	

END

