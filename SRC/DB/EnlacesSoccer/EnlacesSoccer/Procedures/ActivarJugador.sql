ALTER PROCEDURE [dbo].[ActivarJugador]
@pnIdLiga	INT=1,
@idjugador as smallint,
@idusuario as tinyint
AS

  update dbo.Jugador 
  set ClaUsuarioMod=@idusuario, fechaultimamod=getdate(), activo=1
  where IdLiga = @pnIdLiga AND idjugador=@idjugador
  

GO