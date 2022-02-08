---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--EXEC [dbo].[ObtieneCredencialesPorEquipo2] @pnIdLiga = 1, @IdTorneo = 5, @IdEquipo = 54
--SELECT * FROM TorneoEquipoJugador WHERE IdLiga = 1 and IdTorneo = 5
ALTER PROCEDURE [dbo].[ObtieneCredencialesPorEquipo2]
@pnIdLiga	INT=1,
@IdTorneo as smallint,
@IdEquipo as smallint
AS

BEGIN

	DECLARE @TotalJugadores AS TinyInt
	DECLARE @RegistrosPorConsulta AS TinyInt

    SELECT NumRegistro = ROW_NUMBER() OVER(ORDER BY JUG.IdJugador),
		   JUG.IdJugador,
		   JUG.Nombre,
		   JUG.NumeroNomina,
		   TEJ.NumeroJugador,
		   JUG.Fotografia,		  
		   JUG.Planta,
		   JUG.Contratista,
		   JUG.Area,
		   Equipo = EQU.Nombre
	INTO #tmpCredencial		   
	FROM TorneoEquipoJugador TEJ
	INNER JOIN Jugador JUG ON (TEJ.IdLiga = JUG.IdLiga AND TEJ.IdJugador = JUG.IdJugador)
	INNER JOIN Equipo		 EQU ON (TEJ.IdLiga = EQU.IdLiga AND TEJ.IdEquipo = EQU.IdEquipo)
	WHERE TEJ.IdLiga = @pnIdLiga AND TEJ.IdTorneo = @IdTorneo AND TEJ.IdEquipo = @IdEquipo 
	AND JUG.Activo = 1
	
	SELECT @TotalJugadores = COUNT(1)
	FROM #tmpCredencial
	
	SELECT @RegistrosPorConsulta = @TotalJugadores / 2

	
	SELECT *
	FROM #tmpCredencial
	WHERE NumRegistro > @RegistrosPorConsulta 
	
	
	
	DROP TABLE #tmpCredencial

END

