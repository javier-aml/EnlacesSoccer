CREATE FUNCTION [dbo].[ObtieneSiguienteIdTipoSancion] ()
RETURNS TINYINT AS  
BEGIN 
   declare @idTipoSancion as tinyint
   select @idTipoSancion = COALESCE(max(idtiposancion),0) + 1 from dbo.TipoSancion
   return @idTipoSancion
END










GO