---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[torneoSi]
	@pnIdLiga				INT=1,
	@sNombreTorneo			VARCHAR (100),
	@sNombrePcMod			VARCHAR(50),
	@nClaUsuarioMod			TINYINT
AS
BEGIN
SET NOCOUNT ON;

	--DECLARACION DE VARIABLES
	DECLARE @tFechaActual	DATETIME	SET @tFechaActual = dbo.ObtieneFechaActual()
	DECLARE @nIdTorneo		INT
	SELECT @nIdTorneo=COUNT(IdTorneo)+1 FROM Torneo WHERE Idliga = @pnIdLiga

	IF EXISTS (SELECT 1 FROM Torneo WHERE Idliga = @pnIdLiga AND Nombre = @sNombreTorneo)
	BEGIN
		RAISERROR('Ya existe un Torneo con el mismo nombre en esta liga, favor de verificar', 16, 1)
		RETURN
	END
										
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
GO

BEGIN TRAN

exec torneoSi @sNombreTorneo=N'Torneo veteranos 45 y mas 2022',@sNombrePcMod=N'cargaInicial',@nClaUsuarioMod=0
GO

ROLLBACK TRAN 