CREATE PROCEDURE [dbo].[ObtieneJugador]
@idjugador as smallint
AS

   select Nombre,NumeroNomina,Fotografia
   from jugador
   where idjugador=@idjugador
