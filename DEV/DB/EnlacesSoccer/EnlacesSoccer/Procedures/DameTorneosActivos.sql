
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

ALTER PROCEDURE dbo.DameTorneosActivos
@Activo BIT = 1

AS
BEGIN

	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	SELECT	IdTorneo , Nombre
	FROM	Torneo
	WHERE Activo = @Activo OR @Activo = 0
	ORDER BY Activo desc


END
GO



EXEC DameTorneosActivos