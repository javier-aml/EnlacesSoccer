-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,> exec PartidosPorJornadaPorTorneoReporte 1,2
-- =============================================

ALTER PROCEDURE [dbo].[PartidosPorJornadaPorTorneoReporte]
	@nIdTorneo	INT,
	@nIdJornada	INT
AS
BEGIN
	SET NOCOUNT ON;
	
	IF EXISTS (	SELECT 1 FROM dbo.JornadaPartido 
				WHERE	IdTorneo = @nIdTorneo
					AND	IdJornada = @nIdJornada
					AND	(IdEquipo1 = 0 
					  OR IdEquipo2 = 0))
	BEGIN
		SELECT	eq1.Nombre AS NombreEquipo1, 
				CASE Jugado 
					WHEN 0 THEN 'vs.'
					ELSE CONVERT(VARCHAR, GolesEquipo1)+' - '+CONVERT(VARCHAR, GolesEquipo2)
				END AS Resultado, 
				eq2.Nombre AS NombreEquipo2,
				CASE Programado
					WHEN 0 THEN 'Pendiente'
					ELSE CONVERT(CHAR(11), jp.FechaHora, 113) 
				END AS Fecha,
				CASE Programado
					WHEN 0 THEN ' '
					ELSE CONVERT(CHAR(5), jp.FechaHora, 108) 
				END AS Hora
		FROM	dbo.JornadaPartido jp
		LEFT JOIN	dbo.Equipo eq1
		ON	jp.IdEquipo1 = eq1.IdEquipo
		LEFT JOIN	dbo.Equipo eq2
		ON	jp.IdEquipo2 = eq2.IdEquipo
		WHERE	IdTorneo = @nIdTorneo
			AND IdJornada = @nIdJornada
			AND IdEquipo1 != 0
			AND IdEquipo2 != 0
	UNION
		SELECT	'Descansa' AS NombreEquipo1, 
				' ' AS Resultado,
				CASE
					WHEN IdEquipo1 = 0	THEN eq2.Nombre
					WHEN IdEquipo2 = 0	THEN eq1.Nombre
				END AS NombreEquipo2,
				' ' AS Fecha,
				' ' AS Hora
		FROM	dbo.JornadaPartido jp
		LEFT JOIN	dbo.Equipo eq1
		ON	jp.IdEquipo1 = eq1.IdEquipo
		LEFT JOIN	dbo.Equipo eq2
		ON	jp.IdEquipo2 = eq2.IdEquipo
		WHERE	IdTorneo = @nIdTorneo
			AND IdJornada = @nIdJornada
			AND (IdEquipo1 = 0 OR IdEquipo2 = 0)
--	UNION 
--		SELECT	eq1.Nombre AS NombreEquipo1, 
--				CASE Jugado 
--					WHEN 0 THEN 'vs.'
--					ELSE CONVERT(VARCHAR, GolesEquipo1)+' - '+CONVERT(VARCHAR, GolesEquipo2)
--				END AS Resultado, 
--				eq2.Nombre AS NombreEquipo2,
--				CONVERT(CHAR(11), jp.FechaHora, 113) AS Fecha,
--				CONVERT(CHAR(5), jp.FechaHora, 108) AS Hora
--		FROM	dbo.JornadaPartido jp
--		LEFT JOIN	dbo.Equipo eq1
--		ON	jp.IdEquipo1 = eq1.IdEquipo
--		LEFT JOIN	dbo.Equipo eq2
--		ON	jp.IdEquipo2 = eq2.IdEquipo
--		WHERE	IdTorneo = @nIdTorneo
--			AND IdJornada < @nIdJornada
--			AND IdEquipo1 != 0
--			AND IdEquipo2 != 0
--			AND	Jugado = 0
--			AND Programado = 0
		ORDER BY Resultado DESC, Fecha ASC, Hora ASC
	END
	ELSE
	BEGIN
		SELECT	eq1.Nombre AS NombreEquipo1, 
				CASE Jugado 
					WHEN 0 THEN 'vs.'
					ELSE CONVERT(VARCHAR, GolesEquipo1)+' - '+CONVERT(VARCHAR, GolesEquipo2)
				END AS Resultado, 
				eq2.Nombre AS NombreEquipo2,
				CASE Programado
					WHEN 0 THEN 'Pendiente'
					ELSE CONVERT(CHAR(11), jp.FechaHora, 113) 
				END AS Fecha,
				CASE Programado
					WHEN 0 THEN ' '
					ELSE CONVERT(CHAR(5), jp.FechaHora, 108) 
				END AS Hora
		FROM	dbo.JornadaPartido jp
		LEFT JOIN	dbo.Equipo eq1
		ON	jp.IdEquipo1 = eq1.IdEquipo
		LEFT JOIN	dbo.Equipo eq2
		ON	jp.IdEquipo2 = eq2.IdEquipo
		WHERE	IdTorneo = @nIdTorneo
			AND IdJornada = @nIdJornada
			AND IdEquipo1 != 0
			AND IdEquipo2 != 0
		UNION 
		SELECT	eq1.Nombre AS NombreEquipo1, 
				CASE Jugado 
					WHEN 0 THEN 'vs.'
					ELSE CONVERT(VARCHAR, GolesEquipo1)+' - '+CONVERT(VARCHAR, GolesEquipo2)
				END AS Resultado, 
				eq2.Nombre AS NombreEquipo2,
				CONVERT(CHAR(11), jp.FechaHora, 113) AS Fecha,
				CONVERT(CHAR(5), jp.FechaHora, 108) AS Hora
		FROM	dbo.JornadaPartido jp
		LEFT JOIN	dbo.Equipo eq1
		ON	jp.IdEquipo1 = eq1.IdEquipo
		LEFT JOIN	dbo.Equipo eq2
		ON	jp.IdEquipo2 = eq2.IdEquipo
		WHERE	IdTorneo = @nIdTorneo
			AND IdJornada < @nIdJornada
			AND IdEquipo1 != 0
			AND IdEquipo2 != 0
			AND	Jugado = 0
			AND Programado = 0
		ORDER BY Resultado DESC, Fecha ASC, Hora ASC
	END
END
GO