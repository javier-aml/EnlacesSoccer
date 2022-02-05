---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- ActualizaEstadisticaTodoEquipos 2
ALTER PROCEDURE [dbo].[ActualizaEstadisticaTodoEquipos]
	@IdLiga	    INT,
	@idTorneo	tinyint
as
BEGIN

declare
	@idJornada tinyint,
	@idEquipo tinyint,
	@errno	int,
	@errmsg nvarchar(200)
begin
	set nocount on
	if not exists (
		select *
		from
			Torneo
		where IdLiga = @IdLiga AND 
			idTorneo = @idTorneo
		and	activo = 1 )
	begin
		set @errno = 100040
		set @errmsg = '<<ActualizaEstadisticaTodoEquipos>>.El Torneo no está activo, no se puede calcular estadística'
	--	goto error
	end


	
	select @idEquipo = min (idEquipo) 
	from dbo.TorneoEquipo
	where IdLiga = @IdLiga AND 
		idTOrneo = @idTorneo

	while @idEquipo is not null
	begin 
		--select @idTorneo, @idJornada, @idEquipo1, @idEquipo2
		exec ActualizaEstadistica @IdLiga, @idTorneo, 1, @idEquipo
		exec ActualizaEstadisticaJugador @IdLiga,  @idTorneo, @idEquipo
			
		select @idEquipo = min (idEquipo) 
		from dbo.TorneoEquipo
		where IdLiga = @IdLiga AND 
			idTOrneo = @idTorneo
		and	idEquipo > @idEquipo
		
	end
	
	return
	
error:
	raiserror(@errmsg, 1, 1)
	return
end

END