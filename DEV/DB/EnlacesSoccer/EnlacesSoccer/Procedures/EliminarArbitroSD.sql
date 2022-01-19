
-- =============================================
-- Author:		Felipe Diaz 
-- Create date: 01/09/2011
-- Description:	Elimina un arbitro
-- =============================================
CREATE PROCEDURE EliminarArbitroSD
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
				UPDATE dbo.Arbitro
				SET    Activo = 0
				WHERE  IdArbitro = @nIdArbitro
	END

SET NOCOUNT OFF
END


