ALTER PROCEDURE [dbo].[BuscaConfiguracion]
@pnIdLiga	INT=1,
@descripcion as varchar(250)
AS

   select IdConfiguracion,		  
		  Descripcion,
		  ValorNumerico,
		  ValorAlfanumerico,
		  ValorFecha = CASE 
					      WHEN ValorFecha = '1900-01-01 00:00:00' THEN NULL
					      ELSE ValorFecha
					   END,
		  Activa = CASE
					 WHEN Activa = 1 THEN 'Activa'
					 ELSE 'Baja'
				   END		
   from dbo.Configuracion 
   where IdLiga = @pnIdLiga	AND Descripcion like '%' + @Descripcion + '%' 
   order by Descripcion



GO