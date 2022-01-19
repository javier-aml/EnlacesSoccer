USE [TorneoDeacero]
GO

/****** Object:  StoredProcedure [dbo].[jornadaPartidoActualizaHora]    Script Date: 02/27/2016 20:04:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[jornadaPartidoActualizaHora]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[jornadaPartidoActualizaHora]
GO

USE [TorneoDeacero]
GO

/****** Object:  StoredProcedure [dbo].[jornadaPartidoActualizaHora]    Script Date: 02/27/2016 20:04:56 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[jornadaPartidoActualizaHora]
	@nIdTorneo		TINYINT,
	@nIdJornada		TINYINT,
	@nIdEquipo1		TINYINT,
	@nIdEquipo2		TINYINT,
	@nProgramado	BIT,
	@tFechaHora		SMALLDATETIME,
	@sNombrePcMod	VARCHAR(50),
	@nClaUsuarioMod	TINYINT
AS
BEGIN
SET NOCOUNT ON;
	--DECLARACION DE VARIABLES
	DECLARE @tFechaActual	DATETIME	SET @tFechaActual = GETDATE()

	UPDATE [dbo].[JornadaPartido]
	SET		Programado		= @nProgramado,
			FechaHora		= @tFechaHora,
			FechaUltimaMod	= @tFechaActual,
			NombrePcMod		= @sNombrePcMod,
			ClaUsuarioMod	= @nClaUsuarioMod
	WHERE	IdTorneo	= @nIdTorneo
		AND	IdJornada	= @nIdJornada
		AND IdEquipo1	= @nIdEquipo1
		AND IdEquipo2	= @nIdEquipo2
END


GO


