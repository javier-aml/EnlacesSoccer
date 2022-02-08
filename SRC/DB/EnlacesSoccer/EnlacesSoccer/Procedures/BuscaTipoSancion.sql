USE [EnlacesSoccer]
GO
/****** Object:  StoredProcedure [dbo].[BuscaTipoSancion]    Script Date: 07/02/2022 10:49:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[BuscaTipoSancion]
@pnIdLiga	INT=1,
@descripcion as varchar(250)
AS

   select IdTipoSancion,
		  Clave,
		  Descripcion,
		  JuegosSuspension,
		  CausaBaja = CASE
					     WHEN CausaBaja = 1 THEN 'SI'
					     ELSE 'NO'
				      END,
		  Activa = CASE
					 WHEN Activa = 1 THEN 'Activa'
					 ELSE 'Baja'
				   END		
   from dbo.TipoSancion 
   where IdLiga = @pnIdLiga	AND Descripcion like '%' + @Descripcion + '%' 
   order by Descripcion, CausaBaja



GO