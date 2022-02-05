
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- =============================================
-- Author:		Felipe Diaz 
-- Create date: 01/09/2011
-- Description:	Actualiza una junta
-- =============================================
--ALTER PROCEDURE dbo.ActualizarJuntaSU
ALTER PROCEDURE dbo.ActualizarJuntaSU
	@IdLiga	    INT,
	@pnIdJunta	smallint,
	@pnIdTorneo	tinyint,
	@psAcuerdos	varchar(500),
	@psObservaciones varchar(500),
	@idusuario tinyint
AS
BEGIN
SET NOCOUNT ON
--Constantes
	
	DECLARE		@dDia		DATETIME	SET @dDia			= dbo.ObtieneFechaActual()

--Variables
	

--Si existe, se actualiza

	IF  EXISTS	(SELECT 1
				FROM	dbo.Junta
				WHERE	IdLiga = @IdLiga AND IdJunta = @pnIdJunta
					AND IdTorneo= @pnIdTorneo)
	BEGIN
				UPDATE dbo.Junta
				SET	
					Acuerdos		= @psAcuerdos,
					Observaciones	= @psObservaciones,
					FechaUltimaMod	= @dDia,
					NombrePcMod		= 'TEST',
					ClaUsuarioMod	= @idusuario
				WHERE	IdLiga = @IdLiga AND IdJunta		= @pnIdJunta
					AND IdTorneo	= @pnIdTorneo
	END

SET NOCOUNT OFF
END

