SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE jornadaPartidoSi
	@nIdTorneo					TINYINT,
	@nIdJornada					TINYINT,
	@nIdEquipo1					TINYINT,
	@nIdEquipo2					TINYINT,
	@nGolesEquipo1				TINYINT,
	@nGolesEquipo2				TINYINT,
	@nRecibioTarjetaAEquipo1	BIT,
	@nRecibioTarjetaAEquipo2	BIT,
	@nRecibioTarjetaREquipo1	BIT,
	@nRecibioTarjetaREquipo2	BIT,
	@nJugado					BIT,
	@nIdArbitro					TINYINT,
	@sNombrePcMod				VARCHAR(50),
	@nClaUsuarioMod				TINYINT
	
AS
BEGIN
SET NOCOUNT ON;
	--DECLARACION DE VARIABLES
	DECLARE @tFechaActual	DATETIME	SET @tFechaActual = GETDATE()
										
	INSERT INTO JornadaPartido
		   (IdTorneo
           ,IdJornada
           ,IdEquipo1
           ,IdEquipo2
           ,GolesEquipo1
           ,GolesEquipo2
           ,RecibioTarjetaAEquipo1
           ,RecibioTarjetaAEquipo2
           ,RecibioTarjetaREquipo1
           ,RecibioTarjetaREquipo2
           ,Jugado
           ,IdArbitro
           ,FechaHora
           ,FechaUltimaMod
           ,NombrePcMod
           ,ClaUsuarioMod)
	SELECT	IdTorneo				= @nIdTorneo
           ,IdJornada				= @nIdJornada
           ,IdEquipo1				= @nIdEquipo1
           ,IdEquipo2				= @nIdEquipo2
           ,GolesEquipo1			= @nGolesEquipo1
           ,GolesEquipo2			= @nGolesEquipo2
           ,RecibioTarjetaAEquipo1	= @nRecibioTarjetaAEquipo1
           ,RecibioTarjetaAEquipo2	= @nRecibioTarjetaAEquipo2
           ,RecibioTarjetaREquipo1	= @nRecibioTarjetaREquipo1
           ,RecibioTarjetaREquipo2	= @nRecibioTarjetaREquipo2
           ,Jugado					= @nJugado
           ,IdArbitro				= @nIdArbitro
           ,FechaHora				= @tFechaActual
           ,FechaUltimaMod			= @tFechaActual
           ,NombrePcMod				= @sNombrePcMod
           ,ClaUsuarioMod			= @nClaUsuarioMod
END
GO