USE [TorneoDEACERO]
GO
/****** Object:  StoredProcedure [dbo].[PartidosJugadosPorJornadaPorTorneo]******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Felipe Diaz Acevedo
-- Create date: 20/09/2011
-- Description:	Obtengo los partidos jugados por jornada por torneo
-- =============================================

CREATE PROCEDURE [dbo].[PartidosJugadosPorJornadaPorTorneo]
	@nIdTorneo	INT,
	@nIdJornada	INT
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT	--jp.IdEquipo1, 
			eq1.Nombre AS NombreEquipo1, 
			CASE Jugado 
				WHEN 0 THEN 'vs.'
				ELSE CONVERT(VARCHAR, GolesEquipo1)+' - '+CONVERT(VARCHAR, GolesEquipo2)
			END AS Resultado,
			--jp.IdEquipo2, 
			eq2.Nombre AS NombreEquipo2,
			jp.IdEquipo1,
			jp.IdEquipo2
	FROM	dbo.JornadaPartido jp
	LEFT JOIN	dbo.Equipo eq1
	ON	jp.IdEquipo1 = eq1.IdEquipo
	LEFT JOIN	dbo.Equipo eq2
	ON	jp.IdEquipo2 = eq2.IdEquipo
	WHERE	IdTorneo = @nIdTorneo
		AND IdJornada = @nIdJornada
		AND IdEquipo1 != 0
		AND IdEquipo2 != 0
		AND ISNULL(Jugado,0) > 0	

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
		AND ISNULL(Jugado,0) > 0
		
END
