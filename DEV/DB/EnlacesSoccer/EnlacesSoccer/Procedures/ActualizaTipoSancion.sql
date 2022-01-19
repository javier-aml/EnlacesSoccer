ALTER PROCEDURE [dbo].[ActualizaTipoSancion]
@idtiposancion as tinyint,
@clave AS VARCHAR(6),
@descripcion AS VARCHAR(250),
@juegossuspension TINYINT,
@causabaja BIT,
@idusuario as tinyint
AS

   UPDATE dbo.TipoSancion
   set clave=@clave, 	   
       descripcion=@descripcion, 	   
       juegossuspension=@juegossuspension, 	   
       causabaja=@causabaja, 	   
	   ClaUsuarioMod=@idusuario
   where IdTipoSancion=@IdTipoSancion

GO