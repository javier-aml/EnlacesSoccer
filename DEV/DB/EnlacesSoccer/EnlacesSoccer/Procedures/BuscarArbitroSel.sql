-- =============================================
-- Author:		Felipe Diaz 
-- Create date: 01/09/2011
-- Description:	Buscar los arbitros que existan
-- =============================================
ALTER PROCEDURE BuscarArbitroSel
	@snombre as varchar(50)
AS
BEGIN
SET NOCOUNT ON
	SELECT		IdArbitro,				
				Nombre,						
				Telefono,
				Activo = CASE 
							WHEN Activo = 1 THEN 'Activo'
							ELSE 'Baja'
						 END,					
				JuegosArbitrados,			
				FechaUltimaMod,
				NombrePcMod,			
				ClaUsuarioMod
	FROM		dbo.Arbitro
	WHERE		Nombre LIKE '%' + @snombre + '%' 	
	ORDER BY	Nombre
	
SET NOCOUNT OFF
END


