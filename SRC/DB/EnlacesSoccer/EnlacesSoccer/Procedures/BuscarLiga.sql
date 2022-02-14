
ALTER PROCEDURE [dbo].[BuscarLiga]
@psNombre as varchar(50),
@pnIdPais as tinyint = 0, --1 --México
@pnIdEstado as smallint = 0, --19 --Estado
@pnIdMunicipio as smallint = 0 --26 --Guadalupe
AS
BEGIN

   select Lig.IdLiga,
		  Lig.Nombre,
		  Lig.Representante,
		  Lig.Telefono,
		  Lig.Correo,
		  Pai.Nombre,
		  Est.Nombre,
		  Mun.Nombre,
		  Activo = CASE
					 WHEN Lig.Activo = 1 THEN 'Activo'
					 ELSE 'Baja'
				   END,
		  Lig.FechaUltimaMod,
		  Lig.NombrePcMod,
		  Lig.ClaUsuarioMod
   from dbo.Liga Lig
   left join dbo.Pais Pai on (Lig.IdPais = Pai.IdPais)
   left join dbo.Estado Est on (Lig.IdPais = Est.IdPais AND Lig.IdEstado = Est.IdEstado)
   left join dbo.Municipio Mun on (Lig.IdPais = Mun.IdPais AND Lig.IdEstado = Mun.IdEstado AND Lig.IdMunicipio = Mun.IdMunicipio)
   where Lig.Nombre like '%' + @psNombre + '%' 
   and (Lig.IdPais = @pnIdPais OR @pnIdPais = 0) AND (Lig.IdEstado = @pnIdEstado OR @pnIdEstado = 0) AND (Lig.IdMunicipio = @pnIdMunicipio OR @pnIdMunicipio = 0)
   order by Pai.Nombre, Est.Nombre, Mun.Nombre, Lig.Nombre
END
GO

/*
--EJEMPLO probando con País: México, Estado:Nuevo León y Municipio: Todos
EXEC [dbo].[BuscarLiga] @psNombre = '', @pnIdPais = 1, @pnIdEstado = 19, @pnIdMunicipio = 0
GO
*/