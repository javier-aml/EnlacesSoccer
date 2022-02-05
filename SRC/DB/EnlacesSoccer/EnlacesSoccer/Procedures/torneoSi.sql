---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[torneoSi]
	@pnIdLiga				INT,
	@sNombreTorneo			VARCHAR (100),
	@sNombrePcMod			VARCHAR(50),
	@nClaUsuarioMod			TINYINT
AS
BEGIN
SET NOCOUNT ON;

	--DECLARACION DE VARIABLES
	DECLARE @tFechaActual	DATETIME	SET @tFechaActual = dbo.ObtieneFechaActual()
	DECLARE @nIdTorneo		INT
	SELECT @nIdTorneo=COUNT(IdTorneo)+1 FROM Torneo WHERE Idliga = IdLiga
										
	INSERT INTO Torneo
		   (IdLiga
		   ,IdTorneo
           ,Nombre
           ,FechaUltimaMod
           ,NombrePcMod
           ,ClaUsuarioMod)
	SELECT  IdLiga				= @pnIdLiga
	       ,IdTorneo			= @nIdTorneo
           ,Nombre				= @sNombreTorneo
           ,FechaUltimaMod		= @tFechaActual
           ,NombrePcMod			= @sNombrePcMod
           ,ClaUsuarioMod		= @nClaUsuarioMod
           
    SELECT @nIdTorneo AS IdTorneo
END

