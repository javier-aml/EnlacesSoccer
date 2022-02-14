
ALTER PROCEDURE [dbo].[ConsultarLiga]
	@pnIdLiga int
AS
BEGIN

	
	SET NOCOUNT ON;
	
	SELECT IdLiga
		  ,Nombre
		  ,Representante
		  ,Telefono
		  ,Correo
		  ,IdPais
		  ,IdEstado
		  ,IdMunicipio
		  ,case Activo when 1 then 'Activo' else 'Inactivo' END as Estado	  
	FROM	Liga
	WHERE IdLiga = @pnIdLiga	
	ORDER BY Activo Desc, IdPais, IdEstado, IdMunicipio, Nombre

END
GO

execute dbo.ConsultarLiga @pnIdLiga = 1

