---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
--EXEC ConsultarJugadoresDisponibles @pnIdLiga = 1, @nIdTorneo = 5
ALTER PROCEDURE dbo.ConsultarJugadoresDisponibles
	@pnIdLiga		INT=1,
	@nIdTorneo		INT
AS
BEGIN


	SET NOCOUNT ON;


	
	SELECT	JUG.IdLiga,
			JUG.IdJugador
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
			
	FROM Jugador JUG
	--Obtengo los jugadores que ya fueron asignados a el equipo en cuestion.
	LEFT JOIN (SELECT IdLiga, IdEquipo, IdJugador,NumeroJugador
			   FROM	TorneoEquipoJugador
			   WHERE	IdLiga = @pnIdLiga AND IdTorneo = @nIdTorneo) TEJ
		ON	jug.IdLiga = TEJ.IdLiga AND jug.IdJugador = TEJ.IdJugador
	LEFT JOIN Equipo EQ
		ON	EQ.IdLiga = TEJ.IdLiga AND EQ.IdEquipo = TEJ.IdEquipo
	WHERE JUG.Activo = 1					
						
						
	
						
	
								
END

