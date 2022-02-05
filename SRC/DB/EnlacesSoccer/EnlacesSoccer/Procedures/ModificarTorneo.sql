---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

ALTER PROCEDURE [dbo].[ModificarTorneo]
	@pnIdLiga		 INT,
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
										
	UPDATE Torneo
	SET    Nombre         = @Nombre,
           Activo         = @Activo,
           FechaUltimaMod = @FechaActual,
           NombrePcMod    = @NombrePcMod,
           ClaUsuarioMod  = @ClaUsuarioMod
	WHERE  IdLiga = @pnIdLiga	
	AND IdTorneo = @IdTorneo           
               
END

