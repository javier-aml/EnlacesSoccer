
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Felipe Diaz 
-- Create date: 01/09/2011
-- Description:	Guarda un nuevo arbitro
-- =============================================
ALTER PROCEDURE GuardarArbitroSI
	@pnIdLiga INT,
	@snombre as varchar(50),
	@idusuario as tinyint
AS
BEGIN
SET NOCOUNT ON
--Constantes
	
	DECLARE		@dDia		DATETIME	SET @dDia			= GETDATE()

--Variables

	DECLARE		@nIdArbitro	INT			SET @nIdArbitro		= dbo.ObtieneSiguienteIdArbitro(@pnIdLiga)

--Si no existe uno con el mismo nombre, se guarda...

	IF NOT EXISTS	(SELECT 1
					FROM	dbo.Arbitro
					WHERE	IdLiga = @pnIdLiga AND Nombre = @snombre)
	BEGIN
				INSERT	INTO		dbo.Arbitro
				(	
					IdLiga, IdArbitro,			Nombre,			Telefono,			Activo,
					JuegosArbitrados,	FechaUltimaMod,	NombrePcMod,		ClaUsuarioMod
				)VALUES
				(
					@pnIdLiga, @nIdArbitro,		@snombre,		null,				1,
					0,					@dDia,			'TEST',				@idusuario	
				)
	END

SET NOCOUNT OFF
END

