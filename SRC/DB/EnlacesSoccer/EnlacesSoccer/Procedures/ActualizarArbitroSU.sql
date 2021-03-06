
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Felipe Diaz 
-- Create date: 01/09/2011
-- Description:	Actualiza un  arbitro
-- =============================================
ALTER PROCEDURE dbo.ActualizarArbitroSU
--ALTER PROCEDURE dbo.ActualizarArbitroSU
	@pnIdLiga	INT=1,
	@nIdArbitro as INT,
	@sNombre as VARCHAR(100),
	@sTelefono as VARCHAR(50),
	@idusuario as tinyint
AS
BEGIN
SET NOCOUNT ON
--Constantes
	
	DECLARE		@dDia		DATETIME	SET @dDia			= GETDATE()

--Variables
	

--Si existe, se actualiza

	IF  EXISTS	(SELECT 1
				FROM	dbo.Arbitro
				WHERE IdLiga = @pnIdLiga AND IdArbitro = @nIdArbitro)
	BEGIN
				UPDATE dbo.Arbitro
				SET	Nombre			= @sNombre,
					Telefono		= @sTelefono,
					FechaUltimaMod	= @dDia,
					NombrePcMod		= 'TEST',
					ClaUsuarioMod	= @idusuario
				WHERE IdLiga = @pnIdLiga AND
				IdArbitro	= @nIdArbitro
	END

SET NOCOUNT OFF
END

