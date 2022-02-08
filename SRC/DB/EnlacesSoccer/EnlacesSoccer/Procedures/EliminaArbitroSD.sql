--

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Felipe Diaz 
-- Create date: 01/09/2011
-- Description:	Elimina un arbitro
-- =============================================
ALTER PROCEDURE dbo.EliminarArbitroSD
@pnIdLiga	INT=1,
@nIdArbitro as int
AS
BEGIN
SET NOCOUNT ON
--Constantes
	

--Variables

--Si existe lo elimino

	IF  EXISTS	(SELECT 1
				FROM	dbo.Arbitro
				WHERE IdLiga = @pnIdLiga AND IdArbitro = @nIdArbitro)
	BEGIN
				DELETE	FROM	dbo.Arbitro
				WHERE IdLiga = @pnIdLiga AND IdArbitro = @nIdArbitro
	END

SET NOCOUNT OFF
END

