

ALTER PROCEDURE [dbo].[GuardaConfiguracion]
@pnIdLiga INT,
@descripcion AS VARCHAR(250),
@ValorNumerico AS NUMERIC(10,2),
@ValorAlfanumerico AS VARCHAR(250),
@ValorFecha AS SMALLDATETIME,
@idusuario as tinyint
AS

   declare @IdConfiguracion as tinyint

   set @IdConfiguracion = dbo.ObtieneSiguienteIdConfiguracion(@pnIdLiga) 
 
   insert into dbo.Configuracion (
   	IdLiga,
	IdConfiguracion,
   	Descripcion,
   	ValorNumerico,   
   	ValorAlfanumerico,
   	ValorFecha,
   	Activa,   
   	ClaUsuarioMod
   ) VALUES (@pnIdLiga,
			 @IdConfiguracion,
   			 @Descripcion,
   			 @ValorNumerico,
   			 @ValorAlfanumerico,
   			 @ValorFecha,
   			 1,   			 
   			 @idusuario) 


GO