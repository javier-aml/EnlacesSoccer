---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--exec juntas @pnIdLiga = 1, @nIdTorneo = 2, @nSoloJornada = 0
ALTER PROCEDURE dbo.Juntas
	@pnIdLiga		INT,
	@nIdTorneo		int,
	@nSoloJornada	int
	
AS
BEGIN
SET NOCOUNT ON

	if(@nSoloJornada = 1)
	begin
		select distinct(a.IdJunta), FechaHora , b.IdJornada
		from Junta a
		join JornadaAsistencia b
		on a.IdLiga = b.IdLiga 
		AND a.IdTorneo = b.idTorneo
		and a.idJunta = b.idJunta
		where a.IdLiga = @pnIdLiga 
		AND a.idTorneo = @nIdTorneo
		order by FechaHora desc
	end
	else
	begin
		select distinct(a.IdJunta), FechaHora, b.IdJornada
		from Junta a
		left join JornadaAsistencia b
		on a.IdLiga = b.IdLiga 
		AND a.IdTorneo = b.idTorneo
		and a.idJunta = b.idJunta
		where  a.IdLiga = @pnIdLiga 
		AND a.idTorneo = @nIdTorneo
		order by  FechaHora desc
	end


SET NOCOUNT OFF
END

