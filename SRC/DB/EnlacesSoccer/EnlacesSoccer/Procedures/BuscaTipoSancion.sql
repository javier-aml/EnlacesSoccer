ALTER PROCEDURE [dbo].[BuscaTipoSancion]
@descripcion as varchar(250)
AS

   select IdTipoSancion,
		  Clave,
		  Descripcion,
		  JuegosSuspension,
		  CausaBaja = CASE
					     WHEN CausaBaja = 1 THEN 'SI'
					     ELSE 'NO'
				      END,
		  Activa = CASE
					 WHEN Activa = 1 THEN 'Activa'
					 ELSE 'Baja'
				   END		
   from dbo.TipoSancion 
   where Descripcion like '%' + @Descripcion + '%' 
   order by Descripcion, CausaBaja



GO