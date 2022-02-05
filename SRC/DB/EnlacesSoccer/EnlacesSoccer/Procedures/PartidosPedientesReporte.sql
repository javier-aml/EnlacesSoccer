---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,> 
--exec PartidosPedientesReporte @pnIdLiga = 1, @nIdTorneo = 5, @nIdJornada = 11, @nParaJunta = 0
-- =============================================

ALTER PROCEDURE [dbo].[PartidosPedientesReporte]
	@pnIdLiga	INT,
	@nIdTorneo	INT,
	@nIdJornada	INT,
	@nParaJunta	BIT
AS
BEGIN
	SET NOCOUNT ON;
	
	IF @nParaJunta = 1
	BEGIN
		SELECT	eq1.Nombre AS NombreEquipo1, 
				'vs.' AS Resultado, 
				eq2.Nombre AS NombreEquipo2,
				' ' AS Fecha,
				' ' AS Hora
		FROM	dbo.JornadaPartido jp
		LEFT JOIN	dbo.Equipo eq1
		ON	jp.IdLiga = eq1.IdLiga AND jp.IdEquipo1 = eq1.IdEquipo
		LEFT JOIN	dbo.Equipo eq2
		ON	jp.IdLiga = eq2.IdLiga AND jp.IdEquipo2 = eq2.IdEquipo
		WHERE   jp.IdLiga   = @pnIdLiga
			AND IdTorneo = @nIdTorneo
			AND IdJornada < @nIdJornada
			AND IdEquipo1 != 0
			AND IdEquipo2 != 0
			AND	Jugado = 0
			AND Programado = 0
		ORDER BY Resultado DESC, Fecha ASC, Hora ASC
	END
	ELSE
	BEGIN
		SELECT	eq1.Nombre AS NombreEquipo1, 
				'vs.' AS Resultado, 
				eq2.Nombre AS NombreEquipo2,
				CONVERT(CHAR(11), jp.FechaHora, 113) AS Fecha,
				CONVERT(CHAR(5), jp.FechaHora, 108) AS Hora
		FROM	dbo.JornadaPartido jp
		LEFT JOIN	dbo.Equipo eq1
		ON	jp.IdLiga = eq1.IdLiga AND jp.IdEquipo1 = eq1.IdEquipo
		LEFT JOIN	dbo.Equipo eq2
		ON	jp.IdLiga = eq2.IdLiga AND jp.IdEquipo2 = eq2.IdEquipo
		WHERE	jp.IdLiga   = @pnIdLiga
			AND IdTorneo = @nIdTorneo
			AND IdJornada < @nIdJornada
			AND IdEquipo1 != 0
			AND IdEquipo2 != 0
			AND	Jugado = 0
			AND Programado = 1
		ORDER BY Resultado DESC, Fecha ASC, Hora ASC
	END
END

