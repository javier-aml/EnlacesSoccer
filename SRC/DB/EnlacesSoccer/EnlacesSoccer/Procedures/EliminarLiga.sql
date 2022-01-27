
ALTER PROCEDURE [dbo].[EliminarLiga]
@nIdLiga as int,
@dFechaUltimaMod as smalldatetime = getdate,
@sNombrePcMod as varchar(50) = host_name,
@nClaUsuarioMod as tinyint = 0
AS

BEGIN
  
 
   update dbo.Liga 
   set Activo = 0,
	   FechaUltimaMod = @dFechaUltimaMod,
	   NombrePcMod = @sNombrePcMod,
	   ClaUsuarioMod = @nClaUsuarioMod
	where IdLiga = @nIdLiga

END
GO


/*
begin tran

declare @dFechaUltimaMod as smalldatetime
set @dFechaUltimaMod = getdate()

EXEC [dbo].[EliminarLiga]
	@nIdLiga = 2,
	@dFechaUltimaMod = @dFechaUltimaMod,
	@sNombrePcMod = 'Carga Inicial',
	@nClaUsuarioMod = 1

	select * from dbo.Liga

rollback tran

*/