CREATE PROCEDURE [dbo].[ActivarArbitro]
@idArbitro as tinyint,
@idusuario as tinyint
AS

  update dbo.Arbitro 
  set ClaUsuarioMod=@idusuario, fechaultimamod=getdate(), activo=1
  where idArbitro=@idArbitro
  

GO