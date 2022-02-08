
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

ALTER PROCEDURE ConsultarDetalleEstadisticaSanciones
	@IdLiga	        INT=1,
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
		ON	SA.IdLiga = TS.IdLiga AND SA.IdTipoSancion = TS.IdTipoSancion
	WHERE  SA.IdLiga = @IdLiga AND 	
		SA.IdTorneo = @pnIdTorneo
		AND SA.IdJornada = @pnIdJornada
		AND SA.IdJugador = @pnIdJugador
		AND SA.IdEquipo  = @pnIdEquipo
		AND TS.Activa = 1
	GROUP BY SA.IdTorneo,SA.IdEquipo,SA.IdJornada,SA.IdJugador,TS.Clave,TS.Descripcion,TS.JuegosSuspension
END

