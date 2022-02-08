
CREATE PROCEDURE [dbo].[ActivarEquipo]
@pnIdLiga as int,
@pnIdEquipo as int,
@pdFechaUltimaMod as smalldatetime = getdate,
@psNombrePcMod as varchar(50) = host_name,
@pnClaUsuarioMod as tinyint = 0
AS

BEGIN
  
 
   update dbo.Equipo 
   set Activo = 1,
	   FechaUltimaMod = @pdFechaUltimaMod,
	   NombrePcMod = @psNombrePcMod,
	   ClaUsuarioMod = @pnClaUsuarioMod
	where IdLiga = @pnIdLiga AND IdEquipo = @pnIdEquipo

END
GO


/*
begin tran

declare @dFechaUltimaMod as smalldatetime
set @dFechaUltimaMod = getdate()

EXEC [dbo].[EliminarEquipo]
	@pnIdLiga = 1,
	@pnIdEquipo = 2,
	@pdFechaUltimaMod = @dFechaUltimaMod,
	@psNombrePcMod = 'Carga Inicial',
	@pnClaUsuarioMod = 1

	select * from dbo.Equipo

EXEC [dbo].[ActivarEquipo]
	@pnIdLiga = 1,
	@pnIdEquipo = 2,
	@pdFechaUltimaMod = @dFechaUltimaMod,
	@psNombrePcMod = 'Carga Inicial',
	@pnClaUsuarioMod = 1

	select * from dbo.Equipo

rollback tran

*/