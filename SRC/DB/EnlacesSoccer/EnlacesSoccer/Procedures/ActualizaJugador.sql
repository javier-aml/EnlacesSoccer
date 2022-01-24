
ALTER  PROCEDURE [dbo].[ActualizaJugador]
@idjugador as SMALLINT,
@nombre AS VARCHAR(100),
@idusuario as tinyint,
@nNumeroNomina as int,
@iFotogragia as image
AS

   update jugador
   set nombre=@nombre, 	   
	   ClaUsuarioMod=@idusuario,
		NumeroNomina	= @nNumeroNomina,
		Fotografia		= @iFotogragia
   where idjugador=@idjugador
