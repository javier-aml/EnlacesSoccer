
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

CREATE PROCEDURE ConsultarEquipos
	@nActivo		int
AS
BEGIN

	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT IdEquipo
		  ,Nombre as [Nombre equipo]
		  ,case Activo when 1 then 'Activo' else 'Inactivo' END as Estado
	  
	FROM	Equipo
	WHERE ((@nActivo = -1) OR Activo = @nActivo)
		AND IdEquipo != 0
	ORDER BY estado , [Nombre equipo] 

END
GO
EXEC ConsultarEquipos -1