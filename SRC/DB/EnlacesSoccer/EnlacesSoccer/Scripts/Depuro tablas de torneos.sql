select * from Torneo where IdLiga = 1 AND IdTorneo > 5
select * from TorneoEquipo where IdLiga = 1 AND IdTorneo > 5
select * from TorneoEquipoJugador where IdLiga = 1 AND IdTorneo > 5
select * from TMPUpdateTorneo where IdLiga = 1 AND IdTorneo > 5
select * from Jornada where IdLiga = 1 AND IdTorneo > 5
select * from JornadaPartido where IdLiga = 1 AND IdTorneo > 5
select * from JornadaPartidoJugador where IdLiga = 1 AND IdTorneo > 5
select * from JornadaAsistencia where IdLiga = 1 AND IdTorneo > 5

exec ActualizaJugador @pnIdLiga=1,@idjugador=4,@nombre=N'ARTURO ALFONSO RODRIGUEZ ABUD',@idusuario=1,@NumeroNomina=3063,@Planta=N'Acería Celaya',@Contratista=N'NA',@Area=N'SISTEMAS',@NumeroJugador=6

--delete from Torneo where IdLiga = 1 AND IdTorneo > 5
--delete from TorneoEquipo where IdLiga = 1 AND IdTorneo > 5
--delete from TorneoEquipoJugador where IdLiga = 1 AND IdTorneo > 5
--delete from TMPUpdateTorneo where IdLiga = 1 AND IdTorneo > 5
--delete from Jornada where IdLiga = 1 AND IdTorneo > 5
--delete from JornadaPartido where IdLiga = 1 AND IdTorneo > 5
--delete from JornadaPartidoJugador where IdLiga = 1 AND IdTorneo > 5
--delete from JornadaAsistencia where IdLiga = 1 AND IdTorneo > 5