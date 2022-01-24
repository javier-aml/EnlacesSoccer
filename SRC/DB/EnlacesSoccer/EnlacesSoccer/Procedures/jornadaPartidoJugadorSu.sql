-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE jornadaPartidoJugadorSu
	@nIdTorneo					TINYINT,
	@nIdJornada					TINYINT,
	@nIdEquipo					TINYINT,
	@nIdJugador					TINYINT,
	@nGolesJugador				TINYINT,
	@nRecibioTarjetaAmarilla	BIT,
	@nRecibioTarjetaRoja		BIT,
	@sNombrePcMod				VARCHAR(50),
	@nClaUsuarioMod				TINYINT
	
AS
BEGIN
SET NOCOUNT ON;
	--DECLARACION DE VARIABLES
	DECLARE @tFechaActual	DATETIME	SET @tFechaActual = GETDATE()

	UPDATE dbo.[JornadaPartidoJugador]
	SET		GolesJugador			= @nGolesJugador
           ,RecibioTarjetaAmarilla	= @nRecibioTarjetaAmarilla
           ,RecibioTarjetaRoja		= @nRecibioTarjetaRoja
           ,FechaUltimaMod			= @tFechaActual
           ,NombrePcMod				= @sNombrePcMod
           ,ClaUsuarioMod			= @nClaUsuarioMod
	WHERE	IdTorneo	= @nIdTorneo
		AND	IdJornada	= @nIdJornada
		AND IdEquipo	= @nIdEquipo
		AND IdJugador	= @nIdJugador
END

