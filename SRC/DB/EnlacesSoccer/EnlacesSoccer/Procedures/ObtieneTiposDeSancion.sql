
ALTER PROCEDURE [dbo].[ObtieneTiposDeSancion]
@pnIdLiga	INT=1
AS

   select IdTipoSancion, Clave, Descripcion
   from dbo.TipoSancion
   where IdLiga = @pnIdLiga AND activa = 1 
   order by Descripcion
GO