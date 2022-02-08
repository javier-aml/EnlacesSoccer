---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- ConsultarEstadisticaJugadorRPT 2, 0
ALTER PROCEDURE ConsultarEstadisticaJugadorRPT
	@pnIdLiga	     INT=1,
	@pnIdTorneo  int,
	@pnIdEquipo  int
as
begin	
	set nocount on
	create table #tmpOrdenGoleo
	(	lugar	int identity,
		IdLiga		int,
		idJugador	int,
		goles		int,
		asistencia	int,
		amarillas	int,
		roja		int
	)
	
	
	insert into #tmpOrdenGoleo
	(IdLiga, idJugador, goles, asistencia, amarillas, roja)

	select	jpj.IdLiga, 
			jpj.idJugador, 
			sum(case when jpj.jugo = 1 then 1 else 0 end ) as jugo, 
			sum( jpj.GolesJugador ) as goles, 
			sum( case when jpj.RecibioTarjetaAmarilla = 1 then 1 else 0 end ) as RecibioTarjetaAmarilla, 
			sum( case when jpj.RecibioTarjetaRoja= 1 then 1 else 0 end ) as RecibioTarjetaRoja
	from
		JornadaPartidoJugador jpj
		inner join Jugador j
		on	j.IdLiga =  jpj.IdLiga AND j.idJugador =  jpj.IdJugador
		inner join equipo e
		on	jpj.IdLiga = e.IdLiga AND jpj.IdEquipo = e.IdEquipo
	where jpj.IdLiga = @pnIdLiga
	and	jpj.idTorneo = @pnIdTorneo
	and @pnIdEquipo in (0, jpj.IdEquipo)
	and (jpj.jugo = 1 or jpj.GolesJugador != 0  or RecibioTarjetaAmarilla = 1 or RecibioTarjetaRoja = 1 )
	group by jpj.IdLiga,
		jpj.idJugador
	order by
		3 desc, 2, 1

	select	jpj.idJornada, 
			jpj.idJugador, 
			e.idEquipo, 
			e.Nombre as Equipo, 
			j.Nombre, 
			case when jpj.jugo = 1 then 1 else 0 end jugo, 
			jpj.GolesJugador, 
			case when jpj.RecibioTarjetaAmarilla = 1 then 1 else 0 end RecibioTarjetaAmarilla, 
			case when jpj.RecibioTarjetaRoja= 1 then 1 else 0 end RecibioTarjetaRoja,
			(
				select case when jpj.idEquipo != jp.IdEquipo1 then jpe1.nombre else jpe2.nombre end
			from	
				dbo.JornadaPartido jp
				inner join dbo.equipo jpe1
				on jp.IdLiga = jpe1.IdLiga AND jp.idEquipo1 = jpe1.idEquipo
				inner join dbo.equipo jpe2
				on jp.IdLiga = jpe2.IdLiga AND jp.idEquipo2 = jpe2.idEquipo
			where jp.IdLiga = jpj.IdLiga
			and	jp.idTorneo = jpj.idTorneo
			and	jp.idJornada = jpj.idJornada
			and jpj.idEquipo in (jp.idEquipo1, jp.idEquipo2) ) as equipo2,
			orden.lugar
	from
		JornadaPartidoJugador jpj
		inner join Jugador j
		on	j.IdLiga = jpj.IdLiga AND j.idJugador =  jpj.IdJugador
		inner join equipo e
		on	jpj.IdLiga = e.IdLiga AND jpj.IdEquipo = e.IdEquipo
		inner join #tmpOrdenGoleo orden
		on jpj.IdLiga = orden.IdLiga AND jpj.idJugador = orden.idJugador
	where jpj.IdLiga = @pnIdLiga
	AND   jpj.idTorneo = @pnIdTorneo
	and @pnIdEquipo in (0, jpj.IdEquipo)
	and (jpj.jugo = 1 or jpj.GolesJugador != 0  or RecibioTarjetaAmarilla = 1 or RecibioTarjetaRoja = 1 )
	order by
		orden.lugar

end

