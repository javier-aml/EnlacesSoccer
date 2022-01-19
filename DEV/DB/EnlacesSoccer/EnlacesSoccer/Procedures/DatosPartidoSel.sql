SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DatosPartidoSel]
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
	WHERE	IdTorneo = @nIdTorneo
		AND IdJornada = @nIdJornada
		AND IdEquipo1 = @nIdEquipo1
		AND IdEquipo2 = @nIdEquipo2

SET NOCOUNT OFF
END
