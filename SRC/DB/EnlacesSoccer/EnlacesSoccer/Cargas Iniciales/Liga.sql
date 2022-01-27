
begin tran

select * from [dbo].[Liga]
select * from pais
select * from estado 
select * from municipio where idpais = 1 and idestado = 19

INSERT INTO [dbo].[Liga]
           ([IdLiga]
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
           ,[ClaUsuarioMod])
select [IdLiga] = 1,[Nombre]='Kalcho San Roque',[Representante] = 'Arturo Rodríguez',[Telefono] = 4611246194,[Correo] = 'arturo.rodriguez.abud@gmail.com',[IdPais] = 1,[IdEstado] = 19,[IdMunicipio] = 26, Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select [IdLiga] = 2,[Nombre]='Liga Santa Cruz',[Representante] = 'Javier Arredondo',[Telefono] = 4611246194,[Correo] = 'javo97@gmail.com',[IdPais] = 1,[IdEstado] = 19,[IdMunicipio] = 26, Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all          
select [IdLiga] = 3,[Nombre]='Mirador Canteras',[Representante] = 'Dante Rodríguez',[Telefono] = 8182755719,[Correo] = 'arturo.rodriguez.abud@gmail.com',[IdPais] = 1,[IdEstado] = 19,[IdMunicipio] = 19, Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1           
GO

select * from [dbo].[Liga]


commit tran