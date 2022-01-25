USE [TorneoDEACERO]
GO
/****** Object:  StoredProcedure [dbo].[ConsultarEquipos]    Script Date: 09/02/2011 17:57:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

CREATE PROCEDURE RegistrarJugadorEquipo
	@nIdTorneo		INT,
	@nIdEquipo		INT,
	@nIdJugador		INT,
	@nNumero		INT,
	@sNombrePcMod	VARCHAR(50),
	@nClaUsuarioMod	INT
AS
BEGIN

	SET NOCOUNT ON;

	--DECLARACION DE VARIABLES
	DECLARE @nFechaActual		DATETIME		SET @nFechaActual = GETDATE()

	INSERT INTO TorneoEquipoJugador
           (IdTorneo
           ,IdEquipo
           ,IdJugador
           ,PartidosJugados
           ,GolesAnotados
           ,TarjetasAmarillasRecibidas
           ,TarjetasRojasRecibidas
           ,FechaUltimaMod
           ,NombrePcMod
           ,ClaUsuarioMod
           ,NumeroJugador)
     SELECT 
           IdTorneo						= @nIdTorneo
           ,IdEquipo					= @nIdEquipo
           ,IdJugador					= @nIdJugador
           ,PartidosJugados				= 0
           ,GolesAnotados				= 0
           ,TarjetasAmarillasRecibidas	= 0
           ,TarjetasRojasRecibidas		= 0
           ,FechaUltimaMod				= @nFechaActual
           ,NombrePcMod					= @sNombrePcMod
           ,ClaUsuarioMod				= @nClaUsuarioMod
           ,NumeroJugador				= @nNumero


								
END
