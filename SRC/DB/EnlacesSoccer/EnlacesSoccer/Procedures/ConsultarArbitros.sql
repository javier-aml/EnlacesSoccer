SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

CREATE PROCEDURE ConsultarArbitros
	@nActivo		int
AS
BEGIN
	SET NOCOUNT ON;

	SELECT IdArbitro
		  ,Nombre
	FROM	Arbitro
	WHERE (@nActivo = -1) OR Activo = @nActivo
	ORDER BY Nombre 

END