ALTER FUNCTION [dbo].[ObtieneSiguienteIdTipoSancion] (@pnIdLiga	INT)
RETURNS TINYINT AS  
BEGIN 
   declare @idTipoSancion as tinyint
   select @idTipoSancion = COALESCE(max(idtiposancion),0) + 1 from dbo.TipoSancion WHERE IdLiga = @pnIdLiga
   return @idTipoSancion
END










GO