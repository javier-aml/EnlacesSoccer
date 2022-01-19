-- =============================================
-- Author:		Felipe Diaz 
-- Create date: 06/10/2011
-- Description:	Muestra los equipos activos para ese torneo
--	EXEC EstadisticasTorneoJornadaSel 1,1
/*
exec AsistenciaJuntaEquiposSel 1,3
*/
-- =============================================
alter PROCEDURE AsistenciaJuntaEquiposSel
	@pnIdTorneo as int,
	@pnIdJornada as int 
	
AS
BEGIN
SET NOCOUNT ON

	DECLARE @nJornada int

	select	top 1 @nJornada = IdJornada
	from	dbo.Jornada
	where	IdTorneo	= @pnIdTorneo
	and		PorJugar	= 1

	select	distinct(a.idequipo),b.Nombre,
			ISNULL(d.Asistio,1) as Asistencia
	from	dbo.TorneoEquipoJugador a
	JOIN	dbo.Equipo b
	on		a.idequipo = b.Idequipo
	JOIN	dbo.Torneo c
	on		c.IdTorneo	= a.Idtorneo
	left JOIN	dbo.JornadaAsistencia d
	on		a.Idequipo	= d.IdEquipo
	and		c.IdTorneo	= d.IdTorneo
	and		d.IdJornada	= @pnIdJornada
	
	select @nJornada
	
	
SET NOCOUNT OFF
END
