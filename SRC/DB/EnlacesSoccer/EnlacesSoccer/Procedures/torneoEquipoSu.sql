---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE torneoEquipoSu
	@pnIdLiga					INT,
	@nIdTorneo					TINYINT,
	@nIdEquipo					TINYINT,
	@nIdJornada					TINYINT,
	@nPartidosJugados			TINYINT,
	@nPartidosGanados			TINYINT,
	@nPartidosEmpatados			TINYINT,
	@nPartidosPerdidos			TINYINT,
	@nGolesFavor				SMALLINT,
	@nGolesContra				SMALLINT,
	@nDiferenciaGoles			SMALLINT,
	@nPuntos					TINYINT,
	@nPuntosFairPlay			TINYINT,
	@nPuntosDescontadosFairPlay	TINYINT,
	@nPuntosDescontadosJunta	TINYINT,
	@sNombrePcMod				VARCHAR(50),
	@nClaUsuarioMod				TINYINT
	
AS
BEGIN
SET NOCOUNT ON;
	--DECLARACION DE VARIABLES
	DECLARE @tFechaActual	DATETIME	SET @tFechaActual = dbo.ObtieneFechaActual()
										
	UPDATE TorneoEquipo
	SET	PartidosJugados				= @nPartidosJugados
       ,PartidosGanados				= @nPartidosGanados
       ,PartidosEmpatados			= @nPartidosEmpatados
       ,PartidosPerdidos			= @nPartidosPerdidos
       ,GolesFavor					= @nGolesFavor
       ,GolesContra					= @nGolesContra
       ,DiferenciaGoles				= @nDiferenciaGoles
       ,Puntos						= @nPuntos
       ,PuntosFairPlay				= @nPuntosFairPlay
       ,PuntosDescontadosFairPlay	= @nPuntosDescontadosFairPlay
       ,PuntosDescontadosJunta		= @nPuntosDescontadosJunta
       ,FechaUltimaMod				= @tFechaActual
       ,NombrePcMod					= @sNombrePcMod
       ,ClaUsuarioMod				= @nClaUsuarioMod
	WHERE IdLiga					= @pnIdLiga
	AND IdTorneo					= @nIdTorneo
	AND	IdEquipo					= @nIdEquipo
	AND	IdJornada					= @nIdJornada
END

