use TorneoDEACERO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Felipe Diaz 
-- Create date: 01/09/2011
-- Description:	Actualiza una junta
-- =============================================
CREATE PROCEDURE dbo.ActualizarJuntaSU
--ALTER PROCEDURE dbo.ActualizarJuntaSU
	@pnIdJunta	smallint,
	@pnIdTorneo	tinyint,
	@psAcuerdos	varchar(500),
	@psObservaciones varchar(500),
	@idusuario tinyint
AS
BEGIN
SET NOCOUNT ON
--Constantes
	
	DECLARE		@dDia		DATETIME	SET @dDia			= GETDATE()

--Variables
	

--Si existe, se actualiza

	IF  EXISTS	(SELECT 1
				FROM	dbo.Junta
				WHERE	IdJunta = @pnIdJunta
					AND IdTorneo= @pnIdTorneo)
	BEGIN
				UPDATE dbo.Junta
				SET	
					Acuerdos		= @psAcuerdos,
					Observaciones	= @psObservaciones,
					FechaUltimaMod	= @dDia,
					NombrePcMod		= 'TEST',
					ClaUsuarioMod	= @idusuario
				WHERE	IdJunta		= @pnIdJunta
					AND IdTorneo	= @pnIdTorneo
	END

SET NOCOUNT OFF
END

