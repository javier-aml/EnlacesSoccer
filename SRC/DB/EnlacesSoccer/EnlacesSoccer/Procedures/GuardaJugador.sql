

ALTER PROCEDURE [dbo].[GuardaJugador]
@pnIdLiga INT,
@nombre as varchar(100),
@idusuario as tinyint,
@nNumeroNomina as int,
@iFotogragia as image
AS

   declare @idjugador as smallint

   set @idjugador = dbo.ObtieneSiguienteIdJugador(@pnIdLiga) 
 
   insert into dbo.Jugador (
	IdLiga,
	IdJugador,
	Nombre,
	NumeroNomina,
	ClaUsuarioMod,
	Fotografia
	) SELECT @pnIdLiga, @idjugador, @nombre, @nNumeroNomina,@idusuario, @iFotogragia
