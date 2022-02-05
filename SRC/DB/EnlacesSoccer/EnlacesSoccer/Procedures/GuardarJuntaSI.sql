---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- =============================================
-- Author:		Felipe Diaz 
-- Create date: 06/09/2011
-- Description:	Guarda una nueva junta
-- =============================================
--ALTER PROCEDURE GuardarJuntaSI
ALTER PROCEDURE dbo.GuardarJuntaSI
	@pnIdLiga	INT,
	@psAcuerdos VARCHAR(500),
	@psObservaciones VARCHAR(500),
	@idusuario as tinyint,
	@idTorneo	as tinyInt,
	@dFecha	as Datetime,
	@pnIdJunta as Int output,
	@sError	as VARCHAR(50) OUTPUT
AS
BEGIN
SET NOCOUNT ON
--Constantes
	
	DECLARE		@dDia		SMALLDATETIME	SET @dDia			= dbo.ObtieneFechaActual()

--Variables

	DECLARE		@nIdJunta	INT			SET @nIdJunta		= dbo.ObtieneSiguienteIdJunta(@pnIdLiga)
	
	SET @pnIdJunta = @nIdJunta

	SET @dFecha = CAST(@dFecha AS SMALLDATETIME)

	--Valido si existe una junta para esa fecha
	IF NOT EXISTS	(	SELECT	1 
					FROM	dbo.Junta
					WHERE	DATEDIFF(DAY,0,FechaHora) = 
							DATEDIFF(DAY,0,@dFecha)
					AND     IdLiga = @pnIdLiga
					AND		IdTorneo	= @idTorneo
					)
	BEGIN
		INSERT	INTO		dbo.Junta
		(	
			IdLiga, IdJunta,		FechaHora,		Acuerdos,		Observaciones,
			FechaUltimaMod,	NombrePcMod,	ClaUsuarioMod,	IdTorneo
		)VALUES
		(
			@pnIdLiga, @nIdJunta,		@dFecha,		@psAcuerdos,	@psObservaciones,
			@dDia,			'TEST',			@idusuario,		@idTorneo
		)
	END
	ELSE
	BEGIN
		SET @sError = 'Ya existe una junta para esa fecha-torneo.'
	END

SET NOCOUNT OFF
END

