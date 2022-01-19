  
CREATE FUNCTION [dbo].[ObtieneSiguienteIdArbitro] ()  
RETURNS SMALLINT AS    
BEGIN   
   declare @idArbitro as SMALLINT  
   select @idArbitro = COALESCE(max(idArbitro),0) + 1 from dbo.Arbitro
   return @idArbitro  
END  