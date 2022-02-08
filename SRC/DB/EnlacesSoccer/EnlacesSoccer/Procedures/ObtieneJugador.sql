ALTER PROCEDURE [dbo].[ObtieneJugador]
@pnIdLiga	INT=1,
@idjugador as smallint
AS

    select IdJugador, Nombre, NumeroNomina, NumeroCamisa, Fotografia, Planta,Contratista, Area, NumeroCamisa
   from jugador
   where IdLiga = @pnIdLiga AND idjugador=@idjugador
