CREATE FUNCTION [dbo].[ObtieneSiguienteIdLiga] ()
RETURNS INT AS  
BEGIN 
   declare @IdLiga as INT
   select @IdLiga = COALESCE(max(IdLiga),0) + 1 from dbo.Liga
   return @IdLiga
END