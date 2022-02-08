USE [EnlacesSoccer]
GO
/****** Object:  StoredProcedure [dbo].[EliminaJugador]    Script Date: 07/02/2022 05:16:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[EliminaJugador]
@pnIdLiga	INT=1,
@idjugador as smallint,
@idusuario as tinyint
AS

  update dbo.Jugador 
  set ClaUsuarioMod=@idusuario, fechaultimamod=getdate(), activo=0
  where IdLiga = @pnIdLiga AND idjugador=@idjugador
  
