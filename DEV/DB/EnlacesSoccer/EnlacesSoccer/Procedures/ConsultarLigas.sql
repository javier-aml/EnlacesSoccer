
ALTER PROCEDURE dbo.ConsultarLigas
	@nActivo		int
AS
BEGIN

	
	SET NOCOUNT ON;

	select * from Liga
	
	SELECT IdLiga
		  ,Nombre
		  ,case Activo when 1 then 'Activo' else 'Inactivo' END as Estado	  
	FROM	Liga
	WHERE ((@nActivo = -1) OR Activo = @nActivo)		
	ORDER BY Activo Desc, IdPais, IdEstado, IdMunicipio, Nombre

END
GO

execute dbo.ConsultarLigas @nActivo = 1

