

ALTER PROCEDURE [dbo].[GuardaJugador]
@pnIdLiga INT=1,
@nombre as varchar(100),
@idusuario as tinyint,
@NumeroNomina as int,
@Planta AS VARCHAR(50),
@Contratista AS VARCHAR(50),
@Area AS VARCHAR(50),
@NumeroJugador AS INT,
@Fotografia AS IMAGE = NULL
AS

   declare @idjugador as smallint

   set @idjugador = dbo.ObtieneSiguienteIdJugador(@pnIdLiga) 
 

	insert into dbo.Jugador (
   	IdLiga,
	IdJugador,
   	Nombre,
   	NumeroNomina,
   	Planta,
   	Contratista,
   	Area,
   	NumeroCamisa,
   	Fotografia, 
   	ClaUsuarioMod
   ) VALUES ( 
   @pnIdLiga,
   @idjugador,
   @nombre,
   @NumeroNomina,
   @Planta,
   @Contratista,
   @Area,
   @NumeroJugador,
   @Fotografia,
   	@idusuario) 