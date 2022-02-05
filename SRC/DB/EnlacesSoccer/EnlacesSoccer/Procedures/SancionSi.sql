---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,> exec PartidosPorJornadaPorTorneoReporte 1,2
-- =============================================

ALTER PROCEDURE [dbo].[SancionSi]
	@pnIdLiga	INT,
	@nIdTorneo	TINYINT,
	@nIdJornada	TINYINT,
	@nIdEquipo	TINYINT,
	@nIdJugador	SMALLINT,
	@nIdTipoSancion	TINYINT,
	@nJuegosSuspendido TINYINT,
	@nJuegosPendientes TINYINT,
	@nClaUsuarioMod TINYINT,
	@sNombrePcMod	VARCHAR(50)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @tFecha	DATETIME SET @tFecha = dbo.ObtieneFechaActual()

	INSERT INTO Sancion
           (IdLiga
		   ,IdTorneo
           ,IdEquipo
           ,IdJornada
           ,IdJugador
           ,IdTipoSancion
           ,JuegosSuspendido
           ,JuegosPendientes
           ,Activa
           ,FechaUltimaMod
           ,NombrePcMod
           ,ClaUsuarioMod)
     SELECT IdLiga = @pnIdLiga
		   ,IdTorneo = @nIdTorneo
           ,IdEquipo = @nIdEquipo
           ,IdJornada = @nIdJornada
           ,IdJugador = @nIdJugador
           ,IdTipoSancion = @nIdTipoSancion
           ,JuegosSuspendido = @nJuegosSuspendido
           ,JuegosPendientes = @nJuegosPendientes
           ,Activa = 1
           ,FechaUltimaMod = @tFecha
           ,NombrePcMod = @sNombrePcMod
           ,ClaUsuarioMod = @nClaUsuarioMod

	SET NOCOUNT OFF
END

