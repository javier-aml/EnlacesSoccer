USE [EnlacesSoccer]
GO
/****** Object:  StoredProcedure [dbo].[ActivarLiga]    Script Date: 08/02/2022 12:01:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[ActivarLiga]
@nIdLiga as int=1,
@dFechaUltimaMod as smalldatetime = getdate,
@sNombrePcMod as varchar(50) = host_name,
@nClaUsuarioMod as tinyint = 0
AS

BEGIN
  
 
   update dbo.Liga 
   set Activo = 1,
	   FechaUltimaMod = @dFechaUltimaMod,
	   NombrePcMod = @sNombrePcMod,
	   ClaUsuarioMod = @nClaUsuarioMod
	where IdLiga = @nIdLiga

END
