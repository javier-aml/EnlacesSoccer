CREATE PROCEDURE dbo.EliminaTorneo
(
@IdTorneo  TINYINT
)
AS

	DELETE 
	FROM dbo.Junta
	WHERE  IdTorneo = @IdTorneo
	
	DELETE 
	FROM dbo.Sancion
	WHERE  IdTorneo = @IdTorneo

	DELETE 
	FROM dbo.JornadaPartidoJugador
	WHERE  IdTorneo = @IdTorneo

	DELETE 
	FROM dbo.JornadaPartido
	WHERE  IdTorneo = @IdTorneo

	DELETE 
	FROM dbo.JornadaAsistencia
	WHERE  IdTorneo = @IdTorneo
	

	DELETE 
	FROM dbo.TorneoEquipo
	WHERE  IdTorneo = @IdTorneo

	DELETE 
	FROM dbo.TorneoEquipoJugador
	WHERE  IdTorneo = @IdTorneo

	DELETE 
	FROM dbo.Jornada
	WHERE  IdTorneo = @IdTorneo

	DELETE 
	FROM   dbo.Torneo
	WHERE  IdTorneo = @IdTorneo


	--COMPROBACIÓN
	SELECT 'Torneo', Registros = COUNT(1)
	FROM dbo.Torneo
	WHERE  IdTorneo = @IdTorneo

	SELECT 'TorneoEquipo', Registros = COUNT(1)
	FROM dbo.TorneoEquipo
	WHERE  IdTorneo = @IdTorneo

	SELECT 'TorneoEquipoJugador', Registros = COUNT(1)
	FROM dbo.TorneoEquipoJugador
	WHERE  IdTorneo = @IdTorneo

	SELECT 'Jornada', Registros = COUNT(1)
	FROM dbo.Jornada
	WHERE  IdTorneo = @IdTorneo

	SELECT 'JornadaPartido', Registros = COUNT(1)
	FROM dbo.JornadaPartido
	WHERE  IdTorneo = @IdTorneo

	SELECT 'JornadaPartidoJugador', Registros = COUNT(1)
	FROM dbo.JornadaPartidoJugador
	WHERE  IdTorneo = @IdTorneo
	
	SELECT 'JornadaAsistencia', Registros = COUNT(1)
	FROM dbo.JornadaAsistencia
	WHERE  IdTorneo = @IdTorneo

	SELECT 'Sancion', Registros = COUNT(1)
	FROM dbo.Sancion
	WHERE  IdTorneo = @IdTorneo
	
	SELECT 'Junta', Registros = COUNT(1)
	FROM dbo.Junta
	WHERE  IdTorneo = @IdTorneo

GO






