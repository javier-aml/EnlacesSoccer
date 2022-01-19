
CREATE PROCEDURE [dbo].[BuscaJugador]
@nombre as varchar(50)
AS

   select IdJugador,
		  Nombre,
		  Activo = CASE
					 WHEN Activo = 1 THEN 'Activo'
					 ELSE 'Baja'
				   END,
		  FechaUltimaMod,
		  NombrePcMod,
		  ClaUsuarioMod
   from dbo.Jugador 
   where Nombre like '%' + @nombre + '%' 
   order by Nombre


