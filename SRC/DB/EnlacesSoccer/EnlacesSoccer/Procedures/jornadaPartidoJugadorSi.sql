---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE jornadaPartidoJugadorSi
	@pnIdLiga					INT,
	@nIdTorneo					TINYINT,
	@nIdJornada					TINYINT,
	@nIdEquipo					TINYINT,
	@nIdJugador					SMALLINT,
	@nGolesJugador				TINYINT,
	@nRecibioTarjetaAmarilla	BIT,
	@nRecibioTarjetaRoja		BIT,
	@nJugo						BIT,
	@sNombrePcMod				VARCHAR(50),
	@nClaUsuarioMod				TINYINT
AS
BEGIN
SET NOCOUNT ON;
	--DECLARACION DE VARIABLES
	DECLARE @tFechaActual	DATETIME	SET @tFechaActual = dbo.ObtieneFechaActual()
	
	IF EXISTS (	SELECT	1
				FROM	dbo.JornadaPartidoJugador
				WHERE	IdLiga = @pnIdLiga
					AND IdTorneo = @nIdTorneo
					AND	IdJornada = @nIdJornada
					AND IdEquipo = @nIdEquipo
					AND	IdJugador = @nIdJugador )
	BEGIN
		UPDATE [dbo].[JornadaPartidoJugador]
		SET		GolesJugador			= @nGolesJugador
				,RecibioTarjetaAmarilla	= @nRecibioTarjetaAmarilla
				,RecibioTarjetaRoja		= @nRecibioTarjetaRoja
				,Jugo					= @nJugo
				,FechaUltimaMod			= @tFechaActual
				,NombrePcMod			= @sNombrePcMod
				,ClaUsuarioMod			= @nClaUsuarioMod
		WHERE	IdLiga		= @pnIdLiga
			AND IdTorneo	= @nIdTorneo
			AND	IdJornada	= @nIdJornada
			AND IdEquipo	= @nIdEquipo
			AND IdJugador	= @nIdJugador
	END
	ELSE
	BEGIN											
		INSERT INTO dbo.JornadaPartidoJugador
			(IdLiga
			,IdTorneo
			,IdJornada
			,IdEquipo
			,IdJugador
			,GolesJugador
			,RecibioTarjetaAmarilla
			,RecibioTarjetaRoja
			,Jugo       
			,FechaUltimaMod
			,NombrePcMod
			,ClaUsuarioMod)
	SELECT	IdLiga					= @pnIdLiga
		   ,IdTorneo				= @nIdTorneo
           ,IdJornada				= @nIdJornada
           ,IdEquipo				= @nIdEquipo
           ,IdJugador				= @nIdJugador
           ,GolesJugador			= @nGolesJugador
           ,RecibioTarjetaAmarilla	= @nRecibioTarjetaAmarilla
           ,RecibioTarjetaRoja		= @nRecibioTarjetaRoja
           ,Jugo					= @nJugo
           ,FechaUltimaMod			= @tFechaActual
           ,NombrePcMod				= @sNombrePcMod
           ,ClaUsuarioMod			= @nClaUsuarioMod
	END
END

