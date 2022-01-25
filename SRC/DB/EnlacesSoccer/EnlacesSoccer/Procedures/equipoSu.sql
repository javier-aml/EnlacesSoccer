USE EnlacesSoccer
go

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE equipoSu
	@nIdEquipo		INT,
	@sNombre		varchar(100),
	@nActivo		tinyInt,
	@sNombrePcMod	varchar(50),
	@nClaUsuarioMod	int
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


	--DECLARACION DE VARIABLES
	DECLARE @tFechaActual	DATETIME	SET @tFechaActual = GETDATE()
	
	
	UPDATE [dbo].[Equipo]
	SET Nombre			= @sNombre
      ,Activo			= @nActivo
      ,FechaUltimaMod	= @tFechaActual
      ,NombrePcMod		= @sNombrePcMod
      ,ClaUsuarioMod	= @nClaUsuarioMod
	WHERE idequipo		= @nIdEquipo


END

