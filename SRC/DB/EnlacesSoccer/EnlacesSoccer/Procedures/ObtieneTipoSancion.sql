ALTER PROCEDURE [dbo].[ObtieneTipoSancion]
@pnIdLiga	INT=1,
@idtiposancion as tinyint
AS

   select Clave, Descripcion, JuegosSuspension, CausaBaja, Activa
   from dbo.TipoSancion
   where IdLiga = @pnIdLiga AND IdTipoSancion=@idtiposancion

GO