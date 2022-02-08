---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

ALTER PROCEDURE [dbo].[ModificarTorneo]
	@pnIdLiga		 INT=1,
	@IdTorneo		 TINYINT,
	@Nombre		     VARCHAR (100),
	@Activo			 BIT
AS
BEGIN
SET NOCOUNT ON;

	--DECLARACION DE VARIABLES
	DECLARE @NombrePcMod	 VARCHAR(50)
	DECLARE @ClaUsuarioMod AS INT	
	DECLARE @FechaActual	DATETIME	SET @FechaActual = dbo.ObtieneFechaActual()
		
	SELECT @NombrePcMod = HOST_NAME()
	SELECT @ClaUsuarioMod = 1	

	IF EXISTS (SELECT 1 FROM Torneo WHERE Idliga = @pnIdLiga AND IdTorneo <> @IdTorneo AND Nombre = @Nombre)
	BEGIN
		RAISERROR('Ya existe un Torneo con el mismo nombre en esta liga, favor de verificar', 16, 1)
		RETURN
	END
										
	UPDATE Torneo
	SET    Nombre         = @Nombre,
           Activo         = @Activo,
           FechaUltimaMod = @FechaActual,
           NombrePcMod    = @NombrePcMod,
           ClaUsuarioMod  = @ClaUsuarioMod
	WHERE  IdLiga = @pnIdLiga	
	AND IdTorneo = @IdTorneo           
               
END

