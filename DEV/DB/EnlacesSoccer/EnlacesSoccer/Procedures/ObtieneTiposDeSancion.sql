
CREATE PROCEDURE [dbo].[ObtieneTiposDeSancion]
AS

   select IdTipoSancion, Clave, Descripcion
   from dbo.TipoSancion
   where activa = 1 
   order by Descripcion
GO