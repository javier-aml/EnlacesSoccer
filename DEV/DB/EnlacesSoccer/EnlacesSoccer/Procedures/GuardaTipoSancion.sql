ALTER PROCEDURE [dbo].[GuardaTipoSancion]
@clave AS VARCHAR(6),
@descripcion AS VARCHAR(250),
@juegossuspension tinyint,
@causabaja BIT,
@idusuario as tinyint
AS

   declare @idtiposancion as tinyint

   set @idtiposancion = dbo.ObtieneSiguienteIdTipoSancion() 
 
   insert into dbo.TipoSancion (
   	IdTipoSancion,
   	Clave,
   	Descripcion,
   	JuegosSuspension,
   	CausaBaja,
   	Activa,   
   	ClaUsuarioMod
   ) VALUES (@idtiposancion,
   			 @clave,
   			 @descripcion,
   			 @juegossuspension,
   			 @causabaja,
   			 1,   			 
   			 @idusuario) 


GO