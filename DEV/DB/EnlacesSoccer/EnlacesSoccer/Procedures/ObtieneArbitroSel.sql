
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Felipe Diaz 
-- Create date: 01/09/2011
-- Description:	Obitene un  arbitro
-- =============================================
CREATE PROCEDURE dbo.ObtieneArbitroSel
--ALTER PROCEDURE dbo.ObtieneArbitroSel
	@nIdArbitro as INT
AS
BEGIN
SET NOCOUNT ON

   SELECT	Nombre,		ISNULL(Telefono,0) as Telefono
   FROM		dbo.Arbitro
   WHERE	IdArbitro	= @nIdArbitro

SET NOCOUNT OFF
END

