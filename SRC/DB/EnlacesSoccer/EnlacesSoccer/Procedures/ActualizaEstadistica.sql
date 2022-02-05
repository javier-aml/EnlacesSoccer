
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
ALTER PROCEDURE dbo.ActualizaEstadistica
(
@IdLiga	   INT,
@IdTorneo  TINYINT,
@IdJornada TINYINT,
@IdEquipo  TINYINT
)
AS
BEGIN

	--Obtengo la última jornada jugada por este equipo
	--SELECT @IdJornada = MAX(IdJornada)
	--FROM JornadaPartido
	--WHERE IdTorneo = @IdTorneo AND (IdEquipo1 = @IdEquipo OR IdEquipo2 = @IdEquipo) AND Jugado = 1
	
	
	DECLARE @PartidosJugados TINYINT
	DECLARE @PartidosGanados TINYINT
	DECLARE @PartidosEmpatados TINYINT
	DECLARE @PartidosGanadosEnPenales TINYINT
	DECLARE @PartidosPerdidos TINYINT
	DECLARE @GolesFavor SMALLINT
	DECLARE @GolesContra SMALLINT
	DECLARE @DiferenciaGoles SMALLINT
	DECLARE @Puntos TINYINT
	DECLARE @PuntosFairPlay NUMERIC(2,1)
	DECLARE @PuntosDescontadosFairPlay NUMERIC(2,1)
	DECLARE @PuntosDescontadosJunta NUMERIC(2,1)
	
	DECLARE @ConfigPuntosPorJuegoGanado AS NUMERIC(2,1) 
	DECLARE @ConfigPuntosPorJuegoEmpatado AS NUMERIC(2,1) 
	DECLARE @ConfigPuntosPorJuegoPerdido AS NUMERIC(2,1) 
	DECLARE @ConfigPuntosFairPlay AS NUMERIC(2,1) 
	DECLARE @ConfigPuntosDescontadosFairPlay AS NUMERIC(2,1) 
	DECLARE @ConfigPuntosDescontadosJunta AS NUMERIC(2,1)

	
	SET @ConfigPuntosPorJuegoGanado = (SELECT ValorNumerico FROM dbo.Configuracion WHERE IdLiga = @IdLiga AND IdConfiguracion = 3)
	SET @ConfigPuntosPorJuegoEmpatado = (SELECT ValorNumerico FROM dbo.Configuracion WHERE IdLiga = @IdLiga AND IdConfiguracion = 4)
	SET @ConfigPuntosPorJuegoPerdido =(SELECT ValorNumerico FROM dbo.Configuracion WHERE IdLiga = @IdLiga AND IdConfiguracion = 5)
	
	SET @ConfigPuntosFairPlay =(SELECT ValorNumerico FROM dbo.Configuracion WHERE IdLiga = @IdLiga AND IdConfiguracion = 1)
	SET @ConfigPuntosDescontadosFairPlay =(SELECT ValorNumerico FROM dbo.Configuracion WHERE IdLiga = @IdLiga AND IdConfiguracion = 2)
	SET @ConfigPuntosDescontadosJunta =(SELECT ValorNumerico FROM dbo.Configuracion WHERE IdLiga = @IdLiga AND IdConfiguracion = 6)
	
	
	
		
		SET @PartidosJugados = 0
		SET @PartidosGanados = 0
		SET @PartidosEmpatados = 0
		SET @PartidosGanadosEnPenales = 0
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
			WHERE IdLiga = @IdLiga AND IdTorneo = @IdTorneo AND Jugado = 1 AND IdJornada <= @IdJornada
			AND ((IdEquipo1 = @IdEquipo AND GolesEquipo1 > GolesEquipo2) OR (IdEquipo2 = @IdEquipo AND GolesEquipo2 > GolesEquipo1))
		
			SELECT @PartidosEmpatados = COUNT(1)										
			FROM dbo.JornadaPartido
			WHERE IdLiga = @IdLiga AND IdTorneo = @IdTorneo AND Jugado = 1 AND (IdEquipo1 = @IdEquipo OR IdEquipo2 = @IdEquipo) AND IdJornada <= @IdJornada
			AND   GolesEquipo1 = GolesEquipo2
			
			SELECT @PartidosGanadosEnPenales = COUNT(1)										
			FROM dbo.JornadaPartido
			WHERE IdLiga = @IdLiga AND IdTorneo = @IdTorneo AND Jugado = 1 AND ((IdEquipo1 = @IdEquipo AND GanaEnPenales1 = 1) OR (IdEquipo2 = @IdEquipo AND GanaEnPenales2 = 1)) AND IdJornada <= @IdJornada
			AND   GolesEquipo1 = GolesEquipo2
			
			
			SELECT @PartidosPerdidos = COUNT(1)
			FROM dbo.JornadaPartido
			WHERE IdLiga = @IdLiga AND IdTorneo = @IdTorneo AND Jugado = 1 AND IdJornada <= @IdJornada
			AND ((IdEquipo1 = @IdEquipo AND GolesEquipo1 < GolesEquipo2) OR (IdEquipo2 = @IdEquipo AND GolesEquipo2 < GolesEquipo1))

				
			SELECT @GolesFavor = ISNULL(MAX(GolesFavor),0)
			FROM dbo.TorneoEquipo
			WHERE IdLiga = @IdLiga AND IdTorneo = @IdTorneo AND IdEquipo = @IdEquipo AND IdJornada < @IdJornada 
			
			
			SELECT @GolesFavor = CASE 
									WHEN  IdEquipo1 = @IdEquipo THEN @GolesFavor + GolesEquipo1																			
									WHEN  IdEquipo2 = @IdEquipo THEN @GolesFavor + GolesEquipo2
								 END
			FROM dbo.JornadaPartido
			WHERE IdLiga = @IdLiga AND IdTorneo = @IdTorneo AND Jugado = 1 AND (IdEquipo1 = @IdEquipo OR IdEquipo2 = @IdEquipo) AND IdJornada = @IdJornada

			
			
			SELECT @GolesContra = ISNULL(MAX(GolesContra),0)
			FROM dbo.TorneoEquipo
			WHERE IdLiga = @IdLiga AND IdTorneo = @IdTorneo AND IdEquipo = @IdEquipo AND IdJornada < @IdJornada 
			
			
			SELECT @GolesContra = CASE 
									WHEN  IdEquipo1 != @IdEquipo THEN @GolesContra + GolesEquipo1																			
									WHEN  IdEquipo2 != @IdEquipo THEN @GolesContra + GolesEquipo2
								 END
			FROM dbo.JornadaPartido
			WHERE IdLiga = @IdLiga AND IdTorneo = @IdTorneo AND Jugado = 1 AND (IdEquipo1 = @IdEquipo OR IdEquipo2 = @IdEquipo) AND IdJornada = @IdJornada

			
			SELECT @DiferenciaGoles = @GolesFavor - @GolesContra
			
			SELECT @Puntos = (@PartidosGanados * @ConfigPuntosPorJuegoGanado) + (@PartidosEmpatados * @ConfigPuntosPorJuegoEmpatado) + (@PartidosPerdidos * @ConfigPuntosPorJuegoPerdido) + (@PartidosGanadosEnPenales * @ConfigPuntosPorJuegoEmpatado)
			
						
			SELECT @PuntosFairPlay = ISNULL(MAX(PuntosFairPlay),0)
			FROM dbo.TorneoEquipo
			WHERE IdLiga = @IdLiga AND IdTorneo = @IdTorneo AND IdEquipo = @IdEquipo AND IdJornada < @IdJornada 
			
			IF EXISTS(SELECT 1											    
					  FROM dbo.JornadaPartido
					  WHERE IdLiga = @IdLiga AND IdTorneo = @IdTorneo AND Jugado = 1 AND IdJornada = @IdJornada
					  AND ((IdEquipo1 = @IdEquipo AND RecibioTarjetaAEquipo1 = 0 AND RecibioTarjetaREquipo1 = 0) OR (IdEquipo2 = @IdEquipo AND RecibioTarjetaAEquipo2 = 0 AND RecibioTarjetaREquipo2 = 0)))
			BEGIN
				SELECT @PuntosFairPlay = @PuntosFairPlay + @ConfigPuntosFairPlay
			END
			
			
			
			SELECT @PuntosDescontadosFairPlay = ISNULL(MAX(PuntosDescontadosFairPlay),0)
			FROM dbo.TorneoEquipo
			WHERE IdLiga = @IdLiga AND IdTorneo = @IdTorneo AND IdEquipo = @IdEquipo AND IdJornada < @IdJornada 
			
			IF EXISTS(SELECT 1
					  FROM dbo.JornadaPartido
					  WHERE IdLiga = @IdLiga AND IdTorneo = @IdTorneo AND Jugado = 1 AND IdJornada = @IdJornada
					  AND ((IdEquipo1 = @IdEquipo AND RecibioTarjetaREquipo1 = 1) OR (IdEquipo2 = @IdEquipo AND RecibioTarjetaREquipo2 = 1)))
			BEGIN
				SELECT @PuntosDescontadosFairPlay = @PuntosDescontadosFairPlay + @ConfigPuntosDescontadosFairPlay									    
			END
					  
						
			SELECT @PuntosDescontadosJunta = ISNULL(MAX(PuntosDescontadosJunta),0)
			FROM dbo.TorneoEquipo
			WHERE IdLiga = @IdLiga AND IdTorneo = @IdTorneo AND IdEquipo = @IdEquipo AND IdJornada < @IdJornada 
			
			IF EXISTS(SELECT 1			
					  FROM dbo.JornadaAsistencia
					  WHERE IdLiga = @IdLiga AND IdTorneo = @IdTorneo AND IdEquipo = @IdEquipo AND IdJornada = @IdJornada AND Asistio = 0)
			BEGIN
				SELECT @PuntosDescontadosJunta = @PuntosDescontadosJunta + @ConfigPuntosDescontadosJunta								    
			END
			
			
			
			BEGIN TRANSACTION
			
						
				
			DELETE dbo.TorneoEquipo
			WHERE IdLiga = @IdLiga AND IdTorneo = @IdTorneo AND IdEquipo = @IdEquipo AND IdJornada = @IdJornada
				
			
				
			INSERT INTO dbo.TorneoEquipo (
						IdLiga,
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
						ClaUsuarioMod
					) 
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
					PuntosDescontadosJunta = @PuntosDescontadosJunta,
					FechaUltimaMod = dbo.ObtieneFechaActual(),
					NombrePcMod = HOST_NAME(),
					ClaUsuarioMod = 0	
		
			
			COMMIT TRANSACTION

END