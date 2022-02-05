
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
ALTER PROCEDURE [dbo].[ActualizaEstadisticaProceso]
(
@IdLiga	  INT,
@IdTorneo TINYINT,
@IdJornada TINYINT,
@IdEquipo TINYINT
)
AS
BEGIN
	
	DECLARE @PartidosJugados TINYINT
	DECLARE @PartidosGanados TINYINT
	DECLARE @PartidosEmpatados TINYINT
	DECLARE @PartidosPerdidos TINYINT
	DECLARE @GolesFavor SMALLINT
	DECLARE @GolesContra SMALLINT
	DECLARE @DiferenciaGoles SMALLINT
	DECLARE @Puntos TINYINT
	DECLARE @PuntosFairPlay NUMERIC(3,1)
	DECLARE @PuntosDescontadosFairPlay NUMERIC(3,1)
	DECLARE @PuntosDescontadosJunta NUMERIC(3,1)
	
	

	--INICIALIZA LAS VARIABLES	A 0
	SET @PartidosJugados = 0
	SET @PartidosGanados = 0
	SET @PartidosEmpatados = 0
	SET @PartidosPerdidos = 0
	SET @GolesFavor = 0
	SET @GolesContra  = 0
	SET @DiferenciaGoles = 0
	SET @Puntos = 0
	SET @PuntosFairPlay = 0
	SET @PuntosDescontadosFairPlay = 0
	SET @PuntosDescontadosJunta = 0

	
		
	
	SELECT @PartidosJugados = COUNT(1)
	FROM dbo.JornadaPartido
	WHERE IdLiga = @IdLiga AND IdTorneo = @IdTorneo AND Jugado = 1 AND (IdEquipo1 = @IdEquipo OR IdEquipo2 = @IdEquipo) AND IdJornada <= @IdJornada

	
	

	SELECT @PartidosGanados = COUNT(1)
	FROM dbo.JornadaPartido
	WHERE IdLiga = @IdLiga AND IdTorneo = @IdTorneo AND Jugado = 1 
	AND ((IdEquipo1 = @IdEquipo AND GolesEquipo1 > GolesEquipo2) OR (IdEquipo2 = @IdEquipo AND GolesEquipo2 > GolesEquipo1)) 
	AND IdJornada <= @IdJornada

	
	
	
	SELECT @PartidosEmpatados = COUNT(1)
	FROM dbo.JornadaPartido
	WHERE IdLiga = @IdLiga AND IdTorneo = @IdTorneo AND Jugado = 1 
	AND GolesEquipo1 = GolesEquipo2 
	AND (IdEquipo1 = @IdEquipo OR IdEquipo2 = @IdEquipo)
	AND IdJornada <= @IdJornada

	
	
	SELECT @PartidosPerdidos = COUNT(1)
	FROM dbo.JornadaPartido
	WHERE IdLiga = @IdLiga AND IdTorneo = @IdTorneo AND Jugado = 1 
	AND ((IdEquipo1 = @IdEquipo AND GolesEquipo1 < GolesEquipo2) OR (IdEquipo2 = @IdEquipo AND GolesEquipo2 < GolesEquipo1)) 
	AND IdJornada <= @IdJornada

	
	
	SELECT @GolesFavor = ISNULL(SUM(GolesEquipo1),0)
	FROM dbo.JornadaPartido
	WHERE IdLiga = @IdLiga AND IdTorneo = @IdTorneo AND Jugado = 1 
	AND IdEquipo1 = @IdEquipo
	AND IdJornada <= @IdJornada
	
	SELECT @GolesFavor = ISNULL(SUM(GolesEquipo2),0)	+ @GolesFavor
	FROM dbo.JornadaPartido
	WHERE IdLiga = @IdLiga AND IdTorneo = @IdTorneo AND Jugado = 1 
	AND IdEquipo2 = @IdEquipo
	AND IdJornada <= @IdJornada
	
	
	
	
	SELECT @GolesContra = ISNULL(SUM(GolesEquipo2),0)						
	FROM dbo.JornadaPartido
	WHERE IdLiga = @IdLiga AND IdTorneo = @IdTorneo AND Jugado = 1 
	AND IdEquipo1 = @IdEquipo
	AND IdJornada <= @IdJornada
	
	SELECT @GolesContra = ISNULL(SUM(GolesEquipo1),0) + @GolesContra
	FROM dbo.JornadaPartido
	WHERE IdLiga = @IdLiga AND IdTorneo = @IdTorneo AND Jugado = 1 
	AND IdEquipo2 = @IdEquipo
	AND IdJornada <= @IdJornada
	
	
	
	SELECT @DiferenciaGoles = @GolesFavor - @GolesContra
	
	
	
	SELECT @Puntos = (@PartidosGanados * 3) + (@PartidosEmpatados * 1) + (@PartidosPerdidos * 0)
	
	
	
	SELECT @PuntosFairPlay = COUNT(1) * .5						    
	FROM dbo.JornadaPartido
	WHERE IdLiga = @IdLiga AND IdTorneo = @IdTorneo AND Jugado = 1 
	AND ((IdEquipo1 = @IdEquipo AND RecibioTarjetaAEquipo1 = 0 AND RecibioTarjetaREquipo1 = 0) OR (IdEquipo2 = @IdEquipo AND RecibioTarjetaAEquipo2 = 0 AND RecibioTarjetaREquipo2 = 0)) 
	AND IdJornada <= @IdJornada
	
	
	
	
	SELECT @PuntosDescontadosFairPlay = COUNT(1) * .5								    
	FROM dbo.JornadaPartido
	WHERE IdLiga = @IdLiga AND IdTorneo = @IdTorneo AND Jugado = 1 
	AND ((IdEquipo1 = @IdEquipo AND RecibioTarjetaREquipo1 = 1) OR (IdEquipo2 = @IdEquipo AND RecibioTarjetaREquipo2 = 1)) 
	AND IdJornada <= @IdJornada
			
	
	
			
	BEGIN TRANSACTION
			
		DELETE dbo.TorneoEquipo
		WHERE IdLiga = @IdLiga AND IdTorneo = @IdTorneo AND IdEquipo = @IdEquipo AND IdJornada = @IdJornada
			
		INSERT INTO dbo.TorneoEquipo (  IdLiga, 
										IdTorneo,
										IdEquipo,
										IdJornada,
										PartidosJugados,
										PartidosGanados,
										PartidosEmpatados,
										PartidosPerdidos,
										GolesFavor,
										GolesContra,
										DiferenciaGoles,
										Puntos,
										PuntosFairPlay,
										PuntosDescontadosFairPlay,
										PuntosDescontadosJunta,
										FechaUltimaMod,
										NombrePcMod,
										ClaUsuarioMod) 										
		SELECT  IdLiga = @IdLiga, 
				IdTorneo = @IdTorneo,
				IdEquipo = @IdEquipo,
				IdJornada = @IdJornada,
				PartidosJugados = @PartidosJugados,
				PartidosGanados = @PartidosGanados,
				PartidosEmpatados = @PartidosEmpatados,
				PartidosPerdidos = @PartidosPerdidos,
				GolesFavor = @GolesFavor,
				GolesContra = @GolesContra,
				DiferenciaGoles = @DiferenciaGoles,
				Puntos =  @Puntos,
				PuntosFairPlay = @PuntosFairPlay,
				PuntosDescontadosFairPlay = @PuntosDescontadosFairPlay,
				PuntosDescontadosJunta = 0,
				FechaUltimaMod = dbo.ObtieneFechaActual(),
				NombrePcMod = HOST_NAME(),
				ClaUsuarioMod = 0	
			
	COMMIT TRANSACTION

END