SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE torneoSi
	@sNombreTorneo			VARCHAR (100),
	@sNombrePcMod			VARCHAR(50),
	@nClaUsuarioMod			TINYINT
AS
BEGIN
SET NOCOUNT ON;

	--DECLARACION DE VARIABLES
	DECLARE @tFechaActual	DATETIME	SET @tFechaActual = GETDATE()
	DECLARE @nIdTorneo		INT
	SELECT @nIdTorneo=count(IdTorneo)+1 FROM Torneo
										
	INSERT INTO Torneo
		   (IdTorneo
           ,Nombre
           ,FechaUltimaMod
           ,NombrePcMod
           ,ClaUsuarioMod)
	SELECT	IdTorneo			= @nIdTorneo
           ,Nombre				= @sNombreTorneo
           ,FechaUltimaMod		= @tFechaActual
           ,NombrePcMod			= @sNombrePcMod
           ,ClaUsuarioMod		= @nClaUsuarioMod
           
    SELECT @nIdTorneo AS IdTorneo
END
GO