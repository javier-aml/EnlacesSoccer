CREATE FUNCTION [dbo].[ObtieneSiguienteIdJugador] ()
RETURNS SMALLINT AS  
BEGIN 
   declare @idJugador as SMALLINT
   select @idJugador = COALESCE(max(idJugador),0) + 1 from dbo.Jugador
   return @idJugador
END