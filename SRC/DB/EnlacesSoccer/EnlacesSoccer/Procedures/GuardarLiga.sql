
CREATE PROCEDURE [dbo].[GuardarLiga]
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

   declare @nIdLiga as int

   set @nIdLiga = dbo.ObtieneSiguienteIdLiga() 
 
   insert into dbo.Liga (
			[IdLiga]
           ,[Nombre]
		   ,[Representante]
		   ,[Telefono]
		   ,[Correo]
		   ,[IdPais]
		   ,[IdEstado] 
		   ,[IdMunicipio]
		   ,[Activo]
           ,[FechaUltimaMod]
           ,[NombrePcMod]
           ,[ClaUsuarioMod]
	) 
	Values( @nIdLiga,
			@sNombre,
			@sRepresentante,
			@nTelefono,
			@sCorreo,
			@nIdPais,
			@nIdEstado,
			@nIdMunicipio,
			@nActivo,
			@dFechaUltimaMod,
			@sNombrePcMod,
			@nClaUsuarioMod)

END
GO


/*
begin tran

declare @dFechaUltimaMod as smalldatetime
set @dFechaUltimaMod = getdate()

EXEC [dbo].[GuardarLiga]
	@sNombre = 'Liga San Roberto',
	@sRepresentante = 'Javier Arredondo',
	@nTelefono = 4611246194,
	@sCorreo = 'javo97@gmail.com',
	@nIdPais = 1,
	@nIdEstado = 19,
	@nIdMunicipio = 19,
	@nActivo = 1,
	@dFechaUltimaMod = @dFechaUltimaMod,
	@sNombrePcMod = 'Carga Inicial',
	@nClaUsuarioMod = 0

	select * from dbo.Liga

commit tran

*/