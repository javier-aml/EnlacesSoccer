CREATE PROCEDURE [dbo].[ActivarConfiguracion]
@IdConfiguracion as tinyint,
@idusuario as tinyint
AS

  update dbo.Configuracion 
  set ClaUsuarioMod=@idusuario, fechaultimamod=getdate(), NombrePcMod = HOST_NAME(), Activa=1
  where IdConfiguracion=@IdConfiguracion
  
 

GO