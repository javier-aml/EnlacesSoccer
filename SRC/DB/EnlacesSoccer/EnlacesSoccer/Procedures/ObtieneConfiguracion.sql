CREATE PROCEDURE [dbo].[ObtieneConfiguracion]
@IdConfiguracion as tinyint
AS

   select Descripcion, ValorNumerico, ValorAlfanumerico, ValorFecha, Activa
   from dbo.Configuracion
   where IdConfiguracion = @IdConfiguracion
GO