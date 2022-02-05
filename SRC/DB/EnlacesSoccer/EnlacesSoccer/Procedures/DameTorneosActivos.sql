---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

--exec dbo.DameTorneosActivos @pnIdLiga = 1, @Activo = 1

ALTER PROCEDURE dbo.DameTorneosActivos
@pnIdLiga	INT,
@Activo BIT = 1

AS
BEGIN

	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	SELECT	IdLiga, IdTorneo , Nombre
	FROM	Torneo
	WHERE IdLiga = @pnIdLiga AND Activo = @Activo OR @Activo = 0
	ORDER BY IdLiga, Activo desc


END

