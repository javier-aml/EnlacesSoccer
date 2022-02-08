---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--EXEC [dbo].[ObtieneJugadoresCedula] @pnIdLiga = 1, @IdTorneo = 5, @IdEquipo = 54
ALTER PROCEDURE [dbo].[ObtieneJugadoresCedula]
	@pnIdLiga	INT=1,
	@IdTorneo	TINYINT,	
	@IdEquipo	TINYINT	
AS
BEGIN									
SET NOCOUNT ON

		DECLARE @Contador		 AS TINYINT
		DECLARE @TotalRegistros  AS int
		DECLARE @NumeroRegistros AS int
		DECLARE @DiferenciaRegistros AS int
		
		SET @Contador		     = 1
		SET @TotalRegistros      = 26
		SET @NumeroRegistros     = 0
		SET @DiferenciaRegistros = 0
		
		DECLARE @tmpJugadores TABLE(ID TINYINT, IdTorneo TINYINT, IdEquipo TINYINT, IdJugador SMALLINT, NumeroJugador SMALLINT, Nombre VARCHAR(100), Suspendido VARCHAR(1))

		INSERT INTO @tmpJugadores
		SELECT	ID					   = ROW_NUMBER() OVER(ORDER BY JUG.Nombre),
				TEJ.IdTorneo,
				TEJ.IdEquipo,
				TEJ.IdJugador,			
				TEJ.NumeroJugador,
				Nombre = CASE 
							WHEN LEN(JUG.Nombre) > 31 THEN LEFT(JUG.Nombre, 31) + '.'
							ELSE JUG.Nombre
						 END,
				Suspendido = ''				
		FROM	dbo.TorneoEquipoJugador  TEJ
		LEFT JOIN dbo.Jugador 			 JUG ON	TEJ.IdLiga = JUG.IdLiga AND TEJ.IdJugador = JUG.IdJugador
		WHERE	TEJ.IdLiga	  = @pnIdLiga
		AND     TEJ.IdTorneo  = @IdTorneo		
		AND		TEJ.IdEquipo  = @IdEquipo
		AND		JUG.Activo    = 1
		ORDER BY JUG.Nombre
		
		DECLARE @UltimaJornada AS INT
		
		SELECT @UltimaJornada = MAX(IdJornada) + 1
		FROM dbo.JornadaPartidoJugador WITH (NOLOCK)
		WHERE IdLiga   = @pnIdLiga
		AND   IdTorneo = @IdTorneo
		AND   IdEquipo = @IdEquipo
		
		
		DECLARE @tSuspension TABLE(JuegosSuspendido INT, IdTorneo INT, IdEquipo INT, IdJugador INT, IdJornada INT)
		
		INSERT INTO @tSuspension(JuegosSuspendido, IdTorneo, IdEquipo, IdJugador, IdJornada)
		SELECT	     JuegosSuspendido = SUM(SAN.JuegosSuspendido),									 
					 JPJ.IdTorneo,
					 JPJ.IdEquipo,	
					 JPJ.IdJugador,
					 JPJ.IdJornada			
		FROM       dbo.JornadaPartidoJugador JPJ 
		INNER JOIN dbo.Sancion				 SAN ON (JPJ.IdLiga = SAN.IdLiga AND JPJ.IdTorneo = SAN.IdTorneo AND JPJ.IdEquipo = SAN.IdEquipo AND JPJ.IdJugador = SAN.IdJugador AND JPJ.IdJornada = SAN.IdJornada)
		WHERE      JPJ.RecibioTarjetaRoja = 1 
		AND JPJ.IdLiga   = @pnIdLiga 
		AND JPJ.IdTorneo = @IdTorneo 
		AND JPJ.IdEquipo = @IdEquipo
		GROUP BY JPJ.IdTorneo,
					 JPJ.IdEquipo,	
					 JPJ.IdJugador,
					 JPJ.IdJornada
		
		
		UPDATE     TMP
		SET        Suspendido = 1
		FROM       @tmpJugadores TMP
		INNER JOIN @tSuspension	 SAN ON (TMP.IdTorneo = SAN.IdTorneo AND TMP.IdEquipo = SAN.IdEquipo AND TMP.IdJugador = SAN.IdJugador)
		WHERE (@UltimaJornada - SAN.IdJornada) <= SAN.JuegosSuspendido
		
					


		SET @NumeroRegistros = (SELECT COUNT(1) FROM @tmpJugadores)
		SET @DiferenciaRegistros = abs( @TotalRegistros - @NumeroRegistros)
		

		WHILE @Contador <= @DiferenciaRegistros
		BEGIN
		
		
			INSERT INTO @tmpJugadores	   
			SELECT ID					  = @NumeroRegistros + @Contador,
				   IdTorneo				  = NULL,
				   IdEquipo				  = NULL,
				   IdJugador			  = NULL,
				   NumeroJugador		  = NULL,
				   Nombre				  = '',
				   Suspendido			  = ''
		
			SET @Contador = @Contador + 1
		
		END
		
		SELECT	ID,
				NumeroJugador,
				Nombre,                                                                                      
				Suspendido,				
				GolesJugador = NULL,
				RecibioTarjetaAmarilla = NULL,
				RecibioTarjetaRoja = CASE WHEN Suspendido = 1 THEN 'X' ELSE NULL END,
				Jugo = NULL,
				Isnull( numeroJugador, 9999) as orden
		FROM   
				@tmpJugadores	
		order by
			ID,orden
			

		
		

SET NOCOUNT OFF
END

