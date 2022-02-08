

ALTER PROCEDURE [dbo].[ActualizaConfiguracion]
@pnIdLiga	INT=1,
@IdConfiguracion TINYINT,
@descripcion AS VARCHAR(250),
@ValorNumerico AS NUMERIC(10,2),
@ValorAlfanumerico AS VARCHAR(250),
@ValorFecha AS SMALLDATETIME,
@idusuario as tinyint
AS

  
   UPDATE dbo.Configuracion
   SET Descripcion		 = @Descripcion, 	   
       ValorNumerico	 = @ValorNumerico, 	   
       ValorAlfanumerico = @ValorAlfanumerico, 	   
       ValorFecha	     = @ValorFecha, 	   
	   ClaUsuarioMod	 = @idusuario
   WHERE IdLiga = @pnIdLiga	AND IdConfiguracion = @IdConfiguracion

GO