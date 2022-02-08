ALTER  PROCEDURE [dbo].[ActualizaJugador]
@pnIdLiga	INT=1,
@idjugador as SMALLINT,
@nombre AS VARCHAR(100),
@idusuario as tinyint,
@NumeroNomina as int,
@Planta AS VARCHAR(50),
@Contratista AS VARCHAR(50),
@Area AS VARCHAR(50),
@NumeroJugador AS INT,
@Fotografia AS IMAGE = NULL
AS

   update jugador
   set nombre=@nombre, 	   
	   ClaUsuarioMod=@idusuario,
		NumeroNomina	= @NumeroNomina,
		Planta = @Planta,
	   Contratista = @Contratista,
	   Area = @Area,
	   NumeroCamisa = @NumeroJugador,
	   Fotografia = ISNULL(@Fotografia,Fotografia)
   where IdLiga = @pnIdLiga	AND idjugador=@idjugador
