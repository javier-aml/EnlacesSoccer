
ALTER PROCEDURE [dbo].[BuscarLiga]
@sNombre as varchar(50),
@nIdPais as tinyint = 0, --1 --México
@nIdEstado as smallint = 0, --19 --Estado
@nIdMunicipio as smallint = 0 --26 --Guadalupe
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
   where Lig.Nombre like '%' + @sNombre + '%' 
   and (Lig.IdPais = @nIdPais OR @nIdPais = 0) AND (Lig.IdEstado = @nIdEstado OR @nIdEstado = 0) AND (Lig.IdMunicipio = @nIdMunicipio OR @nIdMunicipio = 0)
   order by Pai.Nombre, Est.Nombre, Mun.Nombre, Lig.Nombre
END
GO

/*
--EJEMPLO probando con País: México, Estado:Nuevo León y Municipio: Todos
EXEC [dbo].[BuscarLiga] @sNombre = '', @nIdPais = 1, @nIdEstado = 19, @nIdMunicipio = 0
GO
*/