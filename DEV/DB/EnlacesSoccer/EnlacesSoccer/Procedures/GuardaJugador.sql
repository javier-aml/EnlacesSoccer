

ALTER PROCEDURE [dbo].[GuardaJugador]
@nombre as varchar(100),
@idusuario as tinyint,
@nNumeroNomina as int,
@iFotogragia as image
AS

   declare @idjugador as smallint

   set @idjugador = dbo.ObtieneSiguienteIdJugador() 
 
   insert into dbo.Jugador (
	IdJugador,
	Nombre,
	NumeroNomina,
	ClaUsuarioMod,
	Fotografia
	) SELECT @idjugador, @nombre, @nNumeroNomina,@idusuario, @iFotogragia
