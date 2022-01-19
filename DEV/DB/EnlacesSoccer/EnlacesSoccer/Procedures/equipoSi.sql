
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE equipoSi
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
	DECLARE @nId			INT			SET @nId = (	SELECT ISNULL(MAX(IdEquipo),0) + 1
														FROM Equipo)											
							
										
	INSERT INTO Equipo
           (IdEquipo
           ,Nombre
           ,Activo
           ,FechaUltimaMod
           ,NombrePcMod
           ,ClaUsuarioMod)
	SELECT IdEquipo			= @nId
           ,Nombre			= @sNombre
           ,Activo			= @nActivo
           ,FechaUltimaMod	= @tFechaActual
           ,NombrePcMod		= @sNombrePcMod
           ,ClaUsuarioMod	= @nClaUsuarioMod
END
GO
