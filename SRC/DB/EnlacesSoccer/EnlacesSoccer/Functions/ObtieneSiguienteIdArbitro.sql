  
ALTER FUNCTION [dbo].[ObtieneSiguienteIdArbitro] (@pnIdLiga	INT)  
RETURNS SMALLINT AS    
BEGIN   
   declare @idArbitro as SMALLINT  
   select @idArbitro = COALESCE(max(idArbitro),0) + 1 from dbo.Arbitro WHERE IdLiga = @pnIdLiga
   return @idArbitro  
END  