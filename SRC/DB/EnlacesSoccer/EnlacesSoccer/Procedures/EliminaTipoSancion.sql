ALTER PROCEDURE [dbo].[EliminaTipoSancion]
@pnIdLiga	INT=1,
@idtiposancion as tinyint,
@idusuario as tinyint
AS

  update dbo.TipoSancion 
  set    ClaUsuarioMod=@idusuario, fechaultimamod=getdate(), NombrePcMod = HOST_NAME(), Activa=0
  where  IdLiga = @pnIdLiga AND idtiposancion=@idtiposancion
  

GO


