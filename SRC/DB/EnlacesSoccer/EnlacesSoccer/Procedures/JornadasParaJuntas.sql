---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- =============================================
-- Author:		Felipe Diaz Acevedo
-- Create date: 21/09/2011
-- Description:	Regresa las jornadas de un torneo que ya han sido jugadas y la siguiente en jugar
-- JornadasPorTorneoJugadas 1
/*
	exec JornadasParaJuntas 1,0

*/
-- =============================================

ALTER PROCEDURE JornadasParaJuntas
	@pnIdLiga	INT,
	@nIdTorneo	INT,
	@nIdJornada	INT
AS
BEGIN
	SET NOCOUNT ON;
	
	create table #jornada
	(
		idJornada  int,
		Nombre	varchar(100)
	)

	if(@nIdJornada > 0)
	begin
	insert into #jornada
	SELECT	IdJornada, 'Jornada '+CONVERT(VARCHAR, IdJornada) as Nombre
	FROM	Jornada
	WHERE	IdLiga   = @pnIdLiga
	AND     IdTorneo = @nIdTorneo
	AND		IdJornada = @nIdJornada
--	AND		PorJugar = 0
	end
	else
	begin	
	insert into #jornada	
	select	top 1 IdJornada, 'Jornada '+CONVERT(VARCHAR, IdJornada) as Nombre
	from jornada
	where	IdLiga   = @pnIdLiga
	AND     IdTorneo	= @nIdTorneo
	and		PorJugar	= 1
	end

	select *
	from #jornada
	order by Nombre

	drop table #jornada

END

