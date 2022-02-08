
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

--drop proc equipoSi

ALTER PROCEDURE dbo.GuardarEquipo
	@pnIdLiga		INT=1,
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
	DECLARE @nId			INT			SET @nId = (	SELECT ISNULL(MAX(IdEquipo),0) + 1
														FROM Equipo)											
							
										
	INSERT INTO Equipo
           (IdLiga
		   ,IdEquipo
           ,Nombre
           ,Activo
           ,FechaUltimaMod
           ,NombrePcMod
           ,ClaUsuarioMod)
	SELECT  IdLiga			= @pnIdLiga
		   ,IdEquipo		= @nId
           ,Nombre			= @psNombre
           ,Activo			= @pnActivo
           ,FechaUltimaMod	= @tFechaActual
           ,NombrePcMod		= @psNombrePcMod
           ,ClaUsuarioMod	= @pnClaUsuarioMod
END
GO
