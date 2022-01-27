
ALTER PROCEDURE [dbo].[ActualizarLiga]
@nIdLiga as int,
@sNombre as varchar(100),
@sRepresentante as varchar(100),
@nTelefono as bigint,
@sCorreo as varchar(50),
@nIdPais as tinyint,
@nIdEstado as smallint,
@nIdMunicipio as smallint,
@nActivo as bit = 1,
@dFechaUltimaMod as smalldatetime = getdate,
@sNombrePcMod as varchar(50) = host_name,
@nClaUsuarioMod as tinyint = 0
AS

BEGIN

   if exists(select 1 from dbo.Liga where IdLiga <> @nIdLiga and Nombre = @sNombre)	
   begin
      raiserror('El nombre de la liga ya existe, favor de verificar', 1, 16)
	  return
   end
   
 
   update dbo.Liga 
   set Nombre = @sNombre,
	   Representante = @sRepresentante,
	   Telefono = @nTelefono,
	   Correo = @sCorreo,
	   IdPais = @nIdPais,
	   IdEstado = @nIdEstado,
	   IdMunicipio = @nIdMunicipio,
	   Activo = @nActivo,
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

EXEC [dbo].[ActualizarLiga]
	@nIdLiga = 2,
	@sNombre = 'Liga Santa Cruz',
	@sRepresentante = 'Javier Arredondo',
	@nTelefono = 4612347082,
	@sCorreo = 'javo97@gmail.com',
	@nIdPais = 1,
	@nIdEstado = 19,
	@nIdMunicipio = 26,
	@nActivo = 1,
	@dFechaUltimaMod = @dFechaUltimaMod,
	@sNombrePcMod = 'Carga Inicial',
	@nClaUsuarioMod = 1

	select * from dbo.Liga

rollback tran

*/