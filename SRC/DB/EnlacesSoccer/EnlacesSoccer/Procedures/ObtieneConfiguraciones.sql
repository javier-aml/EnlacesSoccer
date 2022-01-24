CREATE PROCEDURE [dbo].[ObtieneConfiguraciones]
AS

   select IdConfiguracion, Descripcion
   from dbo.Configuracion
   where Activa = 1
GO