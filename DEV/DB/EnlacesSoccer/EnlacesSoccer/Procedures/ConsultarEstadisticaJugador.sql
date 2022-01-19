-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
/*
EXEC ConsultarEstadisticaJugador 1
select * from torneoequipojugador where idtorneo = 1 and idjugador = 48
select * from equipo where idequipo=12
select * from jornadapartidojugador where idjugador = 48
*/
ALTER PROCEDURE ConsultarEstadisticaJugador
	@pnIdTorneo		int
AS
BEGIN

	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;



	--SELECT JUG.IdJugador,E.Nombre AS Equipo,JUG.Nombre,
	--	PartidosJugados = SUM(CONVERT(INT,JPJ.Jugo)),
	--    Goles = SUM(ISNULL(GOL.GolesJugador,0)),
	--    Amonestaciones = COUNT(JAM.IdTorneo),
	--    Expulsiones = COUNT(JEX.IdTorneo)	    
	--FROM dbo.Jugador		         JUG
	--INNER JOIN JornadaPartidoJugador JPJ ON (JPJ.IdTorneo = @pnIdTorneo	 AND JPJ.idjugador = JUG.IdJugador)
	--INNER JOIN JornadaPartidoJugador GOL ON (JPJ.idTorneo = GOL.idTorneo AND JPJ.idEquipo = GOL.idEquipo AND JPJ.IdJugador = GOL.IdJugador)
	--INNER JOIN Equipo				E	ON (JPJ.IdEquipo = E.idEquipo)
	--LEFT JOIN JornadaPartidoJugador JAM ON (JAM.recibioTarjetaAmarilla = @pnIdTorneo	 AND GOL.idTorneo = JAM.idTorneo AND GOL.idEquipo = JAM.idEquipo AND GOL.IdJugador = JAM.IdJugador)
	--LEFT JOIN JornadaPartidoJugador JEX ON (JEX.RecibioTarjetaRoja = @pnIdTorneo	 AND JAM.idTorneo = JEX.idTorneo AND JAM.idEquipo = JEX.idEquipo AND JAM.IdJugador = JEX.IdJugador)
	--WHERE JUG.Activo = 1	
	--GROUP BY JUG.IdJugador,E.Nombre,JUG.Nombre, JPJ.idTorneo, JPJ.idEquipo, JPJ.IdJugador 	  
	--ORDER BY Goles DESC,Equipo


 SELECT J.IdJugador,JPJ.NombreEquipo  AS Equipo,
      J.Nombre
      ,ISNULL((SELECT	COUNT(1)  a
		FROM	JornadaPartidoJugador
		WHERE   jugo = 1
			AND idTorneo = JPJ.Idtorneo
			AND IdJugador = JPJ.IdJugador
			AND idEquipo = JPJ.IdEquipo),0) AS [PartidosJugados]
      ,ISNULL(SUM(JPJ.GolesJugador),0) AS [Goles]
      ,ISNULL((SELECT	COUNT(1)  a
		FROM	JornadaPartidoJugador
		WHERE   recibioTarjetaAmarilla = 1
			AND idTorneo = JPJ.Idtorneo
			AND IdJugador = JPJ.IdJugador
			AND idEquipo = JPJ.IdEquipo),0) AS [Amonestaciones]
      ,ISNULL((SELECT	COUNT(1)  a
		FROM	JornadaPartidoJugador
		WHERE   RecibioTarjetaRoja = 1
			AND idTorneo = JPJ.Idtorneo
			AND IdJugador = JPJ.IdJugador
			AND idEquipo = JPJ.IdEquipo),0) AS [Expulsiones]
	  FROM  dbo.Jugador				J
	  LEFT JOIN	(SELECT a.*,E.Nombre AS NombreEquipo 
				 FROM JornadaPartidoJugador     A
				 INNER JOIN Equipo				E	ON (A.IdEquipo = E.idEquipo)
				 WHERE IdTorneo = @pnIdTorneo)	JPJ
		ON	JPJ.idjugador = J.IdJugador
	  WHERE J.Activo = 1 AND JPJ.NombreEquipo IS NOT NULL
	  GROUP BY J.IdJugador,JPJ.NombreEquipo,JPJ.IdTorneo, j.nombre,JPJ.IdJugador,JPJ.IdEquipo
	  ORDER BY 5 DESC, 4 ASC, 2 ASC

END

