
--execute dbo.ConsultarLigas @pnActivo = 1

ALTER PROCEDURE dbo.ConsultarLigas
	@pnActivo int=1
AS
BEGIN

	
	SET NOCOUNT ON;
	
	SELECT IdLiga
		  ,Nombre
	FROM	Liga
	WHERE (Activo = @pnActivo OR @pnActivo = -1)
	ORDER BY Activo Desc, Nombre

END
GO



