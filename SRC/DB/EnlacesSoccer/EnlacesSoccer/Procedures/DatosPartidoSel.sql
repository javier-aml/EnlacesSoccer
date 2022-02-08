---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[DatosPartidoSel]
	@pnIdLiga	INT=1,
	@nIdTorneo	INT,
	@nIdJornada	INT,
	@nIdEquipo1	INT,
	@nIdEquipo2	INT
AS
BEGIN
SET NOCOUNT ON
	
	SELECT	GolesEquipo1
			,GolesEquipo2
			,RecibioTarjetaAEquipo1
			,RecibioTarjetaAEquipo2
			,RecibioTarjetaREquipo1
			,RecibioTarjetaREquipo2
			,Jugado
			,FechaHora
	FROM JornadaPartido
	WHERE IdLiga = @pnIdLiga
		AND IdTorneo = @nIdTorneo
		AND IdJornada = @nIdJornada
		AND IdEquipo1 = @nIdEquipo1
		AND IdEquipo2 = @nIdEquipo2

SET NOCOUNT OFF
END

