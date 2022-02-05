ALTER FUNCTION [dbo].[ObtieneSiguienteIdConfiguracion] (@pnIdLiga	INT)
RETURNS TINYINT AS  
BEGIN 
   declare @IdConfiguracion as tinyint
   select @IdConfiguracion = COALESCE(max(IdConfiguracion),0) + 1 from dbo.Configuracion WHERE IdLiga = @pnIdLiga
   return @IdConfiguracion
END


GO