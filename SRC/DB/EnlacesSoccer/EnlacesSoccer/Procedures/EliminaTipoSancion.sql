CREATE PROCEDURE [dbo].[EliminaTipoSancion]
@idtiposancion as tinyint,
@idusuario as tinyint
AS

  update dbo.TipoSancion 
  set    ClaUsuarioMod=@idusuario, fechaultimamod=getdate(), NombrePcMod = HOST_NAME(), Activa=0
  where  idtiposancion=@idtiposancion
  

GO