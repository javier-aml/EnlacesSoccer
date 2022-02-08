SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

ALTER PROCEDURE ConsultarArbitros
	@pnIdLiga	INT=1,
	@nActivo		int
AS
BEGIN
	SET NOCOUNT ON;

	SELECT IdArbitro
		  ,Nombre
	FROM	Arbitro
	WHERE IdLiga = @pnIdLiga AND (@nActivo = -1) OR Activo = @nActivo
	ORDER BY Nombre 

END