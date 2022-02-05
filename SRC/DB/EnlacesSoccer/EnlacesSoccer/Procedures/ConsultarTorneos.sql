---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

ALTER PROCEDURE ConsultarTorneos
	@pnIdLiga		INT,
	@nActivo		int
AS
BEGIN

	
	SET NOCOUNT ON;
	
	SELECT IdLiga
		  ,IdTorneo
		  ,Nombre
		  ,case Activo when 1 then 'Activo' else 'Inactivo' END as Estado	  
	FROM	Torneo
	WHERE IdLiga = @pnIdLiga
	AND ((@nActivo = -1) OR Activo = @nActivo)		
	ORDER BY Estado, IdTorneo

END

