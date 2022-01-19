ALTER PROCEDURE dbo.ActualizaEstadistica
(
@IdTorneo TINYINT,
@IdJornada TINYINT,
@IdEquipo TINYINT
)
AS
	
	DECLARE @IdJornadaMAX TINYINT
	
	SET @IdJornadaMAX = 0
	
	--OBTIENE EL ID DE LA ÚLTIMA JORNADA QUE SE HA JUGADO
	SELECT @IdJornadaMAX = ISNULL(MAX(IdJornada),0)
	FROM dbo.JornadaPartido
	WHERE IdTorneo = @IdTorneo AND (IdEquipo1 = @IdEquipo OR IdEquipo2 = @IdEquipo) AND Jugado = 1


	WHILE @IdJornada <= @IdJornadaMAX
	BEGIN

		EXEC dbo.ActualizaEstadisticaProceso @IdTorneo = @IdTorneo, 
											 @IdJornada = @IdJornada, 
											 @IdEquipo = @IdEquipo
			
		SET @IdJornada = @IdJornada + 1
	END


		

GO