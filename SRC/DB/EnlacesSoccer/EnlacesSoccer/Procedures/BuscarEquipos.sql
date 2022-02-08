
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
--DROP PROC ConsultarEquipos
ALTER PROCEDURE dbo.BuscarEquipos
@pnIdLiga int = 1,
@pnActivo  int
AS
BEGIN

	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT IdEquipo
		  ,Nombre as [Nombre equipo]
		  ,case Activo when 1 then 'Activo' else 'Inactivo' END as Estado
	  
	FROM	Equipo
	WHERE IdLiga = @pnIdLiga AND ((@pnActivo = -1) OR Activo = @pnActivo)
		AND IdEquipo != 0
	ORDER BY estado , [Nombre equipo] 

END
GO
EXEC BuscarEquipos @pnIdLiga = 1, @pnActivo = -1
GO