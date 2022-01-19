  
CREATE FUNCTION [dbo].[ObtieneSiguienteIdJunta] ()  
RETURNS SMALLINT AS    
BEGIN   
   declare @idJunta as SMALLINT  
   select @idJunta = COALESCE(max(IdJunta),0) + 1 from dbo.Junta
   return @idJunta  
END  