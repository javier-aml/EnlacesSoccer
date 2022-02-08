---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

ALTER PROCEDURE [dbo].[ConsultaEquiposCedula]
	@IdLiga	    INT=1,
	@IdTorneo	TINYINT,
	@IdJornada	TINYINT,
	@IdEquipo1	TINYINT,
	@IdEquipo2	TINYINT	
AS
BEGIN									
SET NOCOUNT ON

	
	
		SELECT	Torneo = tor.Nombre,
				Jornada = 'Jornada ' + CAST(jp.idjornada AS VARCHAR(2)),
				jp.FechaHora								
				,eq1.Nombre AS NombreEquipo1
				,eq2.Nombre AS NombreEquipo2
		FROM	dbo.JornadaPartido jp
		LEFT JOIN Torneo    TOR ON (jp.IdLiga = tor.IdLiga AND jp.IdTorneo = tor.IdTorneo)
		LEFT JOIN dbo.Jornada    JOR ON (jp.IdLiga = JOR.IdLiga AND jp.IdTorneo = JOR.IdTorneo AND jp.IdJornada = JOR.IdJornada)
		LEFT JOIN	dbo.Equipo eq1
		ON	jp.IdEquipo1 = eq1.IdEquipo
		LEFT JOIN	dbo.Equipo eq2
		ON	jp.IdEquipo2 = eq2.IdEquipo
		WHERE	jp.IdLiga = @IdLiga AND 
			jp.IdTorneo  = @IdTorneo
			AND jp.IdJornada = @IdJornada
			AND jp.IdEquipo1 = @IdEquipo1
			AND jp.IdEquipo2 = @IdEquipo2
		
		


SET NOCOUNT OFF
END

