---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,> 
--exec jugadoresEquipoSel @pnIdLiga = 1, @nIdTorneo = 2, @nIdJornada = 2, @nIdEquipo1 = 1, @nIdEquipo2 = 6
-- =============================================
ALTER PROCEDURE [dbo].[jugadoresEquipoSel]
	@pnIdLiga	INT=1,
	@nIdTorneo	TINYINT,
	@nIdJornada	TINYINT,
	@nIdEquipo1	TINYINT,
	@nIdEquipo2	TINYINT,
	@nOpcion	TINYINT = 0
AS
BEGIN
SET NOCOUNT ON
	
	SELECT	jp.GolesEquipo1
			,jp.GolesEquipo2
			,jp.RecibioTarjetaAEquipo1
			,jp.RecibioTarjetaAEquipo2
			,jp.RecibioTarjetaREquipo1
			,jp.RecibioTarjetaREquipo2
			,jp.GanaEnPenales1 
			,jp.GanaEnPenales2
			,jp.Jugado
			,jp.FechaHora
			,jp.IdArbitro
			,ISNULL(jp.Observaciones,'')AS Observaciones
			,eq1.Nombre AS NombreEquipo1
			,eq2.Nombre AS NombreEquipo2
			,CONVERT(CHAR(11), jp.FechaHora, 113) AS Fecha
			,CONVERT(CHAR(5), jp.FechaHora, 108) AS Hora
			,ISNULL(ja.Asistio,0) AS AsistioEq1
			,ISNULL(ja2.Asistio,0) AS AsistioEq2
	FROM	dbo.JornadaPartido jp
	LEFT JOIN	dbo.Equipo eq1
	ON	jp.IdLiga = eq1.IdLiga
	AND jp.IdEquipo1 = eq1.IdEquipo
	LEFT JOIN	dbo.Equipo eq2
	ON	jp.IdLiga = eq2.IdLiga
	AND jp.IdEquipo2 = eq2.IdEquipo
	LEFT JOIN dbo.JornadaAsistencia ja
	ON	jp.IdEquipo1 = ja.IdEquipo
	AND	jp.IdJornada = ja.IdJOrnada
	AND jp.IdLiga = ja.IdLiga
	AND jp.IdTorneo = ja.IdTorneo
	LEFT JOIN dbo.JornadaAsistencia ja2
	ON	jp.IdEquipo2 = ja2.IdEquipo
	AND	jp.IdJornada = ja.IdJOrnada
	AND jp.IdLiga = ja.IdLiga
	AND jp.IdTorneo = ja.IdTorneo
	WHERE	jp.IdLiga   = @pnIdLiga
		AND jp.IdTorneo = @nIdTorneo
		AND jp.IdJornada = @nIdJornada
		AND jp.IdEquipo1 = @nIdEquipo1
		AND jp.IdEquipo2 = @nIdEquipo2
	
	IF EXISTS (	SELECT	1
				FROM	dbo.JornadaPartidoJugador 
				WHERE	IdLiga   = @pnIdLiga
				    AND IdTorneo = @nIdTorneo 
					AND IdJornada = @nIdJornada 
					AND IdEquipo = @nIdEquipo1)
	BEGIN
		SELECT	tej.NumeroJugador,
				j.Nombre,
				jpj.GolesJugador,
				jpj.RecibioTarjetaAmarilla,
				jpj.RecibioTarjetaRoja,
				jpj.IdJugador,
				jpj.Jugo
		FROM	dbo.JornadaPartidoJugador jpj
		JOIN dbo.TorneoEquipoJugador  tej
			ON	jpj.IdLiga = tej.IdLiga
			AND jpj.IdTorneo = tej.IdTorneo
			AND	jpj.IdEquipo = tej.IdEquipo
			AND	jpj.IdJugador = tej.IdJugador
		JOIN dbo.Jugador j
			ON	jpj.IdLiga = j.IdLiga
			AND jpj.IdJugador = j.IdJugador
		WHERE	jpj.IdLiga = @pnIdLiga
			AND jpj.IdTorneo = @nIdTorneo
			AND jpj.IdJornada = @nIdJornada
			AND	jpj.IdEquipo = @nIdEquipo1
			AND j.Activo = 1
		ORDER BY j.Nombre
	END
	ELSE
	BEGIN
		SELECT	tej.NumeroJugador,
				j.Nombre
				,0 AS GolesJugador
				,CONVERT(BIT, 0) AS RecibioTarjetaAmarilla
				,CONVERT(BIT, 0) AS RecibioTarjetaRoja
				,j.IdJugador
				,CONVERT(BIT, 1) AS Jugo
		FROM	dbo.TorneoEquipoJugador  tej
		LEFT JOIN dbo.Jugador 	j
			ON	tej.IdLiga = j.IdLiga AND tej.IdJugador = j.IdJugador
		WHERE	tej.IdLiga = @pnIdLiga
			AND tej.IdTorneo = @nIdTorneo
			AND	tej.IdEquipo = @nIdEquipo1
			AND Activo = 1
		ORDER BY j.Nombre		
	END
	
	IF EXISTS (	SELECT	1
				FROM	dbo.JornadaPartidoJugador 
				WHERE	IdLiga = @pnIdLiga
					AND IdTorneo = @nIdTorneo 
					AND IdJornada = @nIdJornada 
					AND IdEquipo = @nIdEquipo2)
	BEGIN		
		SELECT	tej.NumeroJugador,
				j.Nombre,
				jpj.GolesJugador,
				jpj.RecibioTarjetaAmarilla,
				jpj.RecibioTarjetaRoja,
				jpj.IdJugador,
				jpj.Jugo
		FROM	dbo.JornadaPartidoJugador jpj
		LEFT JOIN dbo.TorneoEquipoJugador  tej
			ON	jpj.IdLiga = tej.IdLiga
			AND jpj.IdTorneo = tej.IdTorneo
			AND	jpj.IdEquipo = tej.IdEquipo
			AND	jpj.IdJugador = tej.IdJugador
		LEFT JOIN dbo.Jugador j
			ON	jpj.IdLiga = j.IdLiga AND jpj.IdJugador = j.IdJugador
		WHERE	jpj.IdLiga = @pnIdLiga
			AND jpj.IdTorneo = @nIdTorneo
			AND jpj.IdJornada = @nIdJornada
			AND	jpj.IdEquipo = @nIdEquipo2
			AND j.Activo = 1
		ORDER BY j.Nombre
	END
	ELSE
	BEGIN
		SELECT	tej.NumeroJugador,
				j.Nombre
				,0 AS GolesJugador
				,CONVERT(BIT, 0) AS RecibioTarjetaAmarilla
				,CONVERT(BIT, 0) AS RecibioTarjetaRoja
				,j.IdJugador
				,CONVERT(BIT, 1) AS Jugo
		FROM	dbo.TorneoEquipoJugador  tej
		LEFT JOIN dbo.Jugador 	j
			ON	tej.IdLiga = j.IdLiga AND tej.IdJugador = j.IdJugador
		WHERE	tej.IdLiga = @pnIdLiga
			AND	tej.IdTorneo = @nIdTorneo
			AND	tej.IdEquipo = @nIdEquipo2
			AND Activo = 1
		ORDER BY j.Nombre
	END

SET NOCOUNT OFF
END

