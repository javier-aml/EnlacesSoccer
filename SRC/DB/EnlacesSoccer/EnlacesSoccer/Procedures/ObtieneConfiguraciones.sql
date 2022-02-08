ALTER PROCEDURE [dbo].[ObtieneConfiguraciones]
@pnIdLiga	INT=1
AS

   select IdConfiguracion, Descripcion
   from dbo.Configuracion
   where IdLiga = @pnIdLiga AND Activa = 1
GO