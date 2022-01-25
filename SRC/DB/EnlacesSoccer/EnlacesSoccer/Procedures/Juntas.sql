IF EXISTS (SELECT * FROM SYSOBJECTS WHERE ID = Object_id('dbo.Juntas') and 
OBJECTPROPERTY(id, 'IsProcedure') = 1)
DROP PROCEDURE dbo.Juntas
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- exec juntas 1,0
CREATE PROCEDURE dbo.Juntas
--Parametros
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
		on a.IdTorneo = b.idTorneo
		and a.idJunta = b.idJunta
		where a.idTorneo = @nIdTorneo
		order by FechaHora desc
	end
	else
	begin
		select distinct(a.IdJunta), FechaHora, b.IdJornada
		from Junta a
		left join JornadaAsistencia b
		on a.IdTorneo = b.idTorneo
		and a.idJunta = b.idJunta
		where a.idTorneo = @nIdTorneo
		order by  FechaHora desc
	end


SET NOCOUNT OFF
END
GO
