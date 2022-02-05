
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
ALTER PROCEDURE dbo.EliminaTorneo
@pnIdLiga	INT,
@IdTorneo  TINYINT
AS

	DELETE 
	FROM dbo.Junta
	WHERE  IdLiga = @pnIdLiga AND IdTorneo = @IdTorneo
	
	DELETE 
	FROM dbo.Sancion
	WHERE  IdLiga = @pnIdLiga AND IdTorneo = @IdTorneo

	DELETE 
	FROM dbo.JornadaPartidoJugador
	WHERE  IdLiga = @pnIdLiga AND IdTorneo = @IdTorneo

	DELETE 
	FROM dbo.JornadaPartido
	WHERE  IdLiga = @pnIdLiga AND IdTorneo = @IdTorneo

	DELETE 
	FROM dbo.JornadaAsistencia
	WHERE  IdLiga = @pnIdLiga AND IdTorneo = @IdTorneo
	

	DELETE 
	FROM dbo.TorneoEquipo
	WHERE  IdLiga = @pnIdLiga AND IdTorneo = @IdTorneo

	DELETE 
	FROM dbo.TorneoEquipoJugador
	WHERE  IdLiga = @pnIdLiga AND IdTorneo = @IdTorneo

	DELETE 
	FROM dbo.Jornada
	WHERE  IdLiga = @pnIdLiga AND IdTorneo = @IdTorneo

	DELETE 
	FROM   dbo.Torneo
	WHERE  IdLiga = @pnIdLiga AND IdTorneo = @IdTorneo


	--COMPROBACIÓN
	SELECT 'Torneo', Registros = COUNT(1)
	FROM dbo.Torneo
	WHERE  IdLiga = @pnIdLiga AND IdTorneo = @IdTorneo

	SELECT 'TorneoEquipo', Registros = COUNT(1)
	FROM dbo.TorneoEquipo
	WHERE  IdLiga = @pnIdLiga AND IdTorneo = @IdTorneo

	SELECT 'TorneoEquipoJugador', Registros = COUNT(1)
	FROM dbo.TorneoEquipoJugador
	WHERE  IdLiga = @pnIdLiga AND IdTorneo = @IdTorneo

	SELECT 'Jornada', Registros = COUNT(1)
	FROM dbo.Jornada
	WHERE  IdLiga = @pnIdLiga AND IdTorneo = @IdTorneo

	SELECT 'JornadaPartido', Registros = COUNT(1)
	FROM dbo.JornadaPartido
	WHERE  IdLiga = @pnIdLiga AND IdTorneo = @IdTorneo

	SELECT 'JornadaPartidoJugador', Registros = COUNT(1)
	FROM dbo.JornadaPartidoJugador
	WHERE  IdLiga = @pnIdLiga AND IdTorneo = @IdTorneo
	
	SELECT 'JornadaAsistencia', Registros = COUNT(1)
	FROM dbo.JornadaAsistencia
	WHERE  IdLiga = @pnIdLiga AND IdTorneo = @IdTorneo

	SELECT 'Sancion', Registros = COUNT(1)
	FROM dbo.Sancion
	WHERE  IdLiga = @pnIdLiga AND IdTorneo = @IdTorneo
	
	SELECT 'Junta', Registros = COUNT(1)
	FROM dbo.Junta
	WHERE  IdLiga = @pnIdLiga AND IdTorneo = @IdTorneo

