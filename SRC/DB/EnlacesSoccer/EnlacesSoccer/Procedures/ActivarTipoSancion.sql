CREATE PROCEDURE [dbo].[ActivarTipoSancion]
@idtiposancion as tinyint,
@idusuario as tinyint
AS

  update dbo.TipoSancion 
  set ClaUsuarioMod=@idusuario, fechaultimamod=getdate(), NombrePcMod = HOST_NAME(), Activa=1
  where idtiposancion=@idtiposancion
  


GO