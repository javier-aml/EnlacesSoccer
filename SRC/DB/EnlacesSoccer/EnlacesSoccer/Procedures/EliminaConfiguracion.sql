CREATE PROCEDURE [dbo].[EliminaConfiguracion]
@IdConfiguracion as tinyint,
@idusuario as tinyint
AS

  update dbo.Configuracion 
  set ClaUsuarioMod=@idusuario, fechaultimamod=getdate(), NombrePcMod = HOST_NAME(), Activa=0
  where IdConfiguracion=@IdConfiguracion
  
 

GO