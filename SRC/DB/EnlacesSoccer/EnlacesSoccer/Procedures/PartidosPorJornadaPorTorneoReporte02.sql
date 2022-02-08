---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

ALTER PROCEDURE [dbo].[PartidosPorJornadaPorTorneoReporte02]
	@pnIdLiga	INT=1,
	@nIdTorneo	INT,
	@nIdJornada	INT,
	@nIdEquipo	INT = 0
AS
BEGIN
	SELECT	idJornada, jp.idEquipo1, eq1.Nombre AS NombreEquipo1, 
				CASE Jugado 
					WHEN 0 THEN 'vs.'
					ELSE CONVERT(VARCHAR, GolesEquipo1)+' - '+CONVERT(VARCHAR, GolesEquipo2)
				END AS Resultado,
				 jp.idEquipo2,  
				eq2.Nombre AS NombreEquipo2,
				CONVERT(CHAR(11), jp.FechaHora, 113) AS Fecha,
				CONVERT(CHAR(5), jp.FechaHora, 108)  AS Hora,
				jp.jugado, jp.programado
		FROM	dbo.JornadaPartido jp
		LEFT JOIN	dbo.Equipo eq1
		ON	jp.IdLiga = eq1.IdLiga AND jp.IdEquipo1 = eq1.IdEquipo
		LEFT JOIN	dbo.Equipo eq2
		ON	jp.IdLiga = eq2.IdLiga AND jp.IdEquipo2 = eq2.IdEquipo
		WHERE	jp.IdLiga  = @pnIdLiga
			AND IdTorneo = @nIdTorneo
			AND @nIdJornada in ( 0, IdJornada )
			and  @nIdEquipo in ( 0, jp.idEquipo1, jp.idEquipo2)
			AND IdEquipo1 != 0
			AND IdEquipo2 != 0
	UNION
		SELECT	idJornada,  jp.idEquipo1, 'Descansa' AS NombreEquipo1, 
				' ' AS Resultado,
				 jp.idEquipo2, 
				CASE
					WHEN IdEquipo1 = 0	THEN eq2.Nombre
					WHEN IdEquipo2 = 0	THEN eq1.Nombre
				END AS NombreEquipo2,
				' ' AS Fecha,
				' ' AS Hora,
				jp.jugado, jp.programado
		FROM	dbo.JornadaPartido jp
		LEFT JOIN	dbo.Equipo eq1
		ON	jp.IdLiga = eq1.IdLiga AND jp.IdEquipo1 = eq1.IdEquipo
		LEFT JOIN	dbo.Equipo eq2
		ON	jp.IdLiga = eq2.IdLiga AND jp.IdEquipo2 = eq2.IdEquipo
		WHERE	jp.IdLiga  = @pnIdLiga
			AND IdTorneo = @nIdTorneo
			AND @nIdJornada in ( 0, IdJornada )
			AND (IdEquipo1 = 0 OR IdEquipo2 = 0)
		and  @nIdEquipo in ( 0, jp.idEquipo1, jp.idEquipo2)
	ORDER BY idJornada, Resultado DESC, Fecha ASC, Hora ASC

end

