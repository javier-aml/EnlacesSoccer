ALTER PROCEDURE [dbo].[ObtieneTipoSancion]
@idtiposancion as tinyint
AS

   select Clave, Descripcion, JuegosSuspension, CausaBaja, Activa
   from dbo.TipoSancion
   where IdTipoSancion=@idtiposancion

GO