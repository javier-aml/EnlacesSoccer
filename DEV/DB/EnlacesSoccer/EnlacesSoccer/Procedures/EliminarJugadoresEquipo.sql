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

Create PROCEDURE eliminarJugadoresEquipo
	@nIdTorneo		INT,
	@nIdEquipo		INT
AS
BEGIN

	SET NOCOUNT ON;


	--Selecciono los jugadores que estan libres para seleccionar en ese torneo.
	DELETE	TorneoEquipoJugador
	WHERE	IdTorneo = @nIdTorneo
		AND	IdEquipo = @nIdEquipo
								
END
