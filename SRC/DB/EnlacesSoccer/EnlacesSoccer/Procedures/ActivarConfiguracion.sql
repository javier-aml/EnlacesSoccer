ALTER PROCEDURE [dbo].[ActivarConfiguracion]
@pnIdLiga	INT=1,
@IdConfiguracion as tinyint,
@idusuario as tinyint
AS

  update dbo.Configuracion 
  set ClaUsuarioMod=@idusuario, fechaultimamod=getdate(), NombrePcMod = HOST_NAME(), Activa=1
  where IdLiga = @pnIdLiga AND IdConfiguracion=@IdConfiguracion
  
 

GO