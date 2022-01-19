CREATE FUNCTION [dbo].[ObtieneSiguienteIdConfiguracion] ()
RETURNS TINYINT AS  
BEGIN 
   declare @IdConfiguracion as tinyint
   select @IdConfiguracion = COALESCE(max(IdConfiguracion),0) + 1 from dbo.Configuracion
   return @IdConfiguracion
END


GO