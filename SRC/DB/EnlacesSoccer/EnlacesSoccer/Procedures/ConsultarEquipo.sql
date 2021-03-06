USE [EnlacesSoccer]
GO
/****** Object:  StoredProcedure [dbo].[ConsultarEquipo]    Script Date: 08/02/2022 12:12:41 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

ALTER PROCEDURE [dbo].[ConsultarEquipo]
@pnIdLiga   int = 1,
@pnIdEquipo int
AS
BEGIN

	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT Nombre
		  ,Activo
		  ,FechaUltimaMod
		  ,NombrePcMod
		  ,ClaUsuarioMod
	FROM	Equipo
	WHERE IdLiga = @pnIdLiga AND IdEquipo = @pnIdEquipo

END
