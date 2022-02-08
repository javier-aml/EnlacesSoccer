ALTER PROCEDURE [dbo].[ActivarArbitro]
@pnIdLiga	INT=1,
@idArbitro as tinyint,
@idusuario as tinyint
AS

  update dbo.Arbitro 
  set ClaUsuarioMod=@idusuario, fechaultimamod=getdate(), activo=1
  where IdLiga = @pnIdLiga AND idArbitro=@idArbitro
  

GO