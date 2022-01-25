-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
--EXEC ConsultarJugadoresDisponibles 1
CREATE PROCEDURE dbo.ConsultarJugadoresDisponibles
	@nIdTorneo		INT
AS
BEGIN


	SET NOCOUNT ON;


	--Obtengo los jugadores que ya fueron asignados a el equipo en cuestion.
	SELECT	JUG.IdJugador
			,TEJ.NumeroJugador as Número
			,JUG.Nombre as [Nombre jugador]
			,CASE 
				WHEN TEJ.IdEquipo IS NULL THEN
					'Libre'
				 ELSE
					'Asignado' + ' - ' + EQ.Nombre
			 END AS Situación
			,CASE 
				WHEN TEJ.IdEquipo IS NULL THEN
					1
				 ELSE
					0
			 END AS EsLibre
			,TEJ.IdEquipo AS IdEquipo
			
	FROM	Jugador										JUG
	LEFT JOIN	(SELECT * 
				FROM	TorneoEquipoJugador
				WHERE	IdTorneo = @nIdTorneo)			TEJ
		ON	jug.IdJugador = TEJ.IdJugador
	LEFT JOIN	Equipo									EQ
		ON	EQ.IdEquipo = TEJ.IdEquipo
	WHERE JUG.Activo = 1					
						
						
	
						
	
								
END

