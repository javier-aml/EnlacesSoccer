ALTER PROCEDURE [dbo].[GuardaTipoSancion]
@pnIdLiga INT=1,
@clave AS VARCHAR(6),
@descripcion AS VARCHAR(250),
@juegossuspension tinyint,
@causabaja BIT,
@idusuario as tinyint
AS

   declare @idtiposancion as tinyint

   set @idtiposancion = dbo.ObtieneSiguienteIdTipoSancion(@pnIdLiga) 
 
   insert into dbo.TipoSancion (
   	IdLiga,
	IdTipoSancion,
   	Clave,
   	Descripcion,
   	JuegosSuspension,
   	CausaBaja,
   	Activa,   
   	ClaUsuarioMod
   ) VALUES (@pnIdLiga,
			 @idtiposancion,
   			 @clave,
   			 @descripcion,
   			 @juegossuspension,
   			 @causabaja,
   			 1,   			 
   			 @idusuario) 


GO