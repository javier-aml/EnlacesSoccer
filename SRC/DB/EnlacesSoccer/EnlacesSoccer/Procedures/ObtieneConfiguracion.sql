ALTER PROCEDURE [dbo].[ObtieneConfiguracion]
@pnIdLiga	INT=1,
@IdConfiguracion as tinyint
AS

   select Descripcion, ValorNumerico, ValorAlfanumerico, ValorFecha, Activa
   from dbo.Configuracion
   where IdLiga = @pnIdLiga AND IdConfiguracion = @IdConfiguracion
GO