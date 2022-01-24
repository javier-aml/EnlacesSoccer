-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
/*
exec PartidosPorJornadaPorTorneo2 1,3
*/
-- =============================================

alter PROCEDURE [dbo].[PartidosPorJornadaPorTorneo2]
	@nIdTorneo	INT,
	@nIdJornada	INT
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT	eq1.Nombre AS NombreEquipo1, 
			CASE Jugado 
				WHEN 0 THEN 'vs.'
				ELSE CONVERT(VARCHAR, GolesEquipo1)+' - '+CONVERT(VARCHAR, GolesEquipo2)
			END AS Resultado,
			eq2.Nombre AS NombreEquipo2,
			jp.IdEquipo1,
			jp.IdEquipo2,
			jp.Programado,
			CONVERT(CHAR(11), jp.FechaHora, 113) AS Fecha,
			CONVERT(CHAR(5), jp.FechaHora, 108) AS Hora
	FROM	dbo.JornadaPartido jp
	LEFT JOIN	dbo.Equipo eq1
	ON	jp.IdEquipo1 = eq1.IdEquipo
	LEFT JOIN	dbo.Equipo eq2
	ON	jp.IdEquipo2 = eq2.IdEquipo
	WHERE	IdTorneo = @nIdTorneo
		AND IdJornada = @nIdJornada
		AND IdEquipo1 != 0
		AND IdEquipo2 != 0
	ORDER BY Fecha ASC, Hora ASC
	
	SELECT --eq1.Nombre, eq2.Nombre
		CASE 
		WHEN IdEquipo1 = 0	THEN eq2.Nombre
		WHEN IdEquipo2 = 0	THEN eq1.Nombre
		ELSE ''
		END AS Descansa
	FROM	dbo.JornadaPartido jp
	LEFT JOIN	dbo.Equipo eq1
	ON	jp.IdEquipo1 = eq1.IdEquipo
	LEFT JOIN	dbo.Equipo eq2
	ON	jp.IdEquipo2 = eq2.IdEquipo
	WHERE	IdTorneo = @nIdTorneo
		AND IdJornada = @nIdJornada
		AND (IdEquipo1 = 0 OR IdEquipo2 = 0)
		
END


