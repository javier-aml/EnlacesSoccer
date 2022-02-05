---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  
ALTER FUNCTION [dbo].[ObtieneSiguienteIdJunta] (@pnIdLiga	INT)  
RETURNS SMALLINT AS    
BEGIN   
   declare @idJunta as SMALLINT  
   
   select @idJunta = COALESCE(max(IdJunta),0) + 1 
   from dbo.Junta
   WHERE IdLiga = @pnIdLiga

   return @idJunta  

END

