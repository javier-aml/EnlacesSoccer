---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- =============================================
-- Author:		Felipe Diaz 
-- Create date: 06/10/2011
-- Description:	Graba la asistencia de los equipos a la junta
--	EXEC EstadisticasTorneoJornadaSel 1,1
/*
exec AsistenciaJuntaEquiposSi 2,1,2,0
*/
-- =============================================
ALTER PROCEDURE AsistenciaJuntaEquiposSi
	@IdLiga	        INT=1,
	@pnIdTorneo		int,
	@pnIdJornada	int,
	@pnIdEquipo		int,
	@pnIdJunta		INT,
	@pbAsistio		INT
	
AS
BEGIN
SET NOCOUNT ON

	DECLARE @dHoy datetime
	set		@dHoy = dbo.ObtieneFechaActual()

	if exists(	select	1
				from	dbo.JornadaAsistencia
				where	IdLiga = @IdLiga AND IdTorneo	= @pnIdTorneo
					and	IdJornada	= @pnIdJornada
					and IdEquipo	= @pnIdEquipo
					and IdJunta		= @pnIdJunta)
	begin
		--hago un update
		UPDATE	dbo.JornadaAsistencia
		SET		Asistio			= @pbAsistio,
				FechaUltimaMod	= @dHoy,
				NombrePcMod		= 'test',
				ClaUsuarioMod	= 1
		where	IdLiga = @IdLiga AND IdTorneo		= @pnIdTorneo
			and	IdJornada		= @pnIdJornada
			and IdEquipo		= @pnIdEquipo
			and IdJunta			= @pnIdJunta
	end
	else
	begin
		--hago un insert
		INSERT	INTO	dbo.JornadaAsistencia
		(IdLiga, IdTorneo,		IdJornada,		IdEquipo,		Asistio,
		FechaUltimaMod,	NombrePcMod,	ClaUsuarioMod,	IdJunta)VALUES
		(@IdLiga, @pnIdTorneo,	@pnIdJornada,	@pnIdEquipo,	@pbAsistio,
		@dHoy,			'test',			1,				@pnIdJunta)
	end
	
SET NOCOUNT OFF
END

