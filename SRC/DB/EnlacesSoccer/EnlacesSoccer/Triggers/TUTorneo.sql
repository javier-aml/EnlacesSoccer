USE [EnlacesSoccer]
GO
/****** Object:  Trigger [dbo].[TUTorneo]    Script Date: 07/02/2022 10:21:05 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER TRIGGER [dbo].[TUTorneo]  
   ON  [dbo].[Torneo]
   AFTER UPDATE
AS 
declare
	@folio	int
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	select @folio = max(folio) 
	from
		TMPUpdateTorneo
	
	set @folio = isNull( @folio, 0 ) +1

	insert TMPUpdateTorneo
	( IdLiga, IdTorneo, Nombre, FechaUltimaMod, NombrePcMod, ClaUsuarioMod, ActivoAnterior, 
		computerName,  fechaUltimoCambio, folio )
	select IdLiga, IdTorneo, Nombre, FechaUltimaMod, NombrePcMod, ClaUsuarioMod, Activo, 
		host_name(), getdate(), @folio
	from deleted	
	/*
		select IdTorneo, Nombre, FechaUltimaMod, NombrePcMod, ClaUsuarioMod, Activo, 
		host_name(), getdate(), @folio
	from inserted	*/
	
	
	insert TMPUpdateTorneo
	( IdLiga, IdTorneo, Nombre, FechaUltimaMod, NombrePcMod, ClaUsuarioMod, ActivoAnterior, 
		computerName,  fechaUltimoCambio, folio )
	select IdLiga, IdTorneo, Nombre, FechaUltimaMod, NombrePcMod, ClaUsuarioMod, Activo, 
		host_name(), getdate(), @folio
	from inserted	

END
