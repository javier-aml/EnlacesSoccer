CREATE PROCEDURE [dbo].[ActivarJugador]
@idjugador as smallint,
@idusuario as tinyint
AS

  update dbo.Jugador 
  set ClaUsuarioMod=@idusuario, fechaultimamod=getdate(), activo=1
  where idjugador=@idjugador
  

GO