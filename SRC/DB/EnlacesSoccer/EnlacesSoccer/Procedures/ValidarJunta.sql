---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

ALTER PROCEDURE [dbo].[ValidarJunta]
	@pnIdLiga	INT=1,
	@nIdTorneo	INT,
	@nIdJornada	INT
AS
BEGIN
	SET NOCOUNT ON;
	
		IF EXISTS(SELECT 1 
				  FROM dbo.JornadaAsistencia 
				  WHERE IdLiga = @pnIdLiga
				  AND   IdTorneo = @nIdTorneo AND IdJornada = @nIdJornada)
	BEGIN
		SELECT	CONVERT(BIT, 1) AS Estatus
				,'' AS Mensaje
	END
	ELSE
	BEGIN
		SELECT	CONVERT(BIT, 0) AS Estatus
				,'No existe Junta asociada a esta Jornada. ¿Desea capturar la Junta? De lo contrario se tomará como que todos los quipos asistieron a la Junta.' AS Mensaje
	END
END

