ALTER PROCEDURE [dbo].[EliminaConfiguracion]
@pnIdLiga	INT=1,
@IdConfiguracion as tinyint,
@idusuario as tinyint
AS

  update dbo.Configuracion 
  set ClaUsuarioMod=@idusuario, fechaultimamod=getdate(), NombrePcMod = HOST_NAME(), Activa=0
  where IdLiga = @pnIdLiga AND IdConfiguracion=@IdConfiguracion
  
 

GO