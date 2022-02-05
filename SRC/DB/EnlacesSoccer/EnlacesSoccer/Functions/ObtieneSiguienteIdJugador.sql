ALTER FUNCTION [dbo].[ObtieneSiguienteIdJugador] (@pnIdLiga	INT)
RETURNS SMALLINT AS  
BEGIN 
   declare @idJugador as SMALLINT
   select @idJugador = COALESCE(max(idJugador),0) + 1 from dbo.Jugador WHERE IdLiga = @pnIdLiga
   return @idJugador
END