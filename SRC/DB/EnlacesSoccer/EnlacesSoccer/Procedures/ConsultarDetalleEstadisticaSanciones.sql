
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

CREATE PROCEDURE ConsultarDetalleEstadisticaSanciones
	@pnIdTorneo		INT,
	@pnIdJornada	INT,
	@pnIdEquipo		INT,
	@pnIdJugador	INT
AS
BEGIN

	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT  TS.Clave,
			TS.Descripcion AS Descripción,
			TS.JuegosSuspension AS [Juegos de suspención]
	FROM	Sancion		SA
	JOIN    TipoSancion TS
		ON	SA.IdTipoSancion = TS.IdTipoSancion
	WHERE	SA.IdTorneo = @pnIdTorneo
		AND SA.IdJornada = @pnIdJornada
		AND SA.IdJugador = @pnIdJugador
		AND SA.IdEquipo  = @pnIdEquipo
		AND TS.Activa = 1
	GROUP BY SA.IdTorneo,SA.IdEquipo,SA.IdJornada,SA.IdJugador,TS.Clave,TS.Descripcion,TS.JuegosSuspension
END
GO
