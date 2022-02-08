USE EnlacesSoccer
go

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
--DROP PROC equipoSu

ALTER PROCEDURE dbo.ActualizarEquipo
	@pnIdLiga		INT=1,
	@pnIdEquipo		INT,
	@psNombre		varchar(100),
	@pnActivo		tinyInt,
	@psNombrePcMod	varchar(50),
	@pnClaUsuarioMod	int
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


	--DECLARACION DE VARIABLES
	DECLARE @tFechaActual	DATETIME	SET @tFechaActual = GETDATE()
	
	
	UPDATE [dbo].[Equipo]
	SET Nombre			= @psNombre
      ,Activo			= @pnActivo
      ,FechaUltimaMod	= @tFechaActual
      ,NombrePcMod		= @psNombrePcMod
      ,ClaUsuarioMod	= @pnClaUsuarioMod
	WHERE IdLiga = @pnIdLiga AND idequipo = @pnIdEquipo


END

