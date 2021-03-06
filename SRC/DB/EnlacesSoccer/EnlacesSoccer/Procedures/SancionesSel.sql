USE [EnlacesSoccer]
GO
/****** Object:  StoredProcedure [dbo].[SancionesSel]    Script Date: 07/02/2022 05:28:48 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,> exec PartidosPorJornadaPorTorneoReporte 1,2
-- =============================================

ALTER PROCEDURE [dbo].[SancionesSel]
@pnIdLiga	INT=1
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT	IdTipoSancion,
			Clave,
			Descripcion,
			CONVERT(BIT, 0) AS Flag,
			JuegosSuspension
	FROM	dbo.TipoSancion
	WHERE	IdLiga = @pnIdLiga	AND Activa = 1
	ORDER BY Clave

SET NOCOUNT OFF
END