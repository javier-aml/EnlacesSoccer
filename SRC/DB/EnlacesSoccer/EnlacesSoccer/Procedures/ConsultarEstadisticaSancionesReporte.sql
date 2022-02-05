---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
--ConsultarEstadisticaSancionesReporte 1
ALTER PROCEDURE ConsultarEstadisticaSancionesReporte
	@pnIdLiga		INT,
	@pnIdTorneo		INT--,
	--@pnIdJornada	INT
AS
BEGIN

	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT distinct SA.IdLiga,
			SA.IdTorneo,
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
		ON	SA.IdLiga = EQ.IdLiga AND SA.IdEquipo = EQ.IdEquipo
	JOIN	Jugador		JUG
		ON	SA.IdLiga = JUG.IdLiga AND SA.IdJugador = JUG.IdJugador
	JOIN    TipoSancion TS
		ON	SA.IdLiga = TS.IdLiga AND SA.IdTipoSancion = TS.IdTipoSancion
	WHERE	SA.IdLiga = @pnIdLiga
	AND     SA.IdTorneo = @pnIdTorneo
		--AND IdJornada = @pnIdJornada
		AND SA.Activa = 1
	GROUP BY SA.IdLiga, SA.IdTorneo,SA.IdEquipo,SA.IdJornada,SA.IdJugador,EQ.Nombre,JUG.Nombre,TS.Descripcion,TS.Clave
END

