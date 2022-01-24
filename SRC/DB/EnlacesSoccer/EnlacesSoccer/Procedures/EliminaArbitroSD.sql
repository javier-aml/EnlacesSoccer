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
CREATE PROCEDURE EliminarArbitroSD
--ALTER PROCEDURE dbo.EliminarArbitroSD
	@nIdArbitro as int
AS
BEGIN
SET NOCOUNT ON
--Constantes
	

--Variables

--Si existe lo elimino

	IF  EXISTS	(SELECT 1
				FROM	dbo.Arbitro
				WHERE	IdArbitro = @nIdArbitro)
	BEGIN
				DELETE	FROM	dbo.Arbitro
				WHERE	IdArbitro = @nIdArbitro
	END

SET NOCOUNT OFF
END

