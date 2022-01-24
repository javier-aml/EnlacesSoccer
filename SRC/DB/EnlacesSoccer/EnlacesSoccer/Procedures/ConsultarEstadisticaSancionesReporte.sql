
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
--ConsultarEstadisticaSancionesReporte 1
CREATE PROCEDURE ConsultarEstadisticaSancionesReporte
	@pnIdTorneo		INT--,
	--@pnIdJornada	INT
AS
BEGIN

	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT distinct SA.IdTorneo,
			SA.IdEquipo,
			SA.IdJornada,
			SA.IdJugador,
			'Jornada ' +  CONVERT(VARCHAR,SA.IdJornada) AS Jornada,
			EQ.Nombre AS Equipo,
			JUG.Nombre AS Jugador,
			SUM(SA.JuegosSuspendido) AS [Juegos suspendidos],
			SUM(SA.JuegosPendientes) AS [Juegos pendientes],
			TS.Descripcion AS Descripción,
			TS.Clave 
	FROM	Sancion		SA
	JOIN    Equipo		EQ
		ON	SA.IdEquipo = EQ.IdEquipo
	JOIN	Jugador		JUG
		ON	SA.IdJugador = JUG.IdJugador
	JOIN    TipoSancion TS
		ON	SA.IdTipoSancion = TS.IdTipoSancion
	WHERE	IdTorneo = @pnIdTorneo
		--AND IdJornada = @pnIdJornada
		AND SA.Activa = 1
	GROUP BY SA.IdTorneo,SA.IdEquipo,SA.IdJornada,SA.IdJugador,EQ.Nombre,JUG.Nombre,TS.Descripcion,TS.Clave
END
GO



