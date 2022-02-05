---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


-- =============================================
-- Author:		Felipe Diaz 
-- Create date: 01/09/2011
-- Description:	Muestra las estadisticas por equipo en el torneo y en la jornada seleccionada
-- EXEC EstadisticasTorneoJornadaSel @pnIdLiga = 1, @pnIdTorneo = 2, @pnidJornada = 3
-- =============================================
ALTER PROCEDURE EstadisticasTorneoJornadaSel
	@pnIdLiga	INT,
	@pnIdTorneo as int,
	@pnidJornada as int 
	
AS
BEGIN
SET NOCOUNT ON

	if isnull( @pnIdJornada, 0 ) = 0
	begin
		select @pnidJornada = max(idJornada)
		from
			dbo.Jornada
		where IdLiga = @pnIdLiga
		AND IdTorneo = @pnIdTorneo
	end
	
	declare @nContador int
	declare @nTotalEquipos INT
	declare @nEquipo int
	declare @nUltimaJornada int
	create table #resultados
	(
		id  int identity,
		[IdEquipo] int,
		Nombre	varchar(100),
		[IdTorneo] int,
		[IdJornada] int,
		[PartidosJugados] int ,
		[PartidosGanados] int,
		[PartidosEmpatados] int,
		[PartidosPerdidos] int,
		[GolesFavor] int ,
		[GolesContra] int,
		[DiferenciaGoles] int,
		[Puntos] int,
		[PuntosFairPlay] [numeric](3, 1),
		[PuntosDescontadosFairPlay] [numeric](3, 1),
		[PuntosDescontadosJunta] [numeric](3, 1),
		[PuntosTotales] [numeric](5, 1),
		[NombreTorneo] varchar(100)
	)

	insert into  #resultados
	select	distinct(a.idequipo),b.Nombre,
			@pnIdTorneo, @pnidJornada,0,0,0,0,
			0,0,0,0,0,0,0,0,c.Nombre
	from	dbo.TorneoEquipoJugador a
	JOIN	dbo.Equipo b
	on		a.idequipo = b.Idequipo
	JOIN	dbo.Torneo c
	on		c.IdTorneo	= a.Idtorneo
	where a.IdLiga = @pnIdLiga
		AND a.idtorneo = @pnIdTorneo

	SELECT @nTotalEquipos = COUNT(id)
			from #resultados

	SET @nContador = 1

	WHILE(@nContador <= @nTotalEquipos)
	BEGIN
		--Si el equipo no tiene registrado resultado para esa jornada
		if (select ISNULL(PartidosJugados,0) 
			from	#resultados
			where	id = @nContador) = 0
		begin
			--Obtengo el equipo de ese contador
			select @nEquipo = idequipo
			from	#resultados
			where id = @nContador
			
			--Obtengo la maxima jornada donde el equipo en cuestion tenga resultados grabados
			SELECT	@nUltimaJornada = ISNULL(MAX(IdJornada),0)
			FROM	dbo.TorneoEquipo
			WHERE	IdLiga			= @pnIdLiga
			AND     IdTorneo		= @pnIdTorneo
			AND		IdEquipo		= @nEquipo
			AND		IdJornada		<= @pnidJornada

			UPDATE #RESULTADOS
			SET		[PartidosJugados] = ISNULL(a.PartidosJugados,0),
					[PartidosGanados] = ISNULL(a.PartidosGanados,0),
					[PartidosEmpatados] = ISNULL(a.PartidosEmpatados,0),
					[PartidosPerdidos] = ISNULL(a.PartidosPerdidos,0),
					[GolesFavor] = ISNULL(a.GolesFavor,0),
					[GolesContra] = ISNULL(a.GolesContra,0),
					[DiferenciaGoles] = ISNULL(a.DiferenciaGoles,0),
					[Puntos] = ISNULL(a.Puntos,0),
					[PuntosFairPlay] = ISNULL(a.PuntosFairPlay,0),
					[PuntosDescontadosFairPlay] = ISNULL(a.PuntosDescontadosFairPlay,0),
					[PuntosDescontadosJunta] = ISNULL(a.PuntosDescontadosJunta,0),
					[PuntosTotales] = ((a.Puntos + a.PuntosFairPlay) - (a.PuntosDescontadosFairPlay + a.PuntosDescontadosJunta))					
			from	dbo.TorneoEquipo a		
			join	#resultados b
			on		b.IdEquipo = a.IdEquipo
			where	a.IdLiga    = @pnIdLiga
			and		a.IdTorneo	= @pnIdTorneo
			and		a.IdEquipo	= @nEquipo
			and		a.IdJornada	= @nUltimaJornada
			and		b.ID= @nContador
		end
		SET @nContador = @nContador + 1
	end

	select *
	from #resultados
	order by  PuntosTotales desc,DiferenciaGoles desc,GolesFavor desc

	drop table #resultados
	
SET NOCOUNT OFF
END

