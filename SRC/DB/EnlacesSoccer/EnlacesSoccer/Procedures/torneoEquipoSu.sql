SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE torneoEquipoSu
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
	DECLARE @tFechaActual	DATETIME	SET @tFechaActual = GETDATE()
										
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
	WHERE IdTorneo					= @nIdTorneo
	AND	IdEquipo					= @nIdEquipo
	AND	IdJornada					= @nIdJornada
END
GO