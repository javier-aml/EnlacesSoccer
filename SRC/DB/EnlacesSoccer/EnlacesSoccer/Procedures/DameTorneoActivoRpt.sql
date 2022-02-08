---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
ALTER PROCEDURE DameTorneoActivoRpt
@pnIdLiga		INT=1
AS
BEGIN

	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	SELECT	IdTorneo , Nombre
	FROM	Torneo
	where IdLiga = @pnIdLiga
	AND	activo = 1
	ORDER BY nombre


END

