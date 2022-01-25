
ALTER PROCEDURE ConsultarTorneos
	@nActivo		int
AS
BEGIN

	
	SET NOCOUNT ON;
	
	SELECT IdTorneo
		  ,Nombre
		  ,case Activo when 1 then 'Activo' else 'Inactivo' END as Estado	  
	FROM	Torneo
	WHERE ((@nActivo = -1) OR Activo = @nActivo)		
	ORDER BY Estado, IdTorneo

END

