---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
/*
EXEC ConsultarEstadisticaJugador @IdLiga = 1, @pnIdTorneo = 1, @pnIdEquipo = 0
select * from torneoequipojugador where idtorneo = 1 and idjugador = 48
select * from equipo where idequipo=12
select * from jornadapartidojugador where idjugador = 48
*/
ALTER PROCEDURE ConsultarEstadisticaJugador
	@IdLiga	        INT=1,
	@pnIdTorneo		int,
	@pnIdEquipo		int = 0
AS
BEGIN

	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;




 SELECT J.IdJugador,JPJ.NombreEquipo  AS Equipo,
      J.Nombre
      ,ISNULL((SELECT	COUNT(1)  a
		FROM	JornadaPartidoJugador
		WHERE   jugo = 1
			AND IdLiga = JPJ.IdLiga
			AND idTorneo = JPJ.Idtorneo
			AND IdJugador = JPJ.IdJugador
			AND idEquipo = JPJ.IdEquipo),0) AS [PartidosJugados]
      ,ISNULL(SUM(JPJ.GolesJugador),0) AS [Goles]
      ,ISNULL((SELECT	COUNT(1)  a
		FROM	JornadaPartidoJugador
		WHERE   recibioTarjetaAmarilla = 1
			AND IdLiga = JPJ.IdLiga
			AND idTorneo = JPJ.Idtorneo
			AND IdJugador = JPJ.IdJugador
			AND idEquipo = JPJ.IdEquipo),0) AS [Amonestaciones]
      ,ISNULL((SELECT	COUNT(1)  a
		FROM	JornadaPartidoJugador
		WHERE   RecibioTarjetaRoja = 1
			AND IdLiga = JPJ.IdLiga
			AND idTorneo = JPJ.Idtorneo
			AND IdJugador = JPJ.IdJugador
			AND idEquipo = JPJ.IdEquipo),0) AS [Expulsiones]
	  FROM  dbo.Jugador				J
	  LEFT JOIN	(SELECT a.*,E.Nombre AS NombreEquipo 
				 FROM JornadaPartidoJugador     A
				 INNER JOIN Equipo				E	ON (A.IdLiga = E.IdLiga AND A.IdEquipo = E.idEquipo)
				 WHERE A.IdLiga = @IdLiga AND IdTorneo = @pnIdTorneo)	JPJ
		ON	JPJ.IdLiga = J.IdLiga AND JPJ.idjugador = J.IdJugador
	  WHERE JPJ.IdLiga = @IdLiga AND J.Activo = 1 AND JPJ.NombreEquipo IS NOT NULL
		and @pnIdEquipo in (0, JPJ.idEquipo )
	  GROUP BY J.IdJugador,JPJ.NombreEquipo,JPJ.IdLiga,JPJ.IdTorneo, j.nombre,JPJ.IdJugador,JPJ.IdEquipo
	  ORDER BY 5 DESC, 4 ASC, 2 ASC

END

