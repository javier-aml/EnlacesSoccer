--USE [EnlacesSoccer]
--GO

begin tran

select * from [dbo].[Pais]

INSERT INTO [dbo].[Pais]
           ([IdPais]
           ,[Nombre]
           ,[Activo]
           ,[FechaUltimaMod]
           ,[NombrePcMod]
           ,[ClaUsuarioMod])
select IdPais = 0,Nombre ='SIN ASIGNAR', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1,Nombre ='MEXICO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 2,Nombre ='Estados Unidos de América', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 3,Nombre ='Suiza', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 4,Nombre ='Alemania', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 5,Nombre ='España', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6,Nombre ='Francia', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 7,Nombre ='Italia', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 8,Nombre ='Andorra', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 9,Nombre ='Emiratos Arabes Unidos', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 10,Nombre ='Afganistán', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 11,Nombre ='Antigua', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 12,Nombre ='Anguilla', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 13,Nombre ='Albania', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 14,Nombre ='Antillas Holandesas', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 15,Nombre ='Angola', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 16,Nombre ='Antártica', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 17,Nombre ='Argentina', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 18,Nombre ='Samao Americana', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 19,Nombre ='Austria', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 20,Nombre ='Australia', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 21,Nombre ='Aruba', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 22,Nombre ='Brunei Darrasalam', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 23,Nombre ='Barbados', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 24,Nombre ='Bangladesh', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 25,Nombre ='Bélgica', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 26,Nombre ='Burkina Faso', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 27,Nombre ='Bulgaria', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 28,Nombre ='Bahrein', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 29,Nombre ='Burundi', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 30,Nombre ='Benin', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 31,Nombre ='Bermuda', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 32,Nombre ='Bolivia', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 33,Nombre ='Brasil', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 34,Nombre ='Bahamas', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 35,Nombre ='Buthan', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 36,Nombre ='Burma', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 37,Nombre ='Isla Bouvet', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 38,Nombre ='Botswana', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 39,Nombre ='Bielorrusia', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 40,Nombre ='Canadá', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 41,Nombre ='Isla Cocos', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 42,Nombre ='Rep. Centro Africana', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 43,Nombre ='Congo', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 44,Nombre ='Costa de Marfíl', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 45,Nombre ='Islas Cook', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 46,Nombre ='Chile', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 47,Nombre ='Camerún', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 48,Nombre ='China', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 49,Nombre ='Colombia', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 50,Nombre ='Costa Rica', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 51,Nombre ='Rep. Checa y Rep. Eslovaca', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 52,Nombre ='Cuba', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 53,Nombre ='Cabo Verde', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 54,Nombre ='Isla Navidad', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 55,Nombre ='Chipre', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 56,Nombre ='Djibouti', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 57,Nombre ='Dinamarca', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 58,Nombre ='República Dominicana', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 59,Nombre ='Argelia', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 60,Nombre ='Ecuador', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 61,Nombre ='Egipto', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 62,Nombre ='Sahara del Oeste', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 63,Nombre ='Etiopía', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 64,Nombre ='Finlandia', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 65,Nombre ='Fiji', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 66,Nombre ='Islas Malvinas', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 67,Nombre ='Micronesia', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 68,Nombre ='Islas Faroe', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 69,Nombre ='Gabón', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70,Nombre ='Gran Bretaña (Reino Unido)', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 71,Nombre ='Granada', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 72,Nombre ='Guyana Francesa', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 73,Nombre ='Ghana', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 74,Nombre ='Gibraltar', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 75,Nombre ='Groelandia', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 76,Nombre ='Gambia', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 77,Nombre ='Guinea', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 78,Nombre ='Guadalupe', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 79,Nombre ='Guinea Ecuatorial', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 80,Nombre ='Grecia', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 81,Nombre ='Guatemala', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 82,Nombre ='Guam', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 83,Nombre ='Guinea Bissau', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 84,Nombre ='Guyana', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 85,Nombre ='Hong Kong', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 86,Nombre ='Islas Heard and Mc Donald', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 87,Nombre ='Honduras', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 88,Nombre ='Haití', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 89,Nombre ='Hungría', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 90,Nombre ='Indonesia', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 91,Nombre ='Irlanda', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 92,Nombre ='Israel', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 93,Nombre ='India', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 94,Nombre ='Territorio Britanico en el Oceano Indico', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 95,Nombre ='Iraq', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 96,Nombre ='Irán', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 97,Nombre ='Islandia', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 98,Nombre ='Jamaica', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 99,Nombre ='Jordania', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 100,Nombre ='Japón', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 101,Nombre ='Kenia', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 102,Nombre ='Capuchea Democrática', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 103,Nombre ='Kiribati', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 104,Nombre ='Comoros', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 105,Nombre ='Saint Kitt and Nevis', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 106,Nombre ='República Democrática de Korea', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 107,Nombre ='República de Korea', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 108,Nombre ='Kuwait', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 109,Nombre ='Islas Caimán', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 110,Nombre ='República Democrática de Laos', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 111,Nombre ='Líbano', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 112,Nombre ='Santa Lucía', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 113,Nombre ='Liechtenstein', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 114,Nombre ='Sri Lanka', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 115,Nombre ='Liberia', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 116,Nombre ='Lesotho', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 117,Nombre ='Luxemburgo', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 118,Nombre ='Libia', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 119,Nombre ='Marruecos', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 120,Nombre ='Mónaco', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 121,Nombre ='Madagascar', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 122,Nombre ='Islas Marsall', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 123,Nombre ='Mali', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 124,Nombre ='Mongolia', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 125,Nombre ='Macao', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 126,Nombre ='Islas Marianas del Noroeste', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 127,Nombre ='Martinica', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 128,Nombre ='Mauritania', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 129,Nombre ='Monserrat', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 130,Nombre ='Malta', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 131,Nombre ='Mauricio', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 132,Nombre ='Maldivas', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 133,Nombre ='Malawi', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 134,Nombre ='Malasia', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 135,Nombre ='Mozanbique', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 136,Nombre ='Namibia', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 137,Nombre ='Nueva Celedonia', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 138,Nombre ='Níger', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 139,Nombre ='Islas Nortfolk', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 140,Nombre ='Nigeria', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 141,Nombre ='Nicaragua', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 142,Nombre ='Holanda', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 143,Nombre ='Noruega', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 144,Nombre ='Nepal', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 145,Nombre ='Nauru', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 146,Nombre ='Zona Neutral', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 147,Nombre ='Niue', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 148,Nombre ='Nueva Zelandia', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 149,Nombre ='Omán', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 150,Nombre ='Panamá', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 151,Nombre ='Perú', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 152,Nombre ='Polinesia Francesa', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 153,Nombre ='Papúa Nueva Guinea', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 154,Nombre ='Filipinas', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 155,Nombre ='Pakistán', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 156,Nombre ='Polonia', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 157,Nombre ='St. Pierre and Miquelon', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 158,Nombre ='Pitcaim', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 159,Nombre ='Puerto Rico', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 160,Nombre ='Portugal', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 161,Nombre ='Palau', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 162,Nombre ='Paraguay', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 163,Nombre ='Qatar', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 164,Nombre ='Reunión', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 165,Nombre ='Rumania', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 166,Nombre ='Rhuanda', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 167,Nombre ='Arabia Saudita', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 168,Nombre ='Islas Salomón', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 169,Nombre ='Islas Seychelles', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 170,Nombre ='Sudán', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 171,Nombre ='Suecia', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 172,Nombre ='Singapur', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 173,Nombre ='Santa Elena', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 174,Nombre ='Islas Svalbard and Jan Mayen', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 175,Nombre ='Sierra Leona', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 176,Nombre ='San Marino', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 177,Nombre ='Senegal', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 178,Nombre ='Somalia', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 179,Nombre ='Surinam', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 180,Nombre ='Sao Tome y Príncipe', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 181,Nombre ='Países EX-URSS excepto Ukrania y Bielorr', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 182,Nombre ='El Salvador', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 183,Nombre ='Siria', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 184,Nombre ='Swazilandia', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 185,Nombre ='Islas Turcas e Is. Caicos', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 186,Nombre ='Chad', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 187,Nombre ='Territorios Franceses del Sureste', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 188,Nombre ='Togo', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 189,Nombre ='Thailandia', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 190,Nombre ='Tokalau', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 191,Nombre ='Túnez', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 192,Nombre ='Timor Este', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 193,Nombre ='Turquía', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 194,Nombre ='Trinidad y Tobago', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 195,Nombre ='Tuvalu', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 196,Nombre ='Taiwán', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 197,Nombre ='Tanzania', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 198,Nombre ='Ucrania', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 199,Nombre ='Uganda', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 200,Nombre ='Islas Menores alejadas de EE.UU', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 201,Nombre ='Uruguay', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 202,Nombre ='El Vaticano', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 203,Nombre ='San Vicente y las Granadinas', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 204,Nombre ='Venezuela', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 205,Nombre ='Islas Vírgenes Británicas', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 206,Nombre ='Islas Vígenes E.U.A.', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 207,Nombre ='Vietnam', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 208,Nombre ='Vanatu', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 209,Nombre ='Islas Wallis y Funtuna', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 210,Nombre ='Samoa', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 211,Nombre ='Yemen Democrática', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 212,Nombre ='Yemen', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 213,Nombre ='Países de la Ex-Yugoslavia', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 214,Nombre ='Sudáfrica', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 215,Nombre ='Zambia', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 216,Nombre ='Zaire', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 217,Nombre ='Zimbawe', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 218,Nombre ='Otros', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219,Nombre ='Slovakia', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 220,Nombre ='Estonia', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 221,Nombre ='Latvia', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 222,Nombre ='Lithuania', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 223,Nombre ='Slovenia', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 224,Nombre ='CURACAO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 225,Nombre ='Belice', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 

select * from [dbo].[Pais]



select * from Estado

INSERT INTO [dbo].[Estado]
           ([IdPais]
           ,[IdEstado]
           ,[Nombre]
           ,[Activo]
           ,[FechaUltimaMod]
           ,[NombrePcMod]
           ,[ClaUsuarioMod])
 
select IdPais = 0, IdEstado = 0, Nombre ='SIN ASIGNAR', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 1, Nombre ='AGUASCALIENTES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 2, Nombre ='BAJA CALIFORNIA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 3, Nombre ='BAJA CALIFORNIA SUR', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 4, Nombre ='CAMPECHE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 5, Nombre ='COAHUILA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 6, Nombre ='COLIMA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, Nombre ='CHIAPAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, Nombre ='CHIHUAHUA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 9, Nombre ='DISTRITO FEDERAL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 10, Nombre ='DURANGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 11, Nombre ='GUANAJUATO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, Nombre ='GUERRERO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, Nombre ='HIDALGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, Nombre ='JALISCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, Nombre ='MEXICO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, Nombre ='MICHOACAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 17, Nombre ='MORELOS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 18, Nombre ='NAYARIT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 19, Nombre ='NUEVO LEON', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, Nombre ='OAXACA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, Nombre ='PUEBLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 22, Nombre ='QUERETARO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 23, Nombre ='QUINTANA ROO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 24, Nombre ='SAN LUIS POTOSI', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 25, Nombre ='SINALOA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, Nombre ='SONORA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 27, Nombre ='TABASCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 28, Nombre ='TAMAULIPAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 29, Nombre ='TLAXCALA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, Nombre ='VERACRUZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, Nombre ='YUCATAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 32, Nombre ='ZACATECAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 2, IdEstado = 1, Nombre ='Alaska', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 2, IdEstado = 2, Nombre ='Alabama', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 2, IdEstado = 3, Nombre ='Arkansas', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 2, IdEstado = 5, Nombre ='Arizona', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 2, IdEstado = 6, Nombre ='California', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 2, IdEstado = 7, Nombre ='Colorado', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 2, IdEstado = 8, Nombre ='Connecticut', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 2, IdEstado = 9, Nombre ='District of Columbia', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 2, IdEstado = 10, Nombre ='Delaware', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 2, IdEstado = 11, Nombre ='Florida', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 2, IdEstado = 12, Nombre ='Georgia', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 2, IdEstado = 13, Nombre ='Guam', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 2, IdEstado = 14, Nombre ='Hawaii', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 2, IdEstado = 15, Nombre ='Iowa', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 2, IdEstado = 16, Nombre ='Idaho', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 2, IdEstado = 17, Nombre ='Illinois', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 2, IdEstado = 18, Nombre ='Indiana', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 2, IdEstado = 19, Nombre ='Kansas', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 2, IdEstado = 20, Nombre ='Kentucky', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 2, IdEstado = 21, Nombre ='Louisiana', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 2, IdEstado = 22, Nombre ='Massachusetts', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 2, IdEstado = 23, Nombre ='Maryland', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 2, IdEstado = 24, Nombre ='Maine', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 2, IdEstado = 25, Nombre ='Michigan', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 2, IdEstado = 26, Nombre ='Minnesota', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 2, IdEstado = 27, Nombre ='Missouri', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 2, IdEstado = 29, Nombre ='Mississippi', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 2, IdEstado = 30, Nombre ='Montana', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 2, IdEstado = 31, Nombre ='North Carolina', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 2, IdEstado = 32, Nombre ='North Dakota', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 2, IdEstado = 33, Nombre ='Nebraska', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 2, IdEstado = 34, Nombre ='New Hampshire', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 2, IdEstado = 35, Nombre ='New Jersey', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 2, IdEstado = 36, Nombre ='New Mexico', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 2, IdEstado = 37, Nombre ='Nevada', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 2, IdEstado = 38, Nombre ='New York', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 2, IdEstado = 39, Nombre ='Ohio', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 2, IdEstado = 40, Nombre ='Oklahoma', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 2, IdEstado = 41, Nombre ='Oregon', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 2, IdEstado = 42, Nombre ='Pennsylvania', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 2, IdEstado = 44, Nombre ='Rhode Island', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 2, IdEstado = 45, Nombre ='South Carolina', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 2, IdEstado = 46, Nombre ='South Dakota', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 2, IdEstado = 47, Nombre ='Tennessee', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 2, IdEstado = 48, Nombre ='Texas', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 2, IdEstado = 50, Nombre ='Utah', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 2, IdEstado = 51, Nombre ='Virginia', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 2, IdEstado = 53, Nombre ='Vermont', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 2, IdEstado = 54, Nombre ='Washington', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 2, IdEstado = 55, Nombre ='Wisconsin', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 2, IdEstado = 56, Nombre ='West Virginia', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 2, IdEstado = 57, Nombre ='Wyoming', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 2, IdEstado = 58, Nombre ='DETROIT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 3, IdEstado = 1, Nombre ='Aargau', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 3, IdEstado = 2, Nombre ='Appenzell Innerrhoden', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 3, IdEstado = 3, Nombre ='Appenzell Ausserrhoden', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 3, IdEstado = 4, Nombre ='Basel-Stadt', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 3, IdEstado = 5, Nombre ='Basel-Landschaft', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 3, IdEstado = 6, Nombre ='Bern', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 3, IdEstado = 7, Nombre ='Fribourg', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 3, IdEstado = 8, Nombre ='Geneva', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 3, IdEstado = 9, Nombre ='Glarus', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 3, IdEstado = 10, Nombre ='Graubunden', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 3, IdEstado = 11, Nombre ='Jura', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 3, IdEstado = 12, Nombre ='Lucerne', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 3, IdEstado = 13, Nombre ='Neuchâtel', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 3, IdEstado = 14, Nombre ='Nidwalden', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 3, IdEstado = 15, Nombre ='Obwalden', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 3, IdEstado = 16, Nombre ='Schaffhausen', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 3, IdEstado = 17, Nombre ='Schwyz', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 3, IdEstado = 18, Nombre ='Solothurn', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 3, IdEstado = 19, Nombre ='St. Gallen', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 3, IdEstado = 20, Nombre ='Thurgau', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 3, IdEstado = 21, Nombre ='Ticino', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 3, IdEstado = 22, Nombre ='Uri', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 3, IdEstado = 23, Nombre ='Valais', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 3, IdEstado = 24, Nombre ='Vaud', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 3, IdEstado = 25, Nombre ='Zug', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 3, IdEstado = 26, Nombre ='Zurich', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 3, IdEstado = 27, Nombre ='TESSIN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 3, IdEstado = 28, Nombre ='BERNA-MITTELLAND', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 4, IdEstado = 1, Nombre ='Berlin', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 4, IdEstado = 2, Nombre ='Brandenburg', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 4, IdEstado = 3, Nombre ='Baden-Wurttemberg', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 4, IdEstado = 4, Nombre ='Bayern', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 4, IdEstado = 5, Nombre ='Bremen', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 4, IdEstado = 6, Nombre ='Hessen', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 4, IdEstado = 7, Nombre ='Hamburg', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 4, IdEstado = 8, Nombre ='Mecklenburg-Vorpommern', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 4, IdEstado = 9, Nombre ='Niedersachsen', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 4, IdEstado = 10, Nombre ='Nordrhein-Westfalen', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 4, IdEstado = 11, Nombre ='Rheinland-Pfalz', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 4, IdEstado = 12, Nombre ='Schleswig-Holstein', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 4, IdEstado = 13, Nombre ='Saarland', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 4, IdEstado = 14, Nombre ='Sachsen', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 4, IdEstado = 15, Nombre ='Sachsen-Anhalt', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 4, IdEstado = 16, Nombre ='Thüringen', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 4, IdEstado = 17, Nombre ='D58744 ALTENA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 4, IdEstado = 18, Nombre ='AURICH', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 5, IdEstado = 1, Nombre ='Alaba', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 5, IdEstado = 2, Nombre ='Albacete', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 5, IdEstado = 3, Nombre ='Alicante', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 5, IdEstado = 4, Nombre ='Almeria', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 5, IdEstado = 5, Nombre ='Avila', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 5, IdEstado = 6, Nombre ='Badajoz', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 5, IdEstado = 7, Nombre ='Balears', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 5, IdEstado = 8, Nombre ='Cataluña', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 5, IdEstado = 9, Nombre ='Burgos', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 5, IdEstado = 10, Nombre ='Caceres', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 5, IdEstado = 11, Nombre ='Cadiz', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 5, IdEstado = 12, Nombre ='Castellon', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 5, IdEstado = 13, Nombre ='Ciudad Real', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 5, IdEstado = 14, Nombre ='Cordoba', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 5, IdEstado = 15, Nombre ='Coruña', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 5, IdEstado = 16, Nombre ='cuenca', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 5, IdEstado = 17, Nombre ='Girona', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 5, IdEstado = 18, Nombre ='Granada', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 5, IdEstado = 19, Nombre ='Guadalajara', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 5, IdEstado = 20, Nombre ='Guipuzcoa', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 5, IdEstado = 21, Nombre ='Huelva', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 5, IdEstado = 22, Nombre ='Huesca', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 5, IdEstado = 23, Nombre ='Jaen', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 5, IdEstado = 24, Nombre ='Leon', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 5, IdEstado = 25, Nombre ='Lleida', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 5, IdEstado = 26, Nombre ='La Rioja', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 5, IdEstado = 27, Nombre ='Lugo', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 5, IdEstado = 28, Nombre ='Madrid', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 5, IdEstado = 29, Nombre ='Malaga', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 5, IdEstado = 30, Nombre ='Murcia', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 5, IdEstado = 31, Nombre ='Navarra', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 5, IdEstado = 32, Nombre ='Ourense', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 5, IdEstado = 33, Nombre ='Asturias', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 5, IdEstado = 34, Nombre ='Palencia', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 5, IdEstado = 35, Nombre ='Palomas', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 5, IdEstado = 36, Nombre ='Pontevedra', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 5, IdEstado = 37, Nombre ='Salamanca', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 5, IdEstado = 38, Nombre ='Santa Cruz de Tenerife', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 5, IdEstado = 39, Nombre ='Cantabria', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 5, IdEstado = 40, Nombre ='Segovia', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 5, IdEstado = 41, Nombre ='Sevilla', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 5, IdEstado = 42, Nombre ='Soria', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 5, IdEstado = 43, Nombre ='Tarragona', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 5, IdEstado = 44, Nombre ='Teruel', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 5, IdEstado = 45, Nombre ='Toledo', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 5, IdEstado = 46, Nombre ='Valencia', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 5, IdEstado = 47, Nombre ='Valladolid', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 5, IdEstado = 48, Nombre ='Vizcaya', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 5, IdEstado = 49, Nombre ='Zamora', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 5, IdEstado = 50, Nombre ='Zaragoza', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 5, IdEstado = 51, Nombre ='Ceuta', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 5, IdEstado = 52, Nombre ='Melilla', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 5, IdEstado = 54, Nombre ='Andalucia', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 5, IdEstado = 55, Nombre ='Aragon', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 5, IdEstado = 56, Nombre ='Galicio', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 5, IdEstado = 57, Nombre ='BARCELONA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 1, Nombre ='Ain', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 2, Nombre ='Aisne', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 3, Nombre ='Allier', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 4, Nombre ='Alpes-de-Haute-Provence', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 5, Nombre ='Hautes-Alpes', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 6, Nombre ='Alpes-Maritimes', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 7, Nombre ='Ardèche', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 8, Nombre ='Ardennes', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 9, Nombre ='Ariège', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 10, Nombre ='Aube', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 11, Nombre ='Aude', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 12, Nombre ='Aveyron', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 13, Nombre ='Bouches-du-Rhône', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 14, Nombre ='Calvados', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 15, Nombre ='Cantal', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 16, Nombre ='Charente', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 17, Nombre ='Charente-Maritime', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 18, Nombre ='Cher', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 19, Nombre ='Corrèze', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 21, Nombre ='Côte-d Or', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 22, Nombre ='Côtes-d Armor', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 23, Nombre ='Creuse', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 24, Nombre ='Dordogne', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 25, Nombre ='Doubs', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 26, Nombre ='Drôme', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 27, Nombre ='Eure', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 28, Nombre ='Eure-et-Loir', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 29, Nombre ='Finistère', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 30, Nombre ='Gard', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 31, Nombre ='Haute-Garonne', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 32, Nombre ='Gers', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 33, Nombre ='Gironde', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 34, Nombre ='Hérault', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 35, Nombre ='Ille-et-Vilaine', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 36, Nombre ='Indre', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 37, Nombre ='Indre-et-Loire', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 38, Nombre ='Isère', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 39, Nombre ='Jura', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 40, Nombre ='Landes', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 41, Nombre ='Loir-et-Cher', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 42, Nombre ='Loire', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 43, Nombre ='Haute-Loire', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 44, Nombre ='Loire-Atlantique', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 45, Nombre ='Loiret', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 46, Nombre ='Lot', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 47, Nombre ='Lot-et-Garonne', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 48, Nombre ='Lozère', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 49, Nombre ='Maine-et-Loire', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 50, Nombre ='Manche', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 51, Nombre ='Marne', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 52, Nombre ='Haute-Marne', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 53, Nombre ='Mayenne', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 54, Nombre ='Meurthe-et-Moselle', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 55, Nombre ='Meuse', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 56, Nombre ='Morbihan', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 57, Nombre ='Moselle', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 58, Nombre ='Nièvre', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 59, Nombre ='Nord', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 60, Nombre ='Oise', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 61, Nombre ='Orne', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 62, Nombre ='Pas-de-Calais', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 63, Nombre ='Puy-de-Dôme', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 64, Nombre ='Pyrénées-Atlantiques', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 65, Nombre ='Hautes-Pyrénées', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 66, Nombre ='Pyrénées-Orientales', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 67, Nombre ='Bas-Rhin', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 68, Nombre ='Haut-Rhin', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 69, Nombre ='Rhône', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 70, Nombre ='Haute-Saône', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 71, Nombre ='Saône-et-Loire', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 72, Nombre ='Sarthe', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 73, Nombre ='Savoie', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 74, Nombre ='Haute-Savoie', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 75, Nombre ='Paris', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 76, Nombre ='Seine-Maritime', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 77, Nombre ='Seine-et-Marne', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 78, Nombre ='Yvelines', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 79, Nombre ='Deux-Sèvres', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 80, Nombre ='Somme', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 81, Nombre ='Tarn', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 82, Nombre ='Tarn-et-Garonne', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 83, Nombre ='Var', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 84, Nombre ='Vaucluse', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 85, Nombre ='Vendée', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 86, Nombre ='Vienne', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 87, Nombre ='Haute-Vienne', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 88, Nombre ='Vosges', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 89, Nombre ='Yonne', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 90, Nombre ='Territoire de Belfort', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 91, Nombre ='Essonne', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 92, Nombre ='Hauts-de-Seine', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 93, Nombre ='Seine-Saint-Denis', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 94, Nombre ='Val-de-Marne', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 6, IdEstado = 95, Nombre ='Val-d Oise', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 7, IdEstado = 1, Nombre ='Abruzzo', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 7, IdEstado = 2, Nombre ='Aosta Valley', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 7, IdEstado = 3, Nombre ='Apulia', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 7, IdEstado = 4, Nombre ='Basilicata', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 7, IdEstado = 5, Nombre ='Calabria', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 7, IdEstado = 6, Nombre ='Campania', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 7, IdEstado = 7, Nombre ='Emilia-Romagna', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 7, IdEstado = 8, Nombre ='Friuli-Venezia Giulia', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 7, IdEstado = 9, Nombre ='Lazio (Latium)', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 7, IdEstado = 10, Nombre ='Liguria', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 7, IdEstado = 11, Nombre ='Lombardy', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 7, IdEstado = 12, Nombre ='Marche', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 7, IdEstado = 13, Nombre ='Molise', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 7, IdEstado = 14, Nombre ='Piedmont', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 7, IdEstado = 15, Nombre ='Sardinia', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 7, IdEstado = 16, Nombre ='Sicily', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 7, IdEstado = 17, Nombre ='Trentino-Alto Adige/Südtirol', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 7, IdEstado = 18, Nombre ='Tuscany', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 7, IdEstado = 19, Nombre ='Umbria', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 7, IdEstado = 20, Nombre ='Veneto', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 7, IdEstado = 21, Nombre ='TOSCANA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 11, IdEstado = 1, Nombre ='ST JOHN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 17, IdEstado = 1, Nombre ='Salta', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 17, IdEstado = 2, Nombre ='Buenos Aires', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 17, IdEstado = 3, Nombre ='Distrito Federal', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 17, IdEstado = 4, Nombre ='San Luis', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 17, IdEstado = 5, Nombre ='Entre Ríos', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 17, IdEstado = 6, Nombre ='La Rioja', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 17, IdEstado = 7, Nombre ='Santiago del Estero', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 17, IdEstado = 8, Nombre ='Chaco', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 17, IdEstado = 9, Nombre ='San Juan', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 17, IdEstado = 10, Nombre ='Catamarca', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 17, IdEstado = 11, Nombre ='La Pampa', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 17, IdEstado = 12, Nombre ='Mendoza', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 17, IdEstado = 13, Nombre ='Misiones', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 17, IdEstado = 14, Nombre ='Formosa', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 17, IdEstado = 15, Nombre ='Neuquén', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 17, IdEstado = 16, Nombre ='Río Negro', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 17, IdEstado = 17, Nombre ='Santa Fe', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 17, IdEstado = 18, Nombre ='Tucumán', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 17, IdEstado = 19, Nombre ='Chubut', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 17, IdEstado = 20, Nombre ='Tierra del Fuego', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 17, IdEstado = 21, Nombre ='Corrientes', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 17, IdEstado = 22, Nombre ='Córdoba', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 17, IdEstado = 23, Nombre ='Jujuy', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 17, IdEstado = 24, Nombre ='Santa Cruz', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 19, IdEstado = 1, Nombre ='Vienna', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 19, IdEstado = 2, Nombre ='Lower Austria', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 19, IdEstado = 3, Nombre ='Upper Austria', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 19, IdEstado = 4, Nombre ='Styria', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 19, IdEstado = 5, Nombre ='Tyrol', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 19, IdEstado = 6, Nombre ='Carinthia', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 19, IdEstado = 7, Nombre ='Salzburg', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 19, IdEstado = 8, Nombre ='Vorarlberg', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 19, IdEstado = 9, Nombre ='Burgenland', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 20, IdEstado = 1, Nombre ='Australian Capital Territory', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 20, IdEstado = 2, Nombre ='New South Wales', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 20, IdEstado = 3, Nombre ='Northern Territory', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 20, IdEstado = 4, Nombre ='Queensland', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 20, IdEstado = 5, Nombre ='South Australia', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 20, IdEstado = 6, Nombre ='Tasmania', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 20, IdEstado = 7, Nombre ='Victoria', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 20, IdEstado = 8, Nombre ='Western Australia', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 25, IdEstado = 1, Nombre ='Brussels', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 25, IdEstado = 2, Nombre ='Antwerpen', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 25, IdEstado = 3, Nombre ='Vlaams Brabant', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 25, IdEstado = 5, Nombre ='Limburg', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 25, IdEstado = 6, Nombre ='Oost-Vlaanderen', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 25, IdEstado = 7, Nombre ='West-Vlaanderen', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 25, IdEstado = 9, Nombre ='Brabant Wallon', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 25, IdEstado = 10, Nombre ='Hainaut', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 25, IdEstado = 11, Nombre ='Liège', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 25, IdEstado = 12, Nombre ='Luxembourg', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 25, IdEstado = 13, Nombre ='Namur', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 27, IdEstado = 1, Nombre ='BLAGOEVGRAD', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 27, IdEstado = 2, Nombre ='BURGAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 27, IdEstado = 3, Nombre ='DOBRICH', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 27, IdEstado = 4, Nombre ='GABROVO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 27, IdEstado = 5, Nombre ='HASKOVO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 27, IdEstado = 6, Nombre ='KARDZHALI', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 27, IdEstado = 7, Nombre ='KYUSTENDIL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 27, IdEstado = 8, Nombre ='LOVECH', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 27, IdEstado = 9, Nombre ='MONTANA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 27, IdEstado = 10, Nombre ='PAZARDZHIK', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 27, IdEstado = 11, Nombre ='PERNIK', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 27, IdEstado = 12, Nombre ='PLEVEN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 27, IdEstado = 13, Nombre ='PLOVDIV', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 27, IdEstado = 14, Nombre ='RAZGRAD', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 27, IdEstado = 15, Nombre ='RUSE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 27, IdEstado = 16, Nombre ='SHUMEN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 27, IdEstado = 17, Nombre ='SILISTRA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 27, IdEstado = 18, Nombre ='SLIVEN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 27, IdEstado = 19, Nombre ='SMOLYAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 27, IdEstado = 20, Nombre ='SOFIA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 27, IdEstado = 21, Nombre ='SOFIA REGION', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 27, IdEstado = 22, Nombre ='STARA ZAGORA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 27, IdEstado = 23, Nombre ='TARGOVISHTE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 27, IdEstado = 24, Nombre ='VARNA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 27, IdEstado = 25, Nombre ='VELIKO TARNOVO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 27, IdEstado = 26, Nombre ='VIDIN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 27, IdEstado = 27, Nombre ='VRATSA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 27, IdEstado = 28, Nombre ='YAMBOL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 33, IdEstado = 1, Nombre ='Acre', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 33, IdEstado = 2, Nombre ='Alagoas', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 33, IdEstado = 3, Nombre ='Amazonas', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 33, IdEstado = 4, Nombre ='Amapá', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 33, IdEstado = 5, Nombre ='Bahia', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 33, IdEstado = 6, Nombre ='Ceará', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 33, IdEstado = 7, Nombre ='Distrito Federal', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 33, IdEstado = 8, Nombre ='Espírito Santo', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 33, IdEstado = 9, Nombre ='Goiás', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 33, IdEstado = 10, Nombre ='Maranhão', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 33, IdEstado = 11, Nombre ='Minas Gerais', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 33, IdEstado = 12, Nombre ='Mato Grosso do Sul', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 33, IdEstado = 13, Nombre ='Mato Grosso', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 33, IdEstado = 14, Nombre ='Pará', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 33, IdEstado = 15, Nombre ='Paraíba', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 33, IdEstado = 16, Nombre ='Pernambuco', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 33, IdEstado = 17, Nombre ='Piauí', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 33, IdEstado = 18, Nombre ='Paraná', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 33, IdEstado = 19, Nombre ='Rio de Janeiro', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 33, IdEstado = 20, Nombre ='Rio Grande do Norte', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 33, IdEstado = 21, Nombre ='Rondônia', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 33, IdEstado = 22, Nombre ='Roraima', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 33, IdEstado = 23, Nombre ='Rio Grande do Sul', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 33, IdEstado = 24, Nombre ='Santa Catarina', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 33, IdEstado = 25, Nombre ='Sergipe', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 33, IdEstado = 26, Nombre ='Sao Paulo', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 33, IdEstado = 27, Nombre ='Tocantins', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 40, IdEstado = 1, Nombre ='Alberta', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 40, IdEstado = 2, Nombre ='British Columbia', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 40, IdEstado = 3, Nombre ='Manitoba', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 40, IdEstado = 4, Nombre ='New Brunswick', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 40, IdEstado = 5, Nombre ='Newfoundland and Labrador', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 40, IdEstado = 6, Nombre ='Nova Scotia', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 40, IdEstado = 7, Nombre ='Northwest Territories', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 40, IdEstado = 8, Nombre ='Nunavut', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 40, IdEstado = 9, Nombre ='Ontario', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 40, IdEstado = 10, Nombre ='Prince Edward Island', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 40, IdEstado = 11, Nombre ='Quebec', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 40, IdEstado = 12, Nombre ='Saskatchewan', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 40, IdEstado = 13, Nombre ='Yukon Territory', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 46, IdEstado = 1, Nombre ='VALPARAISO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 46, IdEstado = 2, Nombre ='METROPOLITANA DE SANTIAGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 46, IdEstado = 3, Nombre ='SAN ANTONIO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 48, IdEstado = 1, Nombre ='Beijing', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 48, IdEstado = 2, Nombre ='Tianjin', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 48, IdEstado = 3, Nombre ='Hebei', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 48, IdEstado = 4, Nombre ='Shanxi', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 48, IdEstado = 5, Nombre ='Nei Mongol (mn)', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 48, IdEstado = 6, Nombre ='Liaoning', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 48, IdEstado = 7, Nombre ='Jilin', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 48, IdEstado = 8, Nombre ='Heilongjiang', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 48, IdEstado = 9, Nombre ='Shanghai', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 48, IdEstado = 10, Nombre ='Jiangsu', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 48, IdEstado = 11, Nombre ='Zhejiang', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 48, IdEstado = 12, Nombre ='Anhui', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 48, IdEstado = 13, Nombre ='Fujian', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 48, IdEstado = 14, Nombre ='Jiangxi', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 48, IdEstado = 15, Nombre ='Shandong', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 48, IdEstado = 16, Nombre ='Henan', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 48, IdEstado = 17, Nombre ='Hubei', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 48, IdEstado = 18, Nombre ='Hunan', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 48, IdEstado = 19, Nombre ='Guangdong', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 48, IdEstado = 20, Nombre ='Guangxi', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 48, IdEstado = 21, Nombre ='Hainan', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 48, IdEstado = 22, Nombre ='Chongqing', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 48, IdEstado = 23, Nombre ='Sichuan', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 48, IdEstado = 24, Nombre ='Guizhou', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 48, IdEstado = 25, Nombre ='Yunnan', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 48, IdEstado = 26, Nombre ='Xizang', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 48, IdEstado = 27, Nombre ='Shaanxi', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 48, IdEstado = 28, Nombre ='Gansu', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 48, IdEstado = 29, Nombre ='Qinghai', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 48, IdEstado = 30, Nombre ='Ningxia', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 48, IdEstado = 31, Nombre ='Xinjiang', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 48, IdEstado = 32, Nombre ='Taiwan', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 48, IdEstado = 33, Nombre ='Xianggang', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 48, IdEstado = 34, Nombre ='Aomen', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 48, IdEstado = 35, Nombre ='Hong Kong', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 48, IdEstado = 36, Nombre ='Macau', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 49, IdEstado = 1, Nombre ='Amazonas', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 49, IdEstado = 2, Nombre ='Antioquia', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 49, IdEstado = 3, Nombre ='Arauca', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 49, IdEstado = 4, Nombre ='Atlantico', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 49, IdEstado = 5, Nombre ='Bolivar', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 49, IdEstado = 6, Nombre ='Boyaca', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 49, IdEstado = 7, Nombre ='Caldas', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 49, IdEstado = 8, Nombre ='Caqueta', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 49, IdEstado = 9, Nombre ='Casanare', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 49, IdEstado = 10, Nombre ='Cauca', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 49, IdEstado = 11, Nombre ='Cesar', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 49, IdEstado = 12, Nombre ='Chocó', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 49, IdEstado = 13, Nombre ='Córdoba', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 49, IdEstado = 14, Nombre ='Cundinamarca', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 49, IdEstado = 15, Nombre ='Guainía', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 49, IdEstado = 16, Nombre ='Guaviare', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 49, IdEstado = 17, Nombre ='Huila', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 49, IdEstado = 18, Nombre ='La Guajira', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 49, IdEstado = 19, Nombre ='Magdalena', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 49, IdEstado = 20, Nombre ='Meta', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 49, IdEstado = 21, Nombre ='Nariño', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 49, IdEstado = 22, Nombre ='Norte de Santander', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 49, IdEstado = 23, Nombre ='Putumayo', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 49, IdEstado = 24, Nombre ='Quindío', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 49, IdEstado = 25, Nombre ='Risaralda', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 49, IdEstado = 26, Nombre ='San Andrés and Providencia', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 49, IdEstado = 27, Nombre ='Santander', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 49, IdEstado = 28, Nombre ='Sucre', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 49, IdEstado = 29, Nombre ='Tolima', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 49, IdEstado = 30, Nombre ='Valle del Cauca', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 49, IdEstado = 31, Nombre ='Vaupes', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 49, IdEstado = 32, Nombre ='Vichada', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 49, IdEstado = 33, Nombre ='Bogotá* (Distrito Capital)', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 50, IdEstado = 1, Nombre ='ALAJUELA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 50, IdEstado = 2, Nombre ='SAN JOSE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 50, IdEstado = 3, Nombre ='CARTAGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 50, IdEstado = 4, Nombre ='HEREDIA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 50, IdEstado = 5, Nombre ='LIMON', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 51, IdEstado = 1, Nombre ='BANSKA BYSTRICA DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 51, IdEstado = 2, Nombre ='BANSKA STIAVNICA DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 51, IdEstado = 3, Nombre ='BARDEJOV DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 51, IdEstado = 4, Nombre ='BRATISLAVA I', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 51, IdEstado = 5, Nombre ='BRATISLAVA II', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 52, IdEstado = 1, Nombre ='LA HABANA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 52, IdEstado = 2, Nombre ='SANTIAGO DE CUBA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 57, IdEstado = 1, Nombre ='Frederiksborg', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 57, IdEstado = 2, Nombre ='Funen', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 57, IdEstado = 3, Nombre ='Copenhagen', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 57, IdEstado = 4, Nombre ='North Jutland', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 57, IdEstado = 5, Nombre ='Ribe Amt', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 57, IdEstado = 6, Nombre ='Ringkjøbing', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 57, IdEstado = 7, Nombre ='Roskilde', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 57, IdEstado = 8, Nombre ='Storstrøm', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 57, IdEstado = 9, Nombre ='South Jutland', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 57, IdEstado = 10, Nombre ='Vejle', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 57, IdEstado = 11, Nombre ='West Zealand', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 57, IdEstado = 12, Nombre ='Viborg', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 57, IdEstado = 13, Nombre ='Aarhus', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 58, IdEstado = 1, Nombre ='SAN CRISTOBAL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 58, IdEstado = 2, Nombre ='SANTO DOMINGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 60, IdEstado = 1, Nombre ='GUAYAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 60, IdEstado = 2, Nombre ='ESMERALDAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 1, Nombre ='Aberdeenshire', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 2, Nombre ='Aberdeen City', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 3, Nombre ='Argyll and Bute', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 4, Nombre ='Isle of Anglesey [Sir Ynys Môn GB-YNM]', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 5, Nombre ='Angus', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 6, Nombre ='Antrim', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 7, Nombre ='Ards', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 8, Nombre ='Armagh', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 9, Nombre ='Bath and North East Somerset', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 10, Nombre ='Blackburn with Darwen', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 11, Nombre ='Bedfordshire', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 12, Nombre ='Barking and Dagenham', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 13, Nombre ='Brent', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 14, Nombre ='Bexley', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 15, Nombre ='Belfast', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 16, Nombre ='Bridgend [Pen-y-bont ar Ogwr GB-POG]', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 17, Nombre ='Blaenau Gwent', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 18, Nombre ='Birmingham', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 19, Nombre ='Buckinghamshire', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 20, Nombre ='Ballymena', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 21, Nombre ='Ballymoney', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 22, Nombre ='Bournemouth', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 23, Nombre ='Banbridge', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 24, Nombre ='Barnet', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 25, Nombre ='Brighton and Hove', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 26, Nombre ='Barnsley', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 27, Nombre ='Bolton', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 28, Nombre ='Borders Region', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 29, Nombre ='Blackpool', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 30, Nombre ='Bracknell Forest', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 31, Nombre ='Bradford', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 32, Nombre ='Bromley', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 33, Nombre ='Bristol, City of', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 34, Nombre ='Bury', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 35, Nombre ='Cambridgeshire', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 36, Nombre ='Caerphilly [Caerffili GB-CAF]', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 37, Nombre ='Ceredigion [Sir Ceredigion]', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 38, Nombre ='Craigavon', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 39, Nombre ='Cheshire', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 40, Nombre ='Carrickfergus', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 41, Nombre ='Cookstown', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 42, Nombre ='Calderdale', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 43, Nombre ='Clackmannanshire', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 44, Nombre ='Coleraine', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 45, Nombre ='Cleveland', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 46, Nombre ='Cumbria', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 47, Nombre ='Camden', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 48, Nombre ='Carmarthenshire [Sir Gaerfyrddin GB-GFY]', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 49, Nombre ='Cornwall', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 50, Nombre ='Coventry', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 51, Nombre ='Cardiff [Caerdydd GB-CRD]', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 52, Nombre ='Croydon', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 53, Nombre ='Castlereagh', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 54, Nombre ='Clwyd', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 55, Nombre ='Conwy', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 56, Nombre ='Darlington', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 57, Nombre ='Derbyshire', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 58, Nombre ='Denbighshire [Sir Ddinbych GB-DDB]', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 59, Nombre ='Derby', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 60, Nombre ='Devon', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 61, Nombre ='Dyfed', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 62, Nombre ='Dungannon', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 63, Nombre ='Dumfries and Galloway', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 64, Nombre ='Doncaster', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 65, Nombre ='Dundee City', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 66, Nombre ='Dorset', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 67, Nombre ='Down', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 68, Nombre ='Derry', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 69, Nombre ='Dudley', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 70, Nombre ='Durham', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 72, Nombre ='Ealing', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 73, Nombre ='East Ayrshire', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 74, Nombre ='Edinburgh, City of', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 75, Nombre ='East Dunbartonshire', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 76, Nombre ='East Lothian', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 77, Nombre ='Eilean Siar', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 78, Nombre ='Enfield', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 79, Nombre ='England', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 80, Nombre ='East Renfrewshire', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 81, Nombre ='East Riding of Yorkshire', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 82, Nombre ='Essex', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 83, Nombre ='East Sussex', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 84, Nombre ='Falkirk', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 85, Nombre ='Fermanagh', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 86, Nombre ='Fife', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 87, Nombre ='Flintshire [Sir y Fflint GB-FFL]', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 88, Nombre ='Gateshead', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 89, Nombre ='Glasgow City', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 90, Nombre ='Gloucestershire', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 91, Nombre ='Grampian Region', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 92, Nombre ='Gwent', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 93, Nombre ='Greenwich', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 94, Nombre ='Greater London', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 95, Nombre ='Greater Manchester', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 96, Nombre ='Gwynedd', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 97, Nombre ='Halton', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 98, Nombre ='Hampshire', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 99, Nombre ='Havering', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 100, Nombre ='Hackney', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 101, Nombre ='Herefordshire, County of', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 102, Nombre ='Hillingdon', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 103, Nombre ='Highland', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 104, Nombre ='Hammersmith and Fulham', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 105, Nombre ='Hounslow', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 106, Nombre ='Hartlepool', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 107, Nombre ='Hertfordshire', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 108, Nombre ='Harrow', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 109, Nombre ='Haringey', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 110, Nombre ='Humberside', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 111, Nombre ='Hereford and Worcester', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 112, Nombre ='Isles of Scilly', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 113, Nombre ='Isle of Wight', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 114, Nombre ='Islington', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 115, Nombre ='Inverclyde', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 116, Nombre ='Kensington and Chelsea', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 117, Nombre ='Kent', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 118, Nombre ='Kingston upon Hull, City of', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 119, Nombre ='Kirklees', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 120, Nombre ='Kingston upon Thames', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 121, Nombre ='Knowsley', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 122, Nombre ='Lancashire', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 123, Nombre ='Lambeth', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 124, Nombre ='Leicester', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 125, Nombre ='Leeds', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 126, Nombre ='Leicestershire', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 127, Nombre ='Lewisham', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 128, Nombre ='Lincolnshire', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 129, Nombre ='Liverpool', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 130, Nombre ='Limavady', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 131, Nombre ='London, City of', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 132, Nombre ='Larne', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 133, Nombre ='Lisburn', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 134, Nombre ='Lothian Region', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 135, Nombre ='Luton', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 136, Nombre ='Manchester', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 137, Nombre ='Middlesbrough', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 138, Nombre ='Medway', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 139, Nombre ='Magherafelt', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 140, Nombre ='Mid Glamorgan', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 141, Nombre ='Milton Keynes', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 142, Nombre ='Midlothian', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 143, Nombre ='Monmouthshire [Sir Fynwy GB-FYN]', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 144, Nombre ='Merton', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 145, Nombre ='Moray', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 146, Nombre ='Merseyside', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 147, Nombre ='Merthyr Tydfil [Merthyr Tudful GB-MTU]', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 148, Nombre ='Moyle', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 149, Nombre ='North Ayrshire', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 150, Nombre ='Northumberland', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 151, Nombre ='North Down', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 152, Nombre ='North East Lincolnshire', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 153, Nombre ='Newcastle upon Tyne', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 154, Nombre ='Norfolk', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 155, Nombre ='Nottingham', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 156, Nombre ='Northern Ireland', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 157, Nombre ='North Lanarkshire', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 158, Nombre ='North Lincolnshire', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 159, Nombre ='North Somerset', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 160, Nombre ='Newtownabbey', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 161, Nombre ='Northamptonshire', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 162, Nombre ='Neath Port Talbot [Castell-nedd Port Tal', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 163, Nombre ='Nottinghamshire', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 164, Nombre ='North Tyneside', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 165, Nombre ='Newham', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 166, Nombre ='Newport [Casnewydd GB-CNW]', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 167, Nombre ='North Yorkshire', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 168, Nombre ='Newry and Mourne', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 169, Nombre ='Oldham', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 170, Nombre ='Omagh', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 171, Nombre ='Orkney Islands', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 172, Nombre ='Oxfordshire', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 173, Nombre ='Pembrokeshire [Sir Benfro GB-BNF]', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 174, Nombre ='Perth and Kinross', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 175, Nombre ='Plymouth', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 176, Nombre ='Poole', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 177, Nombre ='Portsmouth', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 178, Nombre ='Powys', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 179, Nombre ='Peterborough', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 180, Nombre ='Redcar and Cleveland', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 181, Nombre ='Rochdale', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 182, Nombre ='Rhondda, Cynon, Taff [Rhondda, Cynon,Taf', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 183, Nombre ='Redbridge', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 184, Nombre ='Reading', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 185, Nombre ='Renfrewshire', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 186, Nombre ='Richmond upon Thames', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 187, Nombre ='Rotherham', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 188, Nombre ='Rutland', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 189, Nombre ='Sandwell', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 190, Nombre ='South Ayrshire', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 191, Nombre ='Scottish Borders, The', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 192, Nombre ='Scotland', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 193, Nombre ='Suffolk', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 194, Nombre ='Sefton', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 195, Nombre ='South Gloucestershire', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 196, Nombre ='South Glamorgan', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 197, Nombre ='Sheffield', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 198, Nombre ='St. Helens', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 199, Nombre ='Shropshire', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 200, Nombre ='Stockport', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 201, Nombre ='Salford', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 202, Nombre ='Slough', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 203, Nombre ='South Lanarkshire', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 204, Nombre ='Sunderland', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 205, Nombre ='Solihull', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 206, Nombre ='Somerset', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 207, Nombre ='Southend-on-Sea', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 208, Nombre ='Surrey', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 209, Nombre ='Strabane', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 210, Nombre ='Strathclyde Region', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 211, Nombre ='Stoke-on-Trent', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 212, Nombre ='Stirling', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 213, Nombre ='Southampton', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 214, Nombre ='Sutton', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 215, Nombre ='Staffordshire', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 216, Nombre ='Stockton-on-Tees', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 217, Nombre ='South Tyneside', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 218, Nombre ='Swansea [Abertawe GB-ATA]', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 219, Nombre ='Swindon', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 220, Nombre ='Southwark', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 221, Nombre ='South Yorkshire', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 222, Nombre ='Tameside', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 223, Nombre ='Tayside Region', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 224, Nombre ='Telford and Wrekin', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 225, Nombre ='Thurrock', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 226, Nombre ='Torbay', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 227, Nombre ='Torfaen [Tor-faen]', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 228, Nombre ='Trafford', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 229, Nombre ='Tower Hamlets', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 230, Nombre ='Tyne and Wear', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 231, Nombre ='Vale of Glamorgan, The [Bro Morgannwg GB', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 232, Nombre ='Warwickshire', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 233, Nombre ='West Berkshire', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 234, Nombre ='West Dunbartonshire', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 235, Nombre ='Waltham Forest', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 236, Nombre ='West Glamorgan', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 237, Nombre ='Wigan', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 238, Nombre ='Wiltshire', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 239, Nombre ='Western Isles', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 240, Nombre ='Wakefield', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 241, Nombre ='Walsall', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 242, Nombre ='West Lothian', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 243, Nombre ='Wales [Cymru GB-CYM]', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 244, Nombre ='Wolverhampton', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 245, Nombre ='West Midlands', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 246, Nombre ='Wandsworth', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 247, Nombre ='Windsor and maidenhead', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 248, Nombre ='Wokingham', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 249, Nombre ='Worcestershire', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 250, Nombre ='Wirral', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 251, Nombre ='Warrington', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 252, Nombre ='Wrexham [Wrecsam GB-WRC]', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 253, Nombre ='Westminster', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 254, Nombre ='West Sussex', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 255, Nombre ='West Yorkshire', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 256, Nombre ='York', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 257, Nombre ='Shetland Islands', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 70, IdEstado = 258, Nombre ='ISLE OF MAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 80, IdEstado = 1, Nombre ='Attica', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 80, IdEstado = 2, Nombre ='Central Greece', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 80, IdEstado = 3, Nombre ='Central Macedonia', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 80, IdEstado = 4, Nombre ='Crete', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 80, IdEstado = 5, Nombre ='Eastern Macedonia and Thrace', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 80, IdEstado = 6, Nombre ='Epirus', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 80, IdEstado = 7, Nombre ='Ionian Islands', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 80, IdEstado = 8, Nombre ='North Aegean Islands', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 80, IdEstado = 9, Nombre ='Peloponnese', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 80, IdEstado = 10, Nombre ='South Aegean Islands', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 80, IdEstado = 11, Nombre ='Thessaly', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 80, IdEstado = 12, Nombre ='Western Greece', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 80, IdEstado = 13, Nombre ='Western Macedonia', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 81, IdEstado = 1, Nombre ='SAN MIGUEL PETAPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 81, IdEstado = 2, Nombre ='MIXCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 81, IdEstado = 3, Nombre ='CHIMALTENANGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 81, IdEstado = 4, Nombre ='GUATEMALA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 81, IdEstado = 5, Nombre ='HUEHUETENANGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 81, IdEstado = 6, Nombre ='QUETZALTENANGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 81, IdEstado = 7, Nombre ='IZABAL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 81, IdEstado = 8, Nombre ='JUTIAPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 87, IdEstado = 1, Nombre ='CORTES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 87, IdEstado = 2, Nombre ='FRANCISCO MORAZAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 87, IdEstado = 3, Nombre ='SANTA BARBARA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 87, IdEstado = 4, Nombre ='ATLANTIDA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 87, IdEstado = 5, Nombre ='EL PARAISO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 87, IdEstado = 6, Nombre ='CHOLUTECA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 88, IdEstado = 1, Nombre ='OESTE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 92, IdEstado = 1, Nombre ='JERUSALEM', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 93, IdEstado = 1, Nombre ='WEST BENGAL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 93, IdEstado = 2, Nombre ='MAHARASHTRA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 93, IdEstado = 3, Nombre ='GUYARAT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 98, IdEstado = 1, Nombre ='SURREY', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 100, IdEstado = 1, Nombre ='Hokkaido', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 100, IdEstado = 2, Nombre ='Aomori', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 100, IdEstado = 3, Nombre ='Iwate', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 100, IdEstado = 4, Nombre ='Miyagi', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 100, IdEstado = 5, Nombre ='Akita', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 100, IdEstado = 6, Nombre ='Yamagata', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 100, IdEstado = 7, Nombre ='Hukusima [Fukushima]', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 100, IdEstado = 8, Nombre ='Ibaraki', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 100, IdEstado = 9, Nombre ='Totigi [Tochigi]', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 100, IdEstado = 10, Nombre ='Gunma', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 100, IdEstado = 11, Nombre ='Saitama', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 100, IdEstado = 12, Nombre ='Tiba [Chiba]', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 100, IdEstado = 13, Nombre ='Tokyo', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 100, IdEstado = 14, Nombre ='Kanagawa', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 100, IdEstado = 15, Nombre ='Niigata', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 100, IdEstado = 16, Nombre ='Toyama', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 100, IdEstado = 17, Nombre ='Isikawa [Ishikawa]', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 100, IdEstado = 18, Nombre ='Hukui [Fukui]', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 100, IdEstado = 19, Nombre ='Yamanasi [Yamanashi]', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 100, IdEstado = 20, Nombre ='Nagano', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 100, IdEstado = 21, Nombre ='Gihu [Gifu]', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 100, IdEstado = 22, Nombre ='Sizuoka [Shizuoka]', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 100, IdEstado = 23, Nombre ='Aiti [Aichi]', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 100, IdEstado = 24, Nombre ='Mie', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 100, IdEstado = 25, Nombre ='Siga [Shiga]', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 100, IdEstado = 26, Nombre ='Kyoto', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 100, IdEstado = 27, Nombre ='Osaka', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 100, IdEstado = 28, Nombre ='Hyogo', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 100, IdEstado = 29, Nombre ='Nara', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 100, IdEstado = 30, Nombre ='Wakayama', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 100, IdEstado = 31, Nombre ='Tottori', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 100, IdEstado = 32, Nombre ='Simane [Shimane]', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 100, IdEstado = 33, Nombre ='Okayama', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 100, IdEstado = 34, Nombre ='Hirosima [Hiroshima]', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 100, IdEstado = 35, Nombre ='Yamaguti [Yamaguchi]', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 100, IdEstado = 36, Nombre ='Tokusima [Tokushima]', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 100, IdEstado = 37, Nombre ='Kagawa', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 100, IdEstado = 38, Nombre ='Ehime', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 100, IdEstado = 39, Nombre ='Koti [Kochi]', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 100, IdEstado = 40, Nombre ='Hukuoka [Fukuoka]', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 100, IdEstado = 41, Nombre ='Saga', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 100, IdEstado = 42, Nombre ='Nagasaki', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 100, IdEstado = 43, Nombre ='Kumamoto', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 100, IdEstado = 44, Nombre ='Oita', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 100, IdEstado = 45, Nombre ='Miyazaki', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 100, IdEstado = 46, Nombre ='Kagosima [Kagoshima]', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 100, IdEstado = 47, Nombre ='Okinawa', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 107, IdEstado = 1, Nombre ='Seoul Teugbyeolsi [Seoul-T ukpyolshi]', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 107, IdEstado = 2, Nombre ='Busan Gwang yeogsi [Pusan-Kwangyokshi]', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 107, IdEstado = 3, Nombre ='Daegu Gwang yeogsi [Taegu-Kwangyokshi]', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 107, IdEstado = 4, Nombre ='Incheon Gwang yeogsi [Inch on-Kwangyoksh', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 107, IdEstado = 5, Nombre ='Gwangju Gwang yeogsi [Kwangju-Kwangyoksh', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 107, IdEstado = 6, Nombre ='Daejeon Gwang yeogsi [Taejon-Kwangyokshi', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 107, IdEstado = 7, Nombre ='Ulsan Gwang yeogsi [Ulsan-Kwangyokshi]', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 107, IdEstado = 8, Nombre ='Gyeonggido [Kyonggi-do]', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 107, IdEstado = 9, Nombre ='Gang weondo [Kang-won-do]', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 107, IdEstado = 10, Nombre ='Chungcheongbugdo [Ch ungch ongbuk-do]', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 107, IdEstado = 11, Nombre ='Chungcheongnamdo [Ch ungch ongnam-do]', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 107, IdEstado = 12, Nombre ='Jeonrabugdo [Chollabuk-do]', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 107, IdEstado = 13, Nombre ='Jeonranamdo [Chollanam-do]', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 107, IdEstado = 14, Nombre ='Gyeongsangbugdo [Kyongsangbuk-do]', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 107, IdEstado = 15, Nombre ='Gyeongsangnamdo [Kyongsangnam-do]', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 107, IdEstado = 16, Nombre ='Jejudo [Cheju-do]', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 111, IdEstado = 1, Nombre ='AMCHIT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 141, IdEstado = 1, Nombre ='MANAGUA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 141, IdEstado = 2, Nombre ='MATAGALPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 141, IdEstado = 3, Nombre ='ATLANTICO SUR', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 141, IdEstado = 4, Nombre ='CHONTALES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 142, IdEstado = 1, Nombre ='Drenthe', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 142, IdEstado = 2, Nombre ='Flevoland', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 142, IdEstado = 3, Nombre ='Friesland', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 142, IdEstado = 4, Nombre ='Gelderland', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 142, IdEstado = 5, Nombre ='Groningen', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 142, IdEstado = 6, Nombre ='Limburg', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 142, IdEstado = 7, Nombre ='North Braban', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 142, IdEstado = 8, Nombre ='North Holland', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 142, IdEstado = 9, Nombre ='Overijssel', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 142, IdEstado = 10, Nombre ='South Holland', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 142, IdEstado = 11, Nombre ='Utrecht', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 142, IdEstado = 12, Nombre ='Zeeland', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 148, IdEstado = 1, Nombre ='Northland', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 148, IdEstado = 2, Nombre ='Auckland', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 148, IdEstado = 3, Nombre ='Waikato', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 148, IdEstado = 4, Nombre ='Bay of Plenty', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 148, IdEstado = 5, Nombre ='East Cape', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 148, IdEstado = 6, Nombre ='Hawke s Bay', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 148, IdEstado = 7, Nombre ='Taranaki', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 148, IdEstado = 8, Nombre ='Manawatu-Wanganui', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 148, IdEstado = 9, Nombre ='Wellington', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 148, IdEstado = 10, Nombre ='Tasman', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 148, IdEstado = 11, Nombre ='Nelson', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 148, IdEstado = 12, Nombre ='Marlborough', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 148, IdEstado = 13, Nombre ='West Coast', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 148, IdEstado = 14, Nombre ='Canterbury', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 148, IdEstado = 15, Nombre ='Otago', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 148, IdEstado = 16, Nombre ='Southland', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 148, IdEstado = 17, Nombre ='CHRISTCHURCH', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 150, IdEstado = 1, Nombre ='BALBOA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 150, IdEstado = 2, Nombre ='PANAMA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 150, IdEstado = 3, Nombre ='VERAGUAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 150, IdEstado = 4, Nombre ='COLON', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 151, IdEstado = 1, Nombre ='Amazonas', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 151, IdEstado = 2, Nombre ='Ancash', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 151, IdEstado = 3, Nombre ='Apurímac', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 151, IdEstado = 4, Nombre ='Arequipa', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 151, IdEstado = 5, Nombre ='Ayacucho', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 151, IdEstado = 6, Nombre ='Cajamarca', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 151, IdEstado = 7, Nombre ='Cusco', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 151, IdEstado = 8, Nombre ='Huancavelica', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 151, IdEstado = 9, Nombre ='Huánuco', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 151, IdEstado = 10, Nombre ='Ica', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 151, IdEstado = 11, Nombre ='Junín', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 151, IdEstado = 12, Nombre ='La Libertad', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 151, IdEstado = 13, Nombre ='Lambayeque', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 151, IdEstado = 14, Nombre ='Lima', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 151, IdEstado = 15, Nombre ='Loreto', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 151, IdEstado = 16, Nombre ='Madre de Dios', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 151, IdEstado = 17, Nombre ='Moquegua', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 151, IdEstado = 18, Nombre ='Pasco', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 151, IdEstado = 19, Nombre ='Piura', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 151, IdEstado = 20, Nombre ='Puno', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 151, IdEstado = 21, Nombre ='San Martín', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 151, IdEstado = 22, Nombre ='Tacna', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 151, IdEstado = 23, Nombre ='Tumbes', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 151, IdEstado = 24, Nombre ='Ucayali', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 151, IdEstado = 25, Nombre ='MATARANI', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 151, IdEstado = 26, Nombre ='ISLAY', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 159, IdEstado = 1, Nombre ='MAYAGUEZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 159, IdEstado = 2, Nombre ='SAN JUAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 162, IdEstado = 1, Nombre ='ASUNCION', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 165, IdEstado = 1, Nombre ='Alba', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 165, IdEstado = 2, Nombre ='Arad', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 165, IdEstado = 3, Nombre ='Arges', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 165, IdEstado = 4, Nombre ='Bacau', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 165, IdEstado = 5, Nombre ='Bihor', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 165, IdEstado = 6, Nombre ='Bistrita-Nasaud', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 165, IdEstado = 7, Nombre ='Botosani', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 165, IdEstado = 8, Nombre ='Brasov', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 165, IdEstado = 9, Nombre ='Braila', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 165, IdEstado = 10, Nombre ='Buzau', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 165, IdEstado = 11, Nombre ='Caras-Severin', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 165, IdEstado = 12, Nombre ='Calarasi', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 165, IdEstado = 13, Nombre ='Cluj', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 165, IdEstado = 14, Nombre ='Constanta', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 165, IdEstado = 15, Nombre ='Covasna', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 165, IdEstado = 16, Nombre ='Dambovita', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 165, IdEstado = 17, Nombre ='Dolj', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 165, IdEstado = 18, Nombre ='Galati', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 165, IdEstado = 19, Nombre ='Giurgiu', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 165, IdEstado = 20, Nombre ='Gorj', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 165, IdEstado = 21, Nombre ='Harghita', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 165, IdEstado = 22, Nombre ='Hunedoara', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 165, IdEstado = 23, Nombre ='Ialomita', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 165, IdEstado = 24, Nombre ='Iasi', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 165, IdEstado = 25, Nombre ='Ilfov', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 165, IdEstado = 26, Nombre ='Maramures', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 165, IdEstado = 27, Nombre ='Mehedinti', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 165, IdEstado = 28, Nombre ='Mures', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 165, IdEstado = 29, Nombre ='Neamt', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 165, IdEstado = 30, Nombre ='Olt', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 165, IdEstado = 31, Nombre ='Prahova', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 165, IdEstado = 32, Nombre ='Satu Mare', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 165, IdEstado = 33, Nombre ='Salaj', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 165, IdEstado = 34, Nombre ='Sibiu', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 165, IdEstado = 35, Nombre ='Suceava', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 165, IdEstado = 36, Nombre ='Teleorman', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 165, IdEstado = 37, Nombre ='Timis', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 165, IdEstado = 38, Nombre ='Tulcea', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 165, IdEstado = 39, Nombre ='Vaslui', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 165, IdEstado = 40, Nombre ='Valcea', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 165, IdEstado = 41, Nombre ='Vrancea', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 165, IdEstado = 42, Nombre ='Bucuresti', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 171, IdEstado = 1, Nombre ='Stockholms lan', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 171, IdEstado = 2, Nombre ='Västerbottens lan', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 171, IdEstado = 3, Nombre ='Norrbottens lan', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 171, IdEstado = 4, Nombre ='Uppsala lan', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 171, IdEstado = 5, Nombre ='Södermanlands lan', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 171, IdEstado = 6, Nombre ='Östergötlands lan', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 171, IdEstado = 7, Nombre ='Jönköpings lan', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 171, IdEstado = 8, Nombre ='Kronoborgs lan', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 171, IdEstado = 9, Nombre ='Kalmar lan', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 171, IdEstado = 10, Nombre ='Gotlands lan', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 171, IdEstado = 11, Nombre ='Blekinge lan', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 171, IdEstado = 12, Nombre ='Skane lan', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 171, IdEstado = 13, Nombre ='Hallands lan', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 171, IdEstado = 14, Nombre ='Vastra Gotalands lan', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 171, IdEstado = 15, Nombre ='Varmlands lan', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 171, IdEstado = 16, Nombre ='Orebro lan', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 171, IdEstado = 17, Nombre ='Vastmanlands lan', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 171, IdEstado = 18, Nombre ='Dalarnes lan', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 171, IdEstado = 19, Nombre ='Gavleborgs lan', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 171, IdEstado = 20, Nombre ='Vasternorrlands lan', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 171, IdEstado = 21, Nombre ='Jamtlands lan', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 171, IdEstado = 22, Nombre ='Ticino', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 172, IdEstado = 1, Nombre ='SINGAPUR', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 179, IdEstado = 1, Nombre ='PARAMARIBO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 182, IdEstado = 1, Nombre ='SAN SALVADOR', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 182, IdEstado = 2, Nombre ='SAN MIGUEL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 182, IdEstado = 3, Nombre ='SANTA ANA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 182, IdEstado = 4, Nombre ='USULUTAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 182, IdEstado = 5, Nombre ='LA UNION', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 182, IdEstado = 6, Nombre ='LA LIBERTAD', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 182, IdEstado = 8, Nombre ='SONSONATE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 189, IdEstado = 1, Nombre ='SAMUTPRAKARN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 189, IdEstado = 2, Nombre ='CHON BURI', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 196, IdEstado = 1, Nombre ='TAOYUAN HSIEN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 196, IdEstado = 2, Nombre ='KAOHSIUNG', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 196, IdEstado = 3, Nombre ='KEELUNG', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 201, IdEstado = 1, Nombre ='MONTEVIDEO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 204, IdEstado = 1, Nombre ='ZULIA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 207, IdEstado = 1, Nombre ='CONG NAM BO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 214, IdEstado = 1, Nombre ='Kempton Park', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 214, IdEstado = 2, Nombre ='Gauteng.', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 214, IdEstado = 3, Nombre ='Johannesburgo', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 1, Nombre ='BANSKA BYSTRICA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 2, Nombre ='BANSKA STIAVNICA DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 3, Nombre ='BARDEJOV DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 4, Nombre ='BRATISLAVA I', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 5, Nombre ='BRATISLAVA II', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 6, Nombre ='BRATISLAVA III', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 7, Nombre ='BRATISLAVA IV', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 8, Nombre ='BRATISLAVA V', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 9, Nombre ='BREZNO DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 10, Nombre ='BYTCA DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 11, Nombre ='BANOVCE NAD BEBRAVOU DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 12, Nombre ='CADCA DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 13, Nombre ='DETVA DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 14, Nombre ='DOLNY KUBIN DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 15, Nombre ='DUNAJSKA STREDA DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 16, Nombre ='GALANTA DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 17, Nombre ='GELNICA DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 18, Nombre ='HLOHOVEC DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 19, Nombre ='HUMENNE DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 20, Nombre ='ILAVA DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 21, Nombre ='KEZMAROK DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 22, Nombre ='KOMARNO DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 23, Nombre ='KOSICE I', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 24, Nombre ='KOSICE II', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 25, Nombre ='KOSICE III', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 26, Nombre ='KOSICE IV', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 27, Nombre ='KOSICE OKOLIE DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 28, Nombre ='KRUPINA DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 29, Nombre ='KYSUCKE NOVE MESTO DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 30, Nombre ='LEVICE DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 31, Nombre ='LEVOCA DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 32, Nombre ='LIPTOVSKY MIKULAS DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 33, Nombre ='LUCENEC DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 34, Nombre ='MALACKY DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 35, Nombre ='MARTIN DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 36, Nombre ='MEDZILABORCE DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 37, Nombre ='MICHALOVCE DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 38, Nombre ='MYJAVA DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 39, Nombre ='NITRA DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 40, Nombre ='NOVE MESTO NAD VAHOM DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 41, Nombre ='NOVE ZAMKY DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 42, Nombre ='NAMESTOVO DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 43, Nombre ='PARTIZANSKE DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 44, Nombre ='PEZINOK DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 45, Nombre ='PIESTANY DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 46, Nombre ='POLTAR DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 47, Nombre ='POPRAD DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 48, Nombre ='POVAZSKA BYSTRICA DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 49, Nombre ='PRESOV DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 50, Nombre ='PRIEVIDZA DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 51, Nombre ='PUCHOV DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 52, Nombre ='REVUCA DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 53, Nombre ='RIMAVSKA SOBOTA DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 54, Nombre ='ROZNAVA DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 55, Nombre ='RUZOMBEROK DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 56, Nombre ='SABINOV DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 57, Nombre ='SALA DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 58, Nombre ='SENEC DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 59, Nombre ='SENICA DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 60, Nombre ='SKALICA DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 61, Nombre ='SNINA DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 62, Nombre ='SOBRANCE DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 63, Nombre ='SPISSKA NOVA VES DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 64, Nombre ='STARA LUBOVNA DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 65, Nombre ='STROPKOV DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 66, Nombre ='SVIDNIK DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 67, Nombre ='TOPOLCANY DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 68, Nombre ='TREBISOV DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 69, Nombre ='TRENCIN DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 70, Nombre ='TRNAVA DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 71, Nombre ='TURCIANSKE TEPLICE DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 72, Nombre ='TVRDOSIN DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 73, Nombre ='VELKY KRTIS DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 74, Nombre ='VRANOV NAD TOPLOU DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 75, Nombre ='ZARNOVICA DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 76, Nombre ='ZIAR NAD HRONOM DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 77, Nombre ='ZILINA DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 78, Nombre ='ZLATE MORAVCE DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 219, IdEstado = 79, Nombre ='ZVOLEN DISTRICT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 224, IdEstado = 1, Nombre ='CURACAO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 
GO

select * from Estado


select * from municipio


INSERT INTO [dbo].[Municipio]
           ([IdPais]
           ,[IdEstado]
           ,[IdMunicipio]
           ,[Nombre]
           ,[Activo]
           ,[FechaUltimaMod]
           ,[NombrePcMod]
           ,[ClaUsuarioMod])
select IdPais = 0, IdEstado = 0, IdMunicipio = 0, Nombre ='SIN ASIGNAR', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 1, IdMunicipio = 1, Nombre ='AGUASCALIENTES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 1, IdMunicipio = 2, Nombre ='ASIENTOS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 1, IdMunicipio = 3, Nombre ='CALVILLO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 1, IdMunicipio = 4, Nombre ='COSIO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 1, IdMunicipio = 5, Nombre ='EL LLANO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 1, IdMunicipio = 6, Nombre ='JESUS MARIA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 1, IdMunicipio = 7, Nombre ='PABELLON DE ARTEAGA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 1, IdMunicipio = 8, Nombre ='RINCON DE ROMOS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 1, IdMunicipio = 9, Nombre ='SAN FRANCISCO DE LOS ROMO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 1, IdMunicipio = 10, Nombre ='SAN JOSE DE GRACIA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 1, IdMunicipio = 11, Nombre ='TEPEZALA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 2, IdMunicipio = 1, Nombre ='ENSENADA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 2, IdMunicipio = 2, Nombre ='MEXICALI', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 2, IdMunicipio = 3, Nombre ='TECATE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 2, IdMunicipio = 4, Nombre ='TIJUANA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 2, IdMunicipio = 5, Nombre ='PLAYAS DE ROSARITO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 3, IdMunicipio = 1, Nombre ='COMONDU', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 3, IdMunicipio = 2, Nombre ='MULEGE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 3, IdMunicipio = 3, Nombre ='LA PAZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 3, IdMunicipio = 4, Nombre ='LOS CABOS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 4, IdMunicipio = 1, Nombre ='CALKINI', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 4, IdMunicipio = 2, Nombre ='CAMPECHE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 4, IdMunicipio = 3, Nombre ='CARMEN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 4, IdMunicipio = 4, Nombre ='CHAMPOTON', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 4, IdMunicipio = 5, Nombre ='HECELCHAKAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 4, IdMunicipio = 6, Nombre ='HOPELCHEN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 4, IdMunicipio = 7, Nombre ='PALIZADA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 4, IdMunicipio = 8, Nombre ='TENABO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 4, IdMunicipio = 9, Nombre ='ESCARCEGA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 5, IdMunicipio = 1, Nombre ='ABASOLO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 5, IdMunicipio = 2, Nombre ='ACU¥A', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 5, IdMunicipio = 3, Nombre ='ALLENDE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 5, IdMunicipio = 4, Nombre ='ARTEAGA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 5, IdMunicipio = 5, Nombre ='CANDELA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 5, IdMunicipio = 6, Nombre ='CASTA¥OS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 5, IdMunicipio = 7, Nombre ='CUATROCIENEGAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 5, IdMunicipio = 8, Nombre ='ESCOBEDO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 5, IdMunicipio = 9, Nombre ='FRANCISCO I MADERO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 5, IdMunicipio = 10, Nombre ='FRONTERA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 5, IdMunicipio = 11, Nombre ='GENERAL CEPEDA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 5, IdMunicipio = 12, Nombre ='GUERRERO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 5, IdMunicipio = 13, Nombre ='HIDALGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 5, IdMunicipio = 14, Nombre ='JIMENEZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 5, IdMunicipio = 15, Nombre ='JUAREZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 5, IdMunicipio = 16, Nombre ='LAMADRID', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 5, IdMunicipio = 17, Nombre ='MATAMOROS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 5, IdMunicipio = 18, Nombre ='MONCLOVA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 5, IdMunicipio = 19, Nombre ='MORELOS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 5, IdMunicipio = 20, Nombre ='MUZQUIZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 5, IdMunicipio = 21, Nombre ='NADADORES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 5, IdMunicipio = 22, Nombre ='NAVA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 5, IdMunicipio = 23, Nombre ='OCAMPO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 5, IdMunicipio = 24, Nombre ='PARRAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 5, IdMunicipio = 25, Nombre ='PIEDRAS NEGRAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 5, IdMunicipio = 26, Nombre ='PROGRESO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 5, IdMunicipio = 27, Nombre ='RAMOS ARIZPE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 5, IdMunicipio = 28, Nombre ='SABINAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 5, IdMunicipio = 29, Nombre ='SACRAMENTO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 5, IdMunicipio = 30, Nombre ='SALTILLO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 5, IdMunicipio = 31, Nombre ='SAN BUENAVENTURA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 5, IdMunicipio = 32, Nombre ='SAN JUAN DE SABINAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 5, IdMunicipio = 33, Nombre ='SAN PEDRO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 5, IdMunicipio = 34, Nombre ='SIERRA MOJADA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 5, IdMunicipio = 35, Nombre ='TORREON', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 5, IdMunicipio = 36, Nombre ='VIESCA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 5, IdMunicipio = 37, Nombre ='VILLA UNION', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 5, IdMunicipio = 38, Nombre ='ZARAGOZA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 6, IdMunicipio = 1, Nombre ='ARMERIA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 6, IdMunicipio = 2, Nombre ='COLIMA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 6, IdMunicipio = 3, Nombre ='COMALA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 6, IdMunicipio = 4, Nombre ='COQUIMATLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 6, IdMunicipio = 5, Nombre ='CUAUHTEMOC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 6, IdMunicipio = 6, Nombre ='IXTLAHUACAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 6, IdMunicipio = 7, Nombre ='MANZANILLO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 6, IdMunicipio = 8, Nombre ='MINATITLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 6, IdMunicipio = 9, Nombre ='TECOMAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 6, IdMunicipio = 10, Nombre ='VILLA DE ALVAREZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 1, Nombre ='ACACOYAGUA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 2, Nombre ='ACALA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 3, Nombre ='ACAPETAHUA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 4, Nombre ='ALTAMIRANO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 5, Nombre ='AMATAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 6, Nombre ='AMATENANGO DE LA FRONTERA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 7, Nombre ='AMATENANGO DEL VALLE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 8, Nombre ='ANGEL ALBINO CORZO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 9, Nombre ='ARRIAGA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 10, Nombre ='BEJUCAL DE OCAMPO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 11, Nombre ='BELLA VISTA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 12, Nombre ='BERRIOZABAL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 13, Nombre ='BOCHIL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 14, Nombre ='EL BOSQUE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 15, Nombre ='CACAHOATAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 16, Nombre ='CATAZAJA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 17, Nombre ='CINTALAPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 18, Nombre ='COAPILLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 19, Nombre ='COMITAN DE DOMINGUEZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 20, Nombre ='LA CONCORDIA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 21, Nombre ='COPAINALA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 22, Nombre ='CHALCHIHUITAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 23, Nombre ='CHAMULA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 24, Nombre ='CHANAL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 25, Nombre ='CHAPULTENANGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 26, Nombre ='CHENALHO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 27, Nombre ='CHIAPA DE CORZO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 28, Nombre ='CHIAPILLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 29, Nombre ='CHICOASEN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 30, Nombre ='CHICOMUSELO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 31, Nombre ='CHILON', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 32, Nombre ='ESCUINTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 33, Nombre ='FRANCISCO LEON', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 34, Nombre ='FRONTERA COMALAPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 35, Nombre ='FRONTERA HIDALGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 36, Nombre ='LA GRANDEZA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 37, Nombre ='HUEHUETAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 38, Nombre ='HUIXTAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 39, Nombre ='HUITIUPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 40, Nombre ='HUIXTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 41, Nombre ='LA INDEPENDENCIA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 42, Nombre ='IXHUATAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 43, Nombre ='IXTACOMITAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 44, Nombre ='IXTAPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 45, Nombre ='IXTAPANGAJOYA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 46, Nombre ='JIQUIPILAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 47, Nombre ='JITOTOL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 48, Nombre ='JUAREZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 49, Nombre ='LARRAINZAR', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 50, Nombre ='LA LIBERTAD', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 51, Nombre ='MAPASTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 52, Nombre ='LAS MARGARITAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 53, Nombre ='MAZAPA DE MADERO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 54, Nombre ='MAZATAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 55, Nombre ='METAPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 56, Nombre ='MITONTIC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 57, Nombre ='MOTOZINTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 58, Nombre ='NICOLAS RUIZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 59, Nombre ='OCOSINGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 60, Nombre ='OCOTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 61, Nombre ='OCOZOCOAUTLA DE ESPINOSA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 62, Nombre ='OSTUACAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 63, Nombre ='OSUMACINTA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 64, Nombre ='OXCHUC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 65, Nombre ='PALENQUE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 66, Nombre ='PANTELHO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 67, Nombre ='PANTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 68, Nombre ='PICHUCALCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 69, Nombre ='PIJIJIAPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 70, Nombre ='EL PORVENIR', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 71, Nombre ='VILLA COMALTITLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 72, Nombre ='PUEBLO NUEVO SOLISTAHUACAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 73, Nombre ='RAYON', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 74, Nombre ='REFORMA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 75, Nombre ='LAS ROSAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 76, Nombre ='SABANILLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 77, Nombre ='SALTO DE AGUA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 78, Nombre ='SAN CRISTOBAL DE LAS CASAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 79, Nombre ='SAN FERNANDO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 80, Nombre ='SILTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 81, Nombre ='SIMOJOVEL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 82, Nombre ='SITALA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 83, Nombre ='SOCOLTENANGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 84, Nombre ='SOLOSUCHIAPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 85, Nombre ='SOYALO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 86, Nombre ='SUCHIAPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 87, Nombre ='SUCHIATE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 88, Nombre ='SUNUAPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 89, Nombre ='TAPACHULA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 90, Nombre ='TAPALAPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 91, Nombre ='TAPILULA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 92, Nombre ='TECPATAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 93, Nombre ='TENEJAPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 94, Nombre ='TEOPISCA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 96, Nombre ='TILA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 97, Nombre ='TONALA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 98, Nombre ='TOTOLAPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 99, Nombre ='LA TRINITARIA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 100, Nombre ='TUMBALA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 101, Nombre ='TUXTLA GUTIERREZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 102, Nombre ='TUXTLA CHICO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 103, Nombre ='TUZANTAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 104, Nombre ='TZIMOL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 105, Nombre ='UNION JUAREZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 106, Nombre ='VENUSTIANO CARRANZA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 107, Nombre ='VILLA CORZO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 108, Nombre ='VILLAFLORES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 109, Nombre ='YAJALON', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 110, Nombre ='SAN LUCAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 111, Nombre ='ZINACANTAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 7, IdMunicipio = 112, Nombre ='SAN JUAN CANCUC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 1, Nombre ='AHUMADA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 2, Nombre ='ALDAMA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 3, Nombre ='ALLENDE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 4, Nombre ='AQUILES SERDAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 5, Nombre ='ASCENSION', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 6, Nombre ='BACHINIVA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 7, Nombre ='BALLEZA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 8, Nombre ='BATOPILAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 9, Nombre ='BOCOYNA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 10, Nombre ='BUENAVENTURA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 11, Nombre ='CAMARGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 12, Nombre ='CARICHI', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 13, Nombre ='CASAS GRANDES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 14, Nombre ='CORONADO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 15, Nombre ='COYAME', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 16, Nombre ='LA CRUZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 17, Nombre ='CUAUHTEMOC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 18, Nombre ='CUSIHUIRIACHI', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 19, Nombre ='CHIHUAHUA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 20, Nombre ='CHINIPAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 21, Nombre ='DELICIAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 22, Nombre ='DOCTOR BELISARIO DOMINGUEZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 23, Nombre ='GALEANA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 24, Nombre ='GENERAL TRIAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 25, Nombre ='GOMEZ FARIAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 26, Nombre ='GRAN MORELOS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 27, Nombre ='GUACHOCHI', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 28, Nombre ='GUADALUPE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 29, Nombre ='GUADALUPE Y CALVO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 30, Nombre ='GUAZAPARES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 31, Nombre ='GUERRERO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 32, Nombre ='HIDALGO DEL PARRAL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 33, Nombre ='HUEJOTITAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 34, Nombre ='IGNACIO ZARAGOZA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 35, Nombre ='JANOS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 36, Nombre ='JIMENEZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 37, Nombre ='JUAREZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 38, Nombre ='JULIMES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 39, Nombre ='LOPEZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 40, Nombre ='MADERA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 41, Nombre ='MAGUARICHI', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 42, Nombre ='MANUEL BENAVIDES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 43, Nombre ='MATACHI', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 44, Nombre ='MATAMOROS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 45, Nombre ='MEOQUI', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 46, Nombre ='MORELOS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 47, Nombre ='MORIS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 48, Nombre ='NAMIQUIPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 49, Nombre ='NONOAVA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 50, Nombre ='NUEVO CASAS GRANDES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 51, Nombre ='OCAMPO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 52, Nombre ='OJINAGA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 53, Nombre ='PRAXEDIS G GUERRERO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 54, Nombre ='RIVA PALACIO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 55, Nombre ='ROSALES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 56, Nombre ='ROSARIO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 57, Nombre ='SAN FRANCISCO DE BORJA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 58, Nombre ='SAN FRANCISCO DE CONCHOS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 59, Nombre ='SAN FRANCISCO DEL ORO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 60, Nombre ='SANTA BARBARA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 61, Nombre ='SATEVO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 62, Nombre ='SAUCILLO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 63, Nombre ='TEMOSACHI', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 64, Nombre ='EL TULE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 65, Nombre ='URIQUE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 66, Nombre ='URUACHI', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 8, IdMunicipio = 67, Nombre ='VALLE DE ZARAGOZA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 9, IdMunicipio = 1, Nombre ='ALVARO OBREGON', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 9, IdMunicipio = 2, Nombre ='AZCAPOTZALCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 9, IdMunicipio = 3, Nombre ='BENITO JUAREZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 9, IdMunicipio = 4, Nombre ='COYOACAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 9, IdMunicipio = 5, Nombre ='CUAJIMALPA DE MORELOS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 9, IdMunicipio = 6, Nombre ='CUAUHTEMOC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 9, IdMunicipio = 7, Nombre ='GUSTAVO A MADERO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 9, IdMunicipio = 8, Nombre ='IZTACALCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 9, IdMunicipio = 9, Nombre ='IZTAPALAPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 9, IdMunicipio = 10, Nombre ='LA MAGDALENA CONTRERAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 9, IdMunicipio = 11, Nombre ='MIGUEL HIDALGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 9, IdMunicipio = 12, Nombre ='MILPA ALTA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 9, IdMunicipio = 13, Nombre ='TLAHUAC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 9, IdMunicipio = 14, Nombre ='TLALPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 9, IdMunicipio = 15, Nombre ='VENUSTIANO CARRANZA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 9, IdMunicipio = 16, Nombre ='XOCHIMILCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 10, IdMunicipio = 1, Nombre ='CANATLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 10, IdMunicipio = 2, Nombre ='CANELAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 10, IdMunicipio = 3, Nombre ='CONETO DE COMONFORT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 10, IdMunicipio = 4, Nombre ='CUENCAME', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 10, IdMunicipio = 5, Nombre ='DURANGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 10, IdMunicipio = 6, Nombre ='GENERAL SIMON BOLIVAR', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 10, IdMunicipio = 7, Nombre ='GOMEZ PALACIO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 10, IdMunicipio = 8, Nombre ='GUADALUPE VICTORIA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 10, IdMunicipio = 9, Nombre ='GUANACEVI', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 10, IdMunicipio = 10, Nombre ='HIDALGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 10, IdMunicipio = 11, Nombre ='INDE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 10, IdMunicipio = 12, Nombre ='LERDO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 10, IdMunicipio = 13, Nombre ='MAPIMI', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 10, IdMunicipio = 14, Nombre ='MEZQUITAL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 10, IdMunicipio = 15, Nombre ='NAZAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 10, IdMunicipio = 16, Nombre ='NOMBRE DE DIOS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 10, IdMunicipio = 17, Nombre ='OCAMPO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 10, IdMunicipio = 18, Nombre ='EL ORO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 10, IdMunicipio = 19, Nombre ='OTAEZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 10, IdMunicipio = 20, Nombre ='PANUCO DE CORONADO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 10, IdMunicipio = 21, Nombre ='PE¥ON BLANCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 10, IdMunicipio = 22, Nombre ='POANAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 10, IdMunicipio = 23, Nombre ='PUEBLO NUEVO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 10, IdMunicipio = 24, Nombre ='RODEO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 10, IdMunicipio = 25, Nombre ='SAN BERNARDO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 10, IdMunicipio = 26, Nombre ='SAN DIMAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 10, IdMunicipio = 27, Nombre ='SAN JUAN DE GUADALUPE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 10, IdMunicipio = 28, Nombre ='SAN JUAN DEL RIO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 10, IdMunicipio = 29, Nombre ='SAN LUIS DEL CORDERO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 10, IdMunicipio = 30, Nombre ='SAN PEDRO DEL GALLO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 10, IdMunicipio = 31, Nombre ='SANTA CLARA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 10, IdMunicipio = 32, Nombre ='SANTIAGO PAPASQUIARO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 10, IdMunicipio = 33, Nombre ='SUCHIL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 10, IdMunicipio = 34, Nombre ='TAMAZULA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 10, IdMunicipio = 35, Nombre ='TEPEHUANES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 10, IdMunicipio = 36, Nombre ='TLAHUALILO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 10, IdMunicipio = 37, Nombre ='TOPIA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 10, IdMunicipio = 38, Nombre ='VICENTE GUERRERO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 10, IdMunicipio = 39, Nombre ='NUEVO IDEAL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 11, IdMunicipio = 1, Nombre ='ABASOLO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 11, IdMunicipio = 2, Nombre ='ACAMBARO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 11, IdMunicipio = 3, Nombre ='ALLENDE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 11, IdMunicipio = 4, Nombre ='APASEO EL ALTO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 11, IdMunicipio = 5, Nombre ='APASEO EL GRANDE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 11, IdMunicipio = 6, Nombre ='ATARJEA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 11, IdMunicipio = 7, Nombre ='CELAYA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 11, IdMunicipio = 8, Nombre ='MANUEL DOBLADO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 11, IdMunicipio = 9, Nombre ='COMONFORT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 11, IdMunicipio = 10, Nombre ='CORONEO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 11, IdMunicipio = 11, Nombre ='CORTAZAR', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 11, IdMunicipio = 12, Nombre ='CUERAMARO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 11, IdMunicipio = 13, Nombre ='DOCTOR MORA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 11, IdMunicipio = 14, Nombre ='DOLORES HIDALGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 11, IdMunicipio = 15, Nombre ='GUANAJUATO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 11, IdMunicipio = 16, Nombre ='HUANIMARO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 11, IdMunicipio = 17, Nombre ='IRAPUATO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 11, IdMunicipio = 18, Nombre ='JARAL DEL PROGRESO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 11, IdMunicipio = 19, Nombre ='JERECUARO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 11, IdMunicipio = 20, Nombre ='LEON', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 11, IdMunicipio = 21, Nombre ='MOROLEON', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 11, IdMunicipio = 22, Nombre ='OCAMPO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 11, IdMunicipio = 23, Nombre ='PENJAMO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 11, IdMunicipio = 24, Nombre ='PUEBLO NUEVO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 11, IdMunicipio = 25, Nombre ='PURISIMA DEL RINCON', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 11, IdMunicipio = 26, Nombre ='ROMITA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 11, IdMunicipio = 27, Nombre ='SALAMANCA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 11, IdMunicipio = 28, Nombre ='SALVATIERRA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 11, IdMunicipio = 29, Nombre ='SAN DIEGO DE LA UNION', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 11, IdMunicipio = 30, Nombre ='SAN FELIPE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 11, IdMunicipio = 31, Nombre ='SAN FRANCISCO DEL RINCON', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 11, IdMunicipio = 32, Nombre ='SAN JOSE ITURBIDE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 11, IdMunicipio = 33, Nombre ='SAN LUIS DE LA PAZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 11, IdMunicipio = 34, Nombre ='SANTA CATARINA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 11, IdMunicipio = 35, Nombre ='SANTA CRUZ DE JUVENTINO ROSAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 11, IdMunicipio = 36, Nombre ='SANTIAGO MARAVATIO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 11, IdMunicipio = 37, Nombre ='SILAO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 11, IdMunicipio = 38, Nombre ='TARANDACUAO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 11, IdMunicipio = 39, Nombre ='TARIMORO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 11, IdMunicipio = 40, Nombre ='TIERRA BLANCA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 11, IdMunicipio = 41, Nombre ='URIANGATO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 11, IdMunicipio = 42, Nombre ='VALLE DE SANTIAGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 11, IdMunicipio = 43, Nombre ='VICTORIA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 11, IdMunicipio = 44, Nombre ='VILLAGRAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 11, IdMunicipio = 45, Nombre ='XICHU', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 11, IdMunicipio = 46, Nombre ='YURIRIA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 1, Nombre ='ACAPULCO DE JUAREZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 2, Nombre ='AHUACUOTZINGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 3, Nombre ='AJUCHITLAN DEL PROGRESO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 4, Nombre ='ALCOZAUCA DE GUERRERO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 5, Nombre ='ALPOYECA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 6, Nombre ='APAXTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 7, Nombre ='ARCELIA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 8, Nombre ='ATENANGO DEL RIO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 9, Nombre ='ATLAMAJALCINGO DEL MONTE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 10, Nombre ='ATLIXTAC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 11, Nombre ='ATOYAC DE ALVAREZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 12, Nombre ='AYUTLA DE LOS LIBRES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 13, Nombre ='AZOYU', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 14, Nombre ='BENITO JUAREZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 15, Nombre ='BUENAVISTA DE CUELLAR', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 16, Nombre ='COAHUAYUTLA DE JOSE MARIA IZAZAGA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 17, Nombre ='COCULA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 18, Nombre ='COPALA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 19, Nombre ='COPALILLO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 20, Nombre ='COPANATOYAC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 21, Nombre ='COYUCA DE BENITEZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 22, Nombre ='COYUCA DE CATALAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 23, Nombre ='CUAJINICUILAPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 24, Nombre ='CUALAC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 25, Nombre ='CUAUTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 26, Nombre ='CUETZALA DEL PROGRESO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 27, Nombre ='CUTZAMALA DE PINZON', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 28, Nombre ='CHILAPA DE ALVAREZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 29, Nombre ='CHILPANCINGO DE LOS BRAVO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 30, Nombre ='FLORENCIO VILLARREAL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 31, Nombre ='GENERAL CANUTO A NERI', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 32, Nombre ='GENERAL HELIODORO CASTILLO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 33, Nombre ='HUAMUXTITLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 34, Nombre ='HUITZUCO DE LOS FIGUEROA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 35, Nombre ='IGUALA DE LA INDEPENDENCIA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 36, Nombre ='IGUALAPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 37, Nombre ='IXCATEOPAN DE CUAUHTEMOC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 38, Nombre ='JOSE AZUETA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 39, Nombre ='JUAN R ESCUDERO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 40, Nombre ='LEONARDO BRAVO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 41, Nombre ='MALINALTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 42, Nombre ='MARTIR DE CUILAPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 43, Nombre ='METLATONOC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 44, Nombre ='MOCHITLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 45, Nombre ='OLINALA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 46, Nombre ='OMETEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 47, Nombre ='PEDRO ASCENCIO ALQUISIRAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 48, Nombre ='PETATLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 49, Nombre ='PILCAYA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 50, Nombre ='PUNGARABATO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 51, Nombre ='QUECHULTENANGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 52, Nombre ='SAN LUIS ACATLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 53, Nombre ='SAN MARCOS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 54, Nombre ='SAN MIGUEL TOTOLAPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 55, Nombre ='TAXCO DE ALARCON', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 56, Nombre ='TECOANAPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 57, Nombre ='TECPAN DE GALEANA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 58, Nombre ='TELOLOAPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 59, Nombre ='TEPECOACUILCO DE TRUJANO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 60, Nombre ='TETIPAC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 61, Nombre ='TIXTLA DE GUERRERO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 62, Nombre ='TLACOACHISTLAHUACA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 63, Nombre ='TLACOAPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 64, Nombre ='TLALCHAPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 65, Nombre ='TLALIXTAQUILLA DE MALDONADO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 66, Nombre ='TLAPA DE COMONFORT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 67, Nombre ='TLAPEHUALA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 68, Nombre ='LA UNION', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 69, Nombre ='XALPATLAHUAC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 70, Nombre ='XOCHIHUEHUETLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 71, Nombre ='XOCHISTLAHUACA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 72, Nombre ='ZAPOTITLAN TABLAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 73, Nombre ='ZIRANDARO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 74, Nombre ='ZITLALA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 12, IdMunicipio = 75, Nombre ='EDUARDO NERI', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 1, Nombre ='ACATLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 2, Nombre ='ACAXOCHITLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 3, Nombre ='ACTOPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 4, Nombre ='AGUA BLANCA DE ITURBIDE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 5, Nombre ='AJACUBA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 6, Nombre ='ALFAJAYUCAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 7, Nombre ='ALMOLOYA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 8, Nombre ='APAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 9, Nombre ='EL ARENAL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 10, Nombre ='ATITALAQUIA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 11, Nombre ='ATLAPEXCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 12, Nombre ='ATOTONILCO EL GRANDE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 13, Nombre ='ATOTONILCO DE TULA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 14, Nombre ='CALNALI', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 15, Nombre ='CARDONAL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 16, Nombre ='CUAUTEPEC DE HINOJOSA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 17, Nombre ='CHAPANTONGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 18, Nombre ='CHAPULHUACAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 19, Nombre ='CHILCUAUTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 20, Nombre ='ELOXOCHITLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 21, Nombre ='EMILIANO ZAPATA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 22, Nombre ='EPAZOYUCAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 23, Nombre ='FRANCISCO I MADERO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 24, Nombre ='HUASCA DE OCAMPO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 25, Nombre ='HUAUTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 26, Nombre ='HUAZALINGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 27, Nombre ='HUEHUETLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 28, Nombre ='HUEJUTLA DE REYES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 29, Nombre ='HUICHAPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 30, Nombre ='IXMIQUILPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 31, Nombre ='JACALA DE LEDEZMA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 32, Nombre ='JALTOCAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 33, Nombre ='JUAREZ HIDALGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 34, Nombre ='LOLOTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 35, Nombre ='METEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 36, Nombre ='SAN AGUSTIN METZQUITITLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 37, Nombre ='METZTITLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 38, Nombre ='MINERAL DEL CHICO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 39, Nombre ='MINERAL DEL MONTE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 40, Nombre ='LA MISION', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 41, Nombre ='MIXQUIAHUALA DE JUAREZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 42, Nombre ='MOLANGO DE ESCAMILLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 43, Nombre ='NICOLAS FLORES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 44, Nombre ='NOPALA DE VILLAGRAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 45, Nombre ='OMITLAN DE JUAREZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 46, Nombre ='SAN FELIPE ORIZATLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 47, Nombre ='PACULA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 48, Nombre ='PACHUCA DE SOTO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 49, Nombre ='PISAFLORES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 50, Nombre ='PROGRESO DE OBREGON', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 51, Nombre ='MINERAL DE LA REFORMA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 52, Nombre ='SAN AGUSTIN TLAXIACA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 53, Nombre ='SAN BARTOLO TUTOTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 54, Nombre ='SAN SALVADOR', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 55, Nombre ='SANTIAGO DE ANAYA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 56, Nombre ='SANTIAGO TULANTEPEC DE LUGO GUERRERO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 57, Nombre ='SINGUILUCAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 58, Nombre ='TASQUILLO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 59, Nombre ='TECOZAUTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 60, Nombre ='TENANGO DE DORIA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 61, Nombre ='TEPEAPULCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 62, Nombre ='TEPEHUACAN DE GUERRERO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 63, Nombre ='TEPEJI DEL RIO DE OCAMPO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 64, Nombre ='TEPETITLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 65, Nombre ='TETEPANGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 66, Nombre ='VILLA DE TEZONTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 67, Nombre ='TEZONTEPEC DE ALDAMA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 68, Nombre ='TIANGUISTENGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 69, Nombre ='TIZAYUCA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 70, Nombre ='TLAHUELILPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 71, Nombre ='TLAHUILTEPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 72, Nombre ='TLANALAPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 73, Nombre ='TLANCHINOL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 74, Nombre ='TLAXCOAPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 75, Nombre ='TOLCAYUCA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 76, Nombre ='TULA DE ALLENDE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 77, Nombre ='TULANCINGO DE BRAVO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 78, Nombre ='XOCHIATIPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 79, Nombre ='XOCHICOATLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 80, Nombre ='YAHUALICA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 81, Nombre ='ZACUALTIPAN DE ANGELES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 82, Nombre ='ZAPOTLAN DE JUAREZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 83, Nombre ='ZEMPOALA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 13, IdMunicipio = 84, Nombre ='ZIMAPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 1, Nombre ='ACATIC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 2, Nombre ='ACATLAN DE JUAREZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 3, Nombre ='AHUALULCO DE MERCADO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 4, Nombre ='AMACUECA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 5, Nombre ='AMATITAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 6, Nombre ='AMECA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 7, Nombre ='ANTONIO ESCOBEDO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 8, Nombre ='ARANDAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 9, Nombre ='ARENAL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 10, Nombre ='ATEMAJAC DE BRIZUELA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 11, Nombre ='ATENGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 12, Nombre ='ATENGUILLO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 13, Nombre ='ATOTONILCO EL ALTO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 14, Nombre ='ATOYAC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 15, Nombre ='AUTLAN DE NAVARRO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 16, Nombre ='AYOTLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 17, Nombre ='AYUTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 18, Nombre ='LA BARCA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 19, Nombre ='BOLA¥OS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 20, Nombre ='CABO CORRIENTES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 21, Nombre ='CASIMIRO CASTILLO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 22, Nombre ='CIHUATLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 23, Nombre ='CIUDAD GUZMAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 24, Nombre ='COCULA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 25, Nombre ='COLOTLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 26, Nombre ='CONCEPCION DE BUENOS AIRES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 27, Nombre ='CUAUTITLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 28, Nombre ='CUAUTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 29, Nombre ='CUQUIO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 30, Nombre ='CHAPALA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 31, Nombre ='CHIMALTITAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 32, Nombre ='CHIQUILISTLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 33, Nombre ='DEGOLLADO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 34, Nombre ='EJUTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 35, Nombre ='ENCARNACION DE DIAZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 36, Nombre ='ETZATLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 37, Nombre ='EL GRULLO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 38, Nombre ='GUACHINANGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 39, Nombre ='GUADALAJARA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 40, Nombre ='HOSTOTIPAQUILLO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 41, Nombre ='HUEJUCAR', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 42, Nombre ='HUEJUQUILLA EL ALTO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 43, Nombre ='LA HUERTA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 44, Nombre ='IXTLAHUACAN DE LOS MEMBRILLOS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 45, Nombre ='IXTLAHUACAN DEL RIO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 46, Nombre ='JALOSTOTITLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 47, Nombre ='JAMAY', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 48, Nombre ='JESUS MARIA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 49, Nombre ='JILOTLAN DE LOS DOLORES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 50, Nombre ='JOCOTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 51, Nombre ='JUANACATLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 52, Nombre ='JUCHITLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 53, Nombre ='LAGOS DE MORENO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 54, Nombre ='EL LIMON', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 55, Nombre ='MAGDALENA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 56, Nombre ='SANTA MARIA DEL ORO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 57, Nombre ='MANZANILLA DE LA PAZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 58, Nombre ='MASCOTA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 59, Nombre ='MAZAMITLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 60, Nombre ='MEXTICACAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 61, Nombre ='MEZQUITIC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 62, Nombre ='MIXTLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 63, Nombre ='OCOTLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 64, Nombre ='OJUELOS DE JALISCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 65, Nombre ='PIHUAMO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 66, Nombre ='PONCITLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 67, Nombre ='PUERTO VALLARTA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 68, Nombre ='VILLA PURIFICACION', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 69, Nombre ='QUITUPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 70, Nombre ='EL SALTO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 71, Nombre ='SAN CRISTOBAL DE LA BARRANCA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 72, Nombre ='SAN DIEGO DE ALEJANDRIA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 73, Nombre ='SAN JUAN DE LOS LAGOS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 74, Nombre ='SAN JULIAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 75, Nombre ='SAN MARCOS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 76, Nombre ='SAN MARTIN DE BOLA¥OS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 77, Nombre ='SAN MARTIN HIDALGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 78, Nombre ='SAN MIGUEL EL ALTO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 79, Nombre ='GOMEZ FARIAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 80, Nombre ='SAN SEBASTIAN DEL OESTE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 81, Nombre ='SANTA MARIA DE LOS ANGELES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 82, Nombre ='SAYULA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 83, Nombre ='TALA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 84, Nombre ='TALPA DE ALLENDE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 85, Nombre ='TAMAZULA DE GORDIANO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 86, Nombre ='TAPALPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 87, Nombre ='TECALITLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 88, Nombre ='TECOLOTLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 89, Nombre ='TECHALUTA DE MONTENEGRO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 90, Nombre ='TENAMAXTLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 91, Nombre ='TEOCALTICHE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 92, Nombre ='TEOCUITATLAN DE CORONA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 93, Nombre ='TEPATITLAN DE MORELOS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 94, Nombre ='TEQUILA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 95, Nombre ='TEUCHITLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 96, Nombre ='TIZAPAN EL ALTO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 97, Nombre ='TLAJOMULCO DE ZU¥IGA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 98, Nombre ='TLAQUEPAQUE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 99, Nombre ='TOLIMAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 100, Nombre ='TOMATLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 101, Nombre ='TONALA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 102, Nombre ='TONAYA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 103, Nombre ='TONILA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 104, Nombre ='TOTATICHE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 105, Nombre ='TOTOTLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 106, Nombre ='TUXCACUESCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 107, Nombre ='TUXCUECA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 108, Nombre ='TUXPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 109, Nombre ='UNION DE SAN ANTONIO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 110, Nombre ='UNION DE TULA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 111, Nombre ='VALLE DE GUADALUPE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 112, Nombre ='VALLE DE JUAREZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 113, Nombre ='CIUDAD VENUSTIANO CARRANZA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 114, Nombre ='VILLA CORONA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 115, Nombre ='VILLA GUERRERO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 116, Nombre ='VILLA HIDALGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 117, Nombre ='CA¥ADAS DE OBREGON', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 118, Nombre ='YAHUALICA DE GONZALEZ GALLO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 119, Nombre ='ZACOALCO DE TORRES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 120, Nombre ='ZAPOPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 121, Nombre ='ZAPOTILTIC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 122, Nombre ='ZAPOTITLAN DE VADILLO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 123, Nombre ='ZAPOTLAN DEL REY', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 14, IdMunicipio = 124, Nombre ='ZAPOTLANEJO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 1, Nombre ='ACAMBAY', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 2, Nombre ='ACOLMAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 3, Nombre ='ACULCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 4, Nombre ='ALMOLOYA DE ALQUISIRAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 5, Nombre ='ALMOLOYA DE JUAREZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 6, Nombre ='ALMOLOYA DEL RIO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 7, Nombre ='AMANALCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 8, Nombre ='AMATEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 9, Nombre ='AMECAMECA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 10, Nombre ='APAXCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 11, Nombre ='ATENCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 12, Nombre ='ATIZAPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 13, Nombre ='ATIZAPAN DE ZARAGOZA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 14, Nombre ='ATLACOMULCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 15, Nombre ='ATLAUTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 16, Nombre ='AXAPUSCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 17, Nombre ='AYAPANGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 18, Nombre ='CALIMAYA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 19, Nombre ='CAPULHUAC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 20, Nombre ='COACALCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 21, Nombre ='COATEPEC HARINAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 22, Nombre ='COCOTITLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 23, Nombre ='COYOTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 24, Nombre ='CUAUTITLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 25, Nombre ='CHALCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 26, Nombre ='CHAPA DE MOTA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 27, Nombre ='CHAPULTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 28, Nombre ='CHIAUTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 29, Nombre ='CHICOLOAPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 30, Nombre ='CHICONCUAC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 31, Nombre ='CHIMALHUACAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 32, Nombre ='DONATO GUERRA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 33, Nombre ='ECATEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 34, Nombre ='ECATZINGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 35, Nombre ='HUEHUETOCA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 36, Nombre ='HUEYPOXTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 37, Nombre ='HUIXQUILUCAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 38, Nombre ='ISIDRO FABELA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 39, Nombre ='IXTAPALUCA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 40, Nombre ='IXTAPAN DE LA SAL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 41, Nombre ='IXTAPAN DEL ORO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 42, Nombre ='IXTLAHUACA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 43, Nombre ='JALATLACO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 44, Nombre ='JALTENCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 45, Nombre ='JILOTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 46, Nombre ='JILOTZINGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 47, Nombre ='JIQUIPILCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 48, Nombre ='JOCOTITLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 49, Nombre ='JOQUICINGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 50, Nombre ='JUCHITEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 51, Nombre ='LERMA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 52, Nombre ='MALINALCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 53, Nombre ='MELCHOR OCAMPO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 54, Nombre ='METEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 55, Nombre ='MEXICALTZINGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 56, Nombre ='MORELOS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 57, Nombre ='NAUCALPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 58, Nombre ='NEZAHUALCOYOTL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 59, Nombre ='NEXTLALPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 60, Nombre ='NICOLAS ROMERO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 61, Nombre ='NOPALTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 62, Nombre ='OCOYOACAC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 63, Nombre ='OCUILAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 64, Nombre ='EL ORO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 65, Nombre ='OTUMBA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 66, Nombre ='OTZOLOAPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 67, Nombre ='OTZOLOTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 68, Nombre ='OZUMBA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 69, Nombre ='PAPALOTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 70, Nombre ='LA PAZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 71, Nombre ='POLOTITLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 72, Nombre ='RAYON', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 73, Nombre ='SAN ANTONIO LA ISLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 74, Nombre ='SAN FELIPE DEL PROGRESO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 75, Nombre ='SAN MARTIN DE LAS PIRAMIDES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 76, Nombre ='SAN MATEO ATENCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 77, Nombre ='SAN SIMON DE GUERRERO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 78, Nombre ='SANTO TOMAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 79, Nombre ='SOYANIQUILPAN DE JUAREZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 80, Nombre ='SULTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 81, Nombre ='TECAMAC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 82, Nombre ='TEJUPILCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 83, Nombre ='TEMAMATLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 84, Nombre ='TEMASCALAPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 85, Nombre ='TEMASCALCINGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 86, Nombre ='TEMASCALTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 87, Nombre ='TEMOAYA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 88, Nombre ='TENANCINGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 89, Nombre ='TENANGO DEL AIRE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 90, Nombre ='TENANGO DEL VALLE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 91, Nombre ='TEOLOYUCAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 92, Nombre ='TEOTIHUACAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 93, Nombre ='TEPETLAOXTOC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 94, Nombre ='TEPETLIXPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 95, Nombre ='TEPOTZOTLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 96, Nombre ='TEQUIXQUIAC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 97, Nombre ='TEXCALTITLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 98, Nombre ='TEXCALYACAC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 99, Nombre ='TEXCOCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 100, Nombre ='TEZOYUCA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 101, Nombre ='TIANGUISTENCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 102, Nombre ='TIMILPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 103, Nombre ='TLALMANALCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 104, Nombre ='TLALNEPANTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 105, Nombre ='TLATLAYA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 106, Nombre ='TOLUCA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 107, Nombre ='TONATICO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 108, Nombre ='TULTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 109, Nombre ='TULTITLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 110, Nombre ='VALLE DE BRAVO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 111, Nombre ='VILLA DE ALLENDE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 112, Nombre ='VILLA DEL CARBON', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 113, Nombre ='VILLA GUERRERO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 114, Nombre ='VILLA VICTORIA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 115, Nombre ='XONACATLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 116, Nombre ='ZACAZONAPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 117, Nombre ='ZACUALPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 118, Nombre ='ZINACANTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 119, Nombre ='ZUMPAHUACAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 120, Nombre ='ZUMPANGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 121, Nombre ='CUAUTITLAN IZCALLI', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 15, IdMunicipio = 122, Nombre ='VALLE DE CHALCO SOLIDARIDAD', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 1, Nombre ='ACUITZIO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 2, Nombre ='AGUILILLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 3, Nombre ='ALVARO OBREGON', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 4, Nombre ='ANGAMACUTIRO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 5, Nombre ='ANGANGUEO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 6, Nombre ='APATZINGAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 7, Nombre ='APORO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 8, Nombre ='AQUILA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 9, Nombre ='ARIO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 10, Nombre ='ARTEAGA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 11, Nombre ='BRISE¥AS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 12, Nombre ='BUENAVISTA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 13, Nombre ='CARACUARO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 14, Nombre ='COAHUAYANA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 15, Nombre ='COALCOMAN DE VAZQUEZ PALLARES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 16, Nombre ='COENEO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 17, Nombre ='CONTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 18, Nombre ='COPANDARO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 19, Nombre ='COTIJA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 20, Nombre ='CUITZEO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 21, Nombre ='CHARAPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 22, Nombre ='CHARO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 23, Nombre ='CHAVINDA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 24, Nombre ='CHERAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 25, Nombre ='CHILCHOTA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 26, Nombre ='CHINICUILA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 27, Nombre ='CHUCANDIRO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 28, Nombre ='CHURINTZIO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 29, Nombre ='CHURUMUCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 30, Nombre ='ECUANDUREO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 31, Nombre ='EPITACIO HUERTA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 32, Nombre ='ERONGARICUARO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 33, Nombre ='GABRIEL ZAMORA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 34, Nombre ='HIDALGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 35, Nombre ='LA HUACANA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 36, Nombre ='HUANDACAREO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 37, Nombre ='HUANIQUEO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 38, Nombre ='HUETAMO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 39, Nombre ='HUIRAMBA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 40, Nombre ='INDAPARAPEO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 41, Nombre ='IRIMBO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 42, Nombre ='IXTLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 43, Nombre ='JACONA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 44, Nombre ='JIMENEZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 45, Nombre ='JIQUILPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 46, Nombre ='JUAREZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 47, Nombre ='JUNGAPEO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 48, Nombre ='LAGUNILLAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 49, Nombre ='MADERO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 50, Nombre ='MARAVATIO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 51, Nombre ='MARCOS CASTELLANOS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 52, Nombre ='LAZARO CARDENAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 53, Nombre ='MORELIA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 54, Nombre ='MORELOS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 55, Nombre ='MUGICA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 56, Nombre ='NAHUATZEN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 57, Nombre ='NOCUPETARO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 58, Nombre ='NUEVO PARANGARICUTIRO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 59, Nombre ='NUEVO URECHO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 60, Nombre ='NUMARAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 61, Nombre ='OCAMPO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 62, Nombre ='PAJACUARAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 63, Nombre ='PANINDICUARO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 64, Nombre ='PARACUARO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 65, Nombre ='PARACHO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 66, Nombre ='PATZCUARO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 67, Nombre ='PENJAMILLO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 68, Nombre ='PERIBAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 69, Nombre ='LA PIEDAD', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 70, Nombre ='PUREPERO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 71, Nombre ='PURUANDIRO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 72, Nombre ='QUERENDARO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 73, Nombre ='QUIROGA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 74, Nombre ='COJUMATLAN DE REGULES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 75, Nombre ='LOS REYES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 76, Nombre ='SAHUAYO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 77, Nombre ='SAN LUCAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 78, Nombre ='SANTA ANA MAYA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 79, Nombre ='SALVADOR ESCALANTE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 80, Nombre ='SENGUIO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 81, Nombre ='SUSUPUATO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 82, Nombre ='TACAMBARO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 83, Nombre ='TANCITARO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 84, Nombre ='TANGAMANDAPIO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 85, Nombre ='TANGANCICUARO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 86, Nombre ='TANHUATO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 87, Nombre ='TARETAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 88, Nombre ='TARIMBARO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 89, Nombre ='TEPALCATEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 90, Nombre ='TINGAMBATO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 91, Nombre ='TINGUINDIN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 92, Nombre ='TIQUICHEO DE NICOLAS ROMERO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 93, Nombre ='TLALPUJAHUA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 94, Nombre ='TLAZAZALCA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 95, Nombre ='TOCUMBO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 96, Nombre ='TUMBISCATIO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 97, Nombre ='TURICATO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 98, Nombre ='TUXPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 99, Nombre ='TUZANTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 100, Nombre ='TZINTZUNTZAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 101, Nombre ='TZITZIO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 102, Nombre ='URUAPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 103, Nombre ='VENUSTIANO CARRANZA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 104, Nombre ='VILLAMAR', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 105, Nombre ='VISTA HERMOSA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 106, Nombre ='YURECUARO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 107, Nombre ='ZACAPU', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 108, Nombre ='ZAMORA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 109, Nombre ='ZINAPARO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 110, Nombre ='ZINAPECUARO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 111, Nombre ='ZIRACUARETIRO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 112, Nombre ='ZITACUARO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 16, IdMunicipio = 113, Nombre ='JOSE SIXTO VERDUZCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 17, IdMunicipio = 1, Nombre ='AMACUZAC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 17, IdMunicipio = 2, Nombre ='ATLATLAHUCAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 17, IdMunicipio = 3, Nombre ='AXOCHIAPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 17, IdMunicipio = 4, Nombre ='AYALA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 17, IdMunicipio = 5, Nombre ='COATLAN DEL RIO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 17, IdMunicipio = 6, Nombre ='CUAUTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 17, IdMunicipio = 7, Nombre ='CUERNAVACA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 17, IdMunicipio = 8, Nombre ='EMILIANO ZAPATA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 17, IdMunicipio = 9, Nombre ='HUITZILAC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 17, IdMunicipio = 10, Nombre ='JANTETELCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 17, IdMunicipio = 11, Nombre ='JIUTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 17, IdMunicipio = 12, Nombre ='JOJUTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 17, IdMunicipio = 13, Nombre ='JONACATEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 17, IdMunicipio = 14, Nombre ='MAZATEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 17, IdMunicipio = 15, Nombre ='MIACATLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 17, IdMunicipio = 16, Nombre ='OCUITUCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 17, IdMunicipio = 17, Nombre ='PUENTE DE IXTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 17, IdMunicipio = 18, Nombre ='TEMIXCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 17, IdMunicipio = 19, Nombre ='TEPALCINGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 17, IdMunicipio = 20, Nombre ='TEPOZTLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 17, IdMunicipio = 21, Nombre ='TETECALA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 17, IdMunicipio = 22, Nombre ='TETELA DEL VOLCAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 17, IdMunicipio = 23, Nombre ='TLALNEPANTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 17, IdMunicipio = 24, Nombre ='TLALTIZAPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 17, IdMunicipio = 25, Nombre ='TLAQUILTENANGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 17, IdMunicipio = 26, Nombre ='TLAYACAPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 17, IdMunicipio = 27, Nombre ='TOTOLAPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 17, IdMunicipio = 28, Nombre ='XOCHITEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 17, IdMunicipio = 29, Nombre ='YAUTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 17, IdMunicipio = 30, Nombre ='YECAPIXTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 17, IdMunicipio = 31, Nombre ='ZACATEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 17, IdMunicipio = 32, Nombre ='ZACUALPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 17, IdMunicipio = 33, Nombre ='TEMOAC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 18, IdMunicipio = 1, Nombre ='ACAPONETA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 18, IdMunicipio = 2, Nombre ='AHUACATLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 18, IdMunicipio = 3, Nombre ='AMATLAN DE CA¥AS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 18, IdMunicipio = 4, Nombre ='COMPOSTELA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 18, IdMunicipio = 5, Nombre ='HUAJICORI', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 18, IdMunicipio = 6, Nombre ='IXTLAN DEL RIO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 18, IdMunicipio = 7, Nombre ='JALA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 18, IdMunicipio = 8, Nombre ='XALISCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 18, IdMunicipio = 9, Nombre ='EL NAYAR', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 18, IdMunicipio = 10, Nombre ='ROSAMORADA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 18, IdMunicipio = 11, Nombre ='RUIZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 18, IdMunicipio = 12, Nombre ='SAN BLAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 18, IdMunicipio = 13, Nombre ='SAN PEDRO LAGUNILLAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 18, IdMunicipio = 14, Nombre ='SANTA MARIA DEL ORO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 18, IdMunicipio = 15, Nombre ='SANTIAGO IXCUINTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 18, IdMunicipio = 16, Nombre ='TECUALA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 18, IdMunicipio = 17, Nombre ='TEPIC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 18, IdMunicipio = 18, Nombre ='TUXPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 18, IdMunicipio = 19, Nombre ='LA YESCA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 18, IdMunicipio = 20, Nombre ='BAHIA DE BANDERAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 19, IdMunicipio = 1, Nombre ='ABASOLO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 19, IdMunicipio = 2, Nombre ='AGUALEGUAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 19, IdMunicipio = 3, Nombre ='LOS ALDAMAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 19, IdMunicipio = 4, Nombre ='ALLENDE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 19, IdMunicipio = 5, Nombre ='ANAHUAC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 19, IdMunicipio = 6, Nombre ='APODACA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 19, IdMunicipio = 7, Nombre ='ARAMBERRI', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 19, IdMunicipio = 8, Nombre ='BUSTAMANTE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 19, IdMunicipio = 9, Nombre ='CADEREYTA JIMENEZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 19, IdMunicipio = 10, Nombre ='CARMEN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 19, IdMunicipio = 11, Nombre ='CERRALVO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 19, IdMunicipio = 12, Nombre ='CIENEGA DE FLORES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 19, IdMunicipio = 13, Nombre ='CHINA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 19, IdMunicipio = 14, Nombre ='DOCTOR ARROYO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 19, IdMunicipio = 15, Nombre ='DOCTOR COSS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 19, IdMunicipio = 16, Nombre ='DOCTOR GONZALEZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 19, IdMunicipio = 17, Nombre ='GALEANA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 19, IdMunicipio = 18, Nombre ='GARCIA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 19, IdMunicipio = 19, Nombre ='SAN PEDRO GARZA GARCIA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 19, IdMunicipio = 20, Nombre ='GENERAL BRAVO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 19, IdMunicipio = 21, Nombre ='GENERAL ESCOBEDO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 19, IdMunicipio = 22, Nombre ='GENERAL TERAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 19, IdMunicipio = 23, Nombre ='GENERAL TREVI¥O', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 19, IdMunicipio = 24, Nombre ='GENERAL ZARAGOZA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 19, IdMunicipio = 25, Nombre ='GENERAL ZUAZUA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 19, IdMunicipio = 26, Nombre ='GUADALUPE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 19, IdMunicipio = 27, Nombre ='LOS HERRERAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 19, IdMunicipio = 28, Nombre ='HIGUERAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 19, IdMunicipio = 29, Nombre ='HUALAHUISES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 19, IdMunicipio = 30, Nombre ='ITURBIDE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 19, IdMunicipio = 31, Nombre ='JUAREZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 19, IdMunicipio = 32, Nombre ='LAMPAZOS DE NARANJO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 19, IdMunicipio = 33, Nombre ='LINARES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 19, IdMunicipio = 34, Nombre ='MARIN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 19, IdMunicipio = 35, Nombre ='MELCHOR OCAMPO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 19, IdMunicipio = 36, Nombre ='MIER Y NORIEGA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 19, IdMunicipio = 37, Nombre ='MINA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 19, IdMunicipio = 38, Nombre ='MONTEMORELOS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 19, IdMunicipio = 39, Nombre ='MONTERREY', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 19, IdMunicipio = 40, Nombre ='PARAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 19, IdMunicipio = 41, Nombre ='PESQUERIA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 19, IdMunicipio = 42, Nombre ='LOS RAMONES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 19, IdMunicipio = 43, Nombre ='RAYONES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 19, IdMunicipio = 44, Nombre ='SABINAS HIDALGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 19, IdMunicipio = 45, Nombre ='SALINAS VICTORIA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 19, IdMunicipio = 46, Nombre ='SAN NICOLAS DE LOS GARZA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 19, IdMunicipio = 47, Nombre ='HIDALGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 19, IdMunicipio = 48, Nombre ='SANTA CATARINA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 19, IdMunicipio = 49, Nombre ='SANTIAGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 19, IdMunicipio = 50, Nombre ='VALLECILLO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 19, IdMunicipio = 51, Nombre ='VILLALDAMA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 19, IdMunicipio = 52, Nombre ='COLOMBIA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 1, Nombre ='ABEJONES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 2, Nombre ='ACATLAN DE PEREZ FIGUEROA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 3, Nombre ='ASUNCION CACALOTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 4, Nombre ='ASUNCION CUYOTEPEJI', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 5, Nombre ='ASUNCION IXTALTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 6, Nombre ='ASUNCION NOCHIXTLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 7, Nombre ='ASUNCION OCOTLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 8, Nombre ='ASUNCION TLACOLULITA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 9, Nombre ='AYOTZINTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 10, Nombre ='EL BARRIO DE LA SOLEDAD', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 11, Nombre ='CALIHUALA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 12, Nombre ='CANDELARIA LOXICHA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 13, Nombre ='CIENEGA DE ZIMATLAN (LA CIENE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 14, Nombre ='CIUDAD IXTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 15, Nombre ='COATECAS ALTAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 16, Nombre ='COICOYAN DE LAS FLORES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 17, Nombre ='LA COMPA¥IA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 18, Nombre ='CONCEPCION BUENAVISTA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 19, Nombre ='CONCEPCION PAPALO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 20, Nombre ='CONSTANCIA DEL ROSARIO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 21, Nombre ='COSOLAPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 22, Nombre ='COSOLTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 23, Nombre ='CUILAPAM DE GUERRERO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 24, Nombre ='CUYAMECALCO VILLA DE ZARAGOZA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 25, Nombre ='CHAHUITES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 26, Nombre ='CHALCATONGO DE HIDALGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 27, Nombre ='SAN JUAN CHIQUIHUITLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 28, Nombre ='EJUTLA DE CRESPO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 29, Nombre ='ELOXOCHITLAN DE FLORES MAGON', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 30, Nombre ='EL ESPINAL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 31, Nombre ='TAMAZULAPAM DEL ESPIRITU SANTO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 32, Nombre ='FRESNILLO DE TRUJANO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 33, Nombre ='GUADALUPE ETLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 34, Nombre ='GUADALUPE RAMIREZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 35, Nombre ='GUELATAO DE JUAREZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 36, Nombre ='GUEVEA DE HUMBOLDT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 37, Nombre ='MESONES HIDALGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 38, Nombre ='VILLA HIDALGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 39, Nombre ='HUAJUAPAN DE LEON', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 40, Nombre ='HUAUTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 41, Nombre ='HUAUTLA DE JIMENEZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 42, Nombre ='IXTLAN DE JUAREZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 43, Nombre ='JUCHITAN DE ZARAGOZA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 44, Nombre ='LOMA BONITA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 45, Nombre ='MAGDALENA APASCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 46, Nombre ='MAGDALENA JALTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 47, Nombre ='SANTA MAGDALENA JICOTLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 48, Nombre ='MAGDALENA MIXTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 49, Nombre ='MAGDALENA OCOTLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 50, Nombre ='MAGDALENA PE¥ASCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 51, Nombre ='MAGDALENA TEITIPAC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 52, Nombre ='MAGDALENA TEQUISISTLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 53, Nombre ='MAGDALENA TLACOTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 54, Nombre ='MAGDALENA ZAHUATLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 55, Nombre ='MARISCALA DE JUAREZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 56, Nombre ='MARTIRES DE TACUBAYA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 57, Nombre ='MATIAS ROMERO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 58, Nombre ='MAZATLAN VILLA DE FLORES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 59, Nombre ='MIAHUATLAN DE PORFIRIO DIAZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 60, Nombre ='MIXISTLAN DE LA REFORMA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 61, Nombre ='MONJAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 62, Nombre ='NATIVIDAD', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 63, Nombre ='NAZARENO ETLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 64, Nombre ='NEJAPA DE MADERO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 65, Nombre ='IXPANTEPEC NIEVES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 66, Nombre ='SANTIAGO NILTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 67, Nombre ='OAXACA DE JUAREZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 68, Nombre ='OCOTLAN DE MORELOS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 69, Nombre ='LA PE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 70, Nombre ='PINOTEPA DE DON LUIS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 71, Nombre ='PLUMA HIDALGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 72, Nombre ='SAN JOSE DEL PROGRESO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 73, Nombre ='PUTLA VILLA DE GUERRERO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 74, Nombre ='SANTA CATARINA QUIOQUITANI', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 75, Nombre ='REFORMA DE PINEDA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 76, Nombre ='LA REFORMA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 77, Nombre ='REYES ETLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 78, Nombre ='ROJAS DE CUAUHTEMOC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 79, Nombre ='SALINA CRUZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 80, Nombre ='SAN AGUSTIN AMATENGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 81, Nombre ='SAN AGUSTIN ATENANGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 82, Nombre ='SAN AGUSTIN CHAYUCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 83, Nombre ='SAN AGUSTIN DE LAS JUNTAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 84, Nombre ='SAN AGUSTIN ETLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 85, Nombre ='SAN AGUSTIN LOXICHA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 86, Nombre ='SAN AGUSTIN TLACOTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 87, Nombre ='SAN AGUSTIN YATARENI', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 88, Nombre ='SAN ANDRES CABECERA NUEVA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 89, Nombre ='SAN ANDRES DINICUITI', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 90, Nombre ='SAN ANDRES HUAXPALTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 91, Nombre ='SAN ANDRES HUAYAPAM', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 92, Nombre ='SAN ANDRES IXTLAHUACA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 93, Nombre ='SAN ANDRES LAGUNAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 94, Nombre ='SAN ANDRES NUXI¥O', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 95, Nombre ='SAN ANDRES PAXTLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 96, Nombre ='SAN ANDRES SINAXTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 97, Nombre ='SAN ANDRES SOLAGA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 98, Nombre ='SAN ANDRES TEOTILALPAM', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 99, Nombre ='SAN ANDRES TEPETLAPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 100, Nombre ='SAN ANDRES YAA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 101, Nombre ='SAN ANDRES ZABACHE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 102, Nombre ='SAN ANDRES ZAUTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 103, Nombre ='SAN ANTONINO CASTILLO VELASCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 104, Nombre ='SAN ANTONINO EL ALTO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 105, Nombre ='SAN ANTONINO MONTE VERDE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 106, Nombre ='SAN ANTONIO ACUTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 107, Nombre ='SAN ANTONIO DE LA CAL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 108, Nombre ='SAN ANTONIO HUITEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 109, Nombre ='SAN ANTONIO NANAHUATIPAM', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 110, Nombre ='SAN ANTONIO SINICAHUA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 111, Nombre ='SAN ANTONIO TEPETLAPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 112, Nombre ='SAN BALTAZAR CHICHICAPAM', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 113, Nombre ='SAN BALTAZAR LOXICHA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 114, Nombre ='SAN BALTAZAR YATZACHI EL BAJO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 115, Nombre ='SAN BARTOLO COYOTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 116, Nombre ='SAN BARTOLOME AYAUTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 117, Nombre ='SAN BARTOLOME LOXICHA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 118, Nombre ='SAN BARTOLOME QUIALANA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 119, Nombre ='SAN BARTOLOME YUCUA¥E', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 120, Nombre ='SAN BARTOLOME ZOOGOCHO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 121, Nombre ='SAN BARTOLO SOYALTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 122, Nombre ='SAN BARTOLO YAUTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 123, Nombre ='SAN BERNARDO MIXTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 124, Nombre ='SAN BLAS ATEMPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 125, Nombre ='SAN CARLOS YAUTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 126, Nombre ='SAN CRISTOBAL AMATLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 127, Nombre ='SAN CRISTOBAL AMOLTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 128, Nombre ='SAN CRISTOBAL LACHIRIOAG', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 129, Nombre ='SAN CRISTOBAL SUCHIXTLAHUACA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 130, Nombre ='SAN DIONISIO DEL MAR', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 131, Nombre ='SAN DIONISIO OCOTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 132, Nombre ='SAN DIONISIO OCOTLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 133, Nombre ='SAN ESTEBAN ATATLAHUCA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 134, Nombre ='SAN FELIPE JALAPA DE DIAZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 135, Nombre ='SAN FELIPE TEJALAPAM', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 136, Nombre ='SAN FELIPE USILA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 137, Nombre ='SAN FRANCISCO CAHUACUA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 138, Nombre ='SAN FRANCISCO CAJONOS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 139, Nombre ='SAN FRANCISCO CHAPULAPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 140, Nombre ='SAN FRANCISCO CHINDUA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 141, Nombre ='SAN FRANCISCO DEL MAR', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 142, Nombre ='SAN FRANCISCO HUEHUETLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 143, Nombre ='SAN FRANCISCO IXHUATAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 144, Nombre ='SAN FRANCISCO JALTEPETONGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 145, Nombre ='SAN FRANCISCO LACHIGOLO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 146, Nombre ='SAN FRANCISCO LOGUECHE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 147, Nombre ='SAN FRANCISCO NUXA¥O', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 148, Nombre ='SAN FRANCISCO OZOLOTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 149, Nombre ='SAN FRANCISCO SOLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 150, Nombre ='SAN FRANCISCO TELIXTLAHUACA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 151, Nombre ='SAN FRANCISCO TEOPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 152, Nombre ='SAN FRANCISCO TLAPANCINGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 153, Nombre ='SAN GABRIEL MIXTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 154, Nombre ='SAN ILDEFONSO AMATLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 155, Nombre ='SAN ILDEFONSO SOLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 156, Nombre ='SAN ILDEFONSO VILLA ALTA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 157, Nombre ='SAN JACINTO AMILPAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 158, Nombre ='SAN JACINTO TLACOTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 159, Nombre ='SAN JERONIMO COATLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 160, Nombre ='SAN JERONIMO SILACAYOAPILLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 161, Nombre ='SAN JERONIMO SOSOLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 162, Nombre ='SAN JERONIMO TAVICHE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 163, Nombre ='SAN JERONIMO TECOATL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 164, Nombre ='SAN JORGE NUCHITA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 165, Nombre ='SAN JOSE AYUQUILA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 166, Nombre ='SAN JOSE CHILTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 167, Nombre ='SAN JOSE DEL PE¥ASCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 168, Nombre ='SAN JOSE ESTANCIA GRANDE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 169, Nombre ='SAN JOSE INDEPENDENCIA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 170, Nombre ='SAN JOSE LACHIGUIRI', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 171, Nombre ='SAN JOSE TENANGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 172, Nombre ='SAN JUAN ACHIUTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 173, Nombre ='SAN JUAN ATEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 174, Nombre ='ANIMAS TRUJANO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 175, Nombre ='SAN JUAN BAUTISTA ATATLAHUCA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 176, Nombre ='SAN JUAN BAUTISTA COIXTLAHUACA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 177, Nombre ='SAN JUAN BAUTISTA CUICATLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 178, Nombre ='SAN JUAN BAUTISTA GUELACHE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 179, Nombre ='SAN JUAN BAUTISTA JAYACATLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 180, Nombre ='SAN JUAN BAUTISTA LO DE SOTO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 181, Nombre ='SAN JUAN BAUTISTA SUCHITEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 182, Nombre ='SAN JUAN BAUTISTA TLACOATZINTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 183, Nombre ='SAN JUAN BAUTISTA TLACHICHILCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 184, Nombre ='SAN JUAN BAUTISTA TUXTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 185, Nombre ='SAN JUAN CACAHUATEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 186, Nombre ='SAN JUAN CIENEGUILLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 187, Nombre ='SAN JUAN COATZOSPAM', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 188, Nombre ='SAN JUAN COLORADO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 189, Nombre ='SAN JUAN COMALTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 190, Nombre ='SAN JUAN COTZOCON', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 191, Nombre ='SAN JUAN CHICOMEZUCHIL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 192, Nombre ='SAN JUAN CHILATECA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 193, Nombre ='SAN JUAN DEL ESTADO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 194, Nombre ='SAN JUAN DEL RIO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 195, Nombre ='SAN JUAN DIUXI', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 196, Nombre ='SAN JUAN EVANGELISTA ANALCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 197, Nombre ='SAN JUAN GUELAVIA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 198, Nombre ='SAN JUAN GUICHICOVI', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 199, Nombre ='SAN JUAN IHUALTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 200, Nombre ='SAN JUAN JUQUILA MIXES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 201, Nombre ='SAN JUAN JUQUILA VIJANOS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 202, Nombre ='SAN JUAN LACHAO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 203, Nombre ='SAN JUAN LACHIGALLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 204, Nombre ='SAN JUAN LAJARCIA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 205, Nombre ='SAN JUAN LALANA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 206, Nombre ='SAN JUAN DE LOS CUES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 207, Nombre ='SAN JUAN MAZATLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 208, Nombre ='SAN JUAN MIXTEPEC JUXTLAHUACA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 209, Nombre ='SAN JUAN MIXTEPEC MIAHUATLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 210, Nombre ='SAN JUAN ¥UMI', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 211, Nombre ='SAN JUAN OZOLOTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 212, Nombre ='SAN JUAN PETLAPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 213, Nombre ='SAN JUAN QUIAHIJE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 214, Nombre ='SAN JUAN QUIOTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 215, Nombre ='SAN JUAN SAYULTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 216, Nombre ='SAN JUAN TABAA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 217, Nombre ='SAN JUAN TAMAZOLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 218, Nombre ='SAN JUAN TEITA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 219, Nombre ='SAN JUAN TEITIPAC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 220, Nombre ='SAN JUAN TEPEUXILA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 221, Nombre ='SAN JUAN TEPOSCOLULA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 222, Nombre ='SAN JUAN YAE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 223, Nombre ='SAN JUAN YATZONA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 224, Nombre ='SAN JUAN YUCUITA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 225, Nombre ='SAN LORENZO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 226, Nombre ='SAN LORENZO ALBARRADAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 227, Nombre ='SAN LORENZO CACAOTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 228, Nombre ='SAN LORENZO CUAUNECUILTITLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 229, Nombre ='SAN LORENZO TEXMELUCAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 230, Nombre ='SAN LORENZO VICTORIA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 231, Nombre ='SAN LUCAS CAMOTLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 232, Nombre ='SAN LUCAS OJITLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 233, Nombre ='SAN LUCAS QUIAVINI', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 234, Nombre ='SAN LUCAS ZOQUIAPAM', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 235, Nombre ='SAN LUIS AMATLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 236, Nombre ='SAN MARCIAL OZOLOTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 237, Nombre ='SAN MARCOS ARTEAGA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 238, Nombre ='SAN MARTIN DE LOS CANSECOS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 239, Nombre ='SAN MARTIN HUAMELULPAM', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 240, Nombre ='SAN MARTIN ITUNYOSO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 241, Nombre ='SAN MARTIN LACHILA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 242, Nombre ='SAN MARTIN PERAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 243, Nombre ='SAN MARTIN TILCAJETE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 244, Nombre ='SAN MARTIN TOXPALAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 245, Nombre ='SAN MARTIN ZACATEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 246, Nombre ='SAN MATEO CAJONOS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 247, Nombre ='CAPULALPAM DE MENDEZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 248, Nombre ='SAN MATEO DEL MAR', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 249, Nombre ='SAN MATEO YOLOXOCHITLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 250, Nombre ='SAN MATEO ETLATONGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 251, Nombre ='SAN MATEO NEJAPAM', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 252, Nombre ='SAN MATEO PE¥ASCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 253, Nombre ='SAN MATEO PI¥AS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 254, Nombre ='SAN MATEO RIO HONDO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 255, Nombre ='SAN MATEO SINDIHUI', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 256, Nombre ='SAN MATEO TLAPILTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 257, Nombre ='SAN MELCHOR BETAZA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 258, Nombre ='SAN MIGUEL ACHIUTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 259, Nombre ='SAN MIGUEL AHUEHUETITLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 260, Nombre ='SAN MIGUEL ALOAPAM', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 261, Nombre ='SAN MIGUEL AMATITLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 262, Nombre ='SAN MIGUEL AMATLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 263, Nombre ='SAN MIGUEL COATLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 264, Nombre ='SAN MIGUEL CHICAHUA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 265, Nombre ='SAN MIGUEL CHIMALAPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 266, Nombre ='SAN MIGUEL DEL PUERTO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 267, Nombre ='SAN MIGUEL DEL RIO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 268, Nombre ='SAN MIGUEL EJUTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 269, Nombre ='SAN MIGUEL EL GRANDE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 270, Nombre ='SAN MIGUEL HUAUTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 271, Nombre ='SAN MIGUEL MIXTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 272, Nombre ='SAN MIGUEL PANIXTLAHUACA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 273, Nombre ='SAN MIGUEL PERAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 274, Nombre ='SAN MIGUEL PIEDRAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 275, Nombre ='SAN MIGUEL QUETZALTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 276, Nombre ='SAN MIGUEL SANTA FLOR', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 277, Nombre ='VILLA SOLA DE VEGA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 278, Nombre ='NUEVO SOYALTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 279, Nombre ='SAN MIGUEL SUCHIXTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 280, Nombre ='SAN MIGUEL TALEA DE CASTRO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 281, Nombre ='SAN MIGUEL TECOMATLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 282, Nombre ='SAN MIGUEL TENANGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 283, Nombre ='SAN MIGUEL TEQUIXTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 284, Nombre ='SAN MIGUEL TILQUIAPAM', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 285, Nombre ='SAN MIGUEL TLACAMAMA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 286, Nombre ='SAN MIGUEL TLACOTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 287, Nombre ='SAN MIGUEL TULANCINGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 288, Nombre ='SAN MIGUEL YOTAO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 289, Nombre ='SAN NICOLAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 290, Nombre ='SAN NICOLAS HIDALGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 291, Nombre ='SAN PABLO COATLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 292, Nombre ='SAN PABLO CUATRO VENADOS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 293, Nombre ='SAN PABLO ETLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 294, Nombre ='SAN PABLO HUITZO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 295, Nombre ='SAN PABLO HUIXTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 296, Nombre ='SAN PABLO MACUILTIANGUIS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 297, Nombre ='SAN PABLO TIJALTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 298, Nombre ='SAN PABLO VILLA DE MITLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 299, Nombre ='SAN PABLO YAGANIZA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 300, Nombre ='SAN PEDRO AMUZGOS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 301, Nombre ='SAN PEDRO APOSTOL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 302, Nombre ='SAN PEDRO ATOYAC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 303, Nombre ='SAN PEDRO CAJONOS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 304, Nombre ='SAN PEDRO CANTAROS COXCALTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 305, Nombre ='SAN PEDRO COMITANCILLO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 306, Nombre ='SAN PEDRO EL ALTO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 307, Nombre ='SAN PEDRO HUAMELULA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 308, Nombre ='SAN PEDRO HUILOTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 309, Nombre ='SAN PEDRO IXCATLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 310, Nombre ='SAN PEDRO IXTLAHUACA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 311, Nombre ='SAN PEDRO JALTEPETONGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 312, Nombre ='SAN PEDRO JICAYAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 313, Nombre ='SAN PEDRO JOCOTIPAC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 314, Nombre ='SAN PEDRO JUCHATENGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 315, Nombre ='SAN PEDRO MARTIR', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 316, Nombre ='SAN PEDRO MARTIR QUIECHAPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 317, Nombre ='SAN PEDRO MARTIR YUCUXACO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 318, Nombre ='SAN PEDRO MIXTEPEC-JUQUILA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 319, Nombre ='SAN PEDRO MIXTEPEC-MIAHUATLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 320, Nombre ='SAN PEDRO MOLINOS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 321, Nombre ='SAN PEDRO NOPALA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 322, Nombre ='SAN PEDRO OCOPETATILLO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 323, Nombre ='SAN PEDRO OCOTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 324, Nombre ='SAN PEDRO POCHUTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 325, Nombre ='SAN PEDRO QUIATONI', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 326, Nombre ='SAN PEDRO SOCHIAPAM', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 327, Nombre ='SAN PEDRO TAPANATEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 328, Nombre ='SAN PEDRO TAVICHE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 329, Nombre ='SAN PEDRO TEOZACOALCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 330, Nombre ='SAN PEDRO TEUTILA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 331, Nombre ='SAN PEDRO TIDAA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 332, Nombre ='SAN PEDRO TOPILTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 333, Nombre ='SAN PEDRO TOTOLAPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 334, Nombre ='SAN PEDRO TUTUTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 335, Nombre ='SAN PEDRO YANERI', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 336, Nombre ='SAN PEDRO YOLOX', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 337, Nombre ='SAN PEDRO Y SAN PABLO AYUTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 338, Nombre ='VILLA DE ETLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 339, Nombre ='SAN PEDRO Y SAN PABLO TEPOSCOLULA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 340, Nombre ='SAN PEDRO Y SAN PABLO TEQUIXT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 341, Nombre ='SAN PEDRO YUCUNAMA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 342, Nombre ='SAN RAYMUNDO JALPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 343, Nombre ='SAN SEBASTIAN ABASOLO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 344, Nombre ='SAN SEBASTIAN COATLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 345, Nombre ='SAN SEBASTIAN IXCAPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 346, Nombre ='SAN SEBASTIAN NICANANDUTA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 347, Nombre ='SAN SEBASTIAN RIO HONDO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 348, Nombre ='SAN SEBASTIAN TECOMAXTLAHUACA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 349, Nombre ='SAN SEBASTIAN TEITIPAC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 350, Nombre ='SAN SEBASTIAN TUTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 351, Nombre ='SAN SIMON ALMOLONGAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 352, Nombre ='SAN SIMON ZAHUATLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 353, Nombre ='SANTA ANA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 354, Nombre ='SANTA ANA ATEIXTLAHUACA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 355, Nombre ='SANTA ANA CUAUHTEMOC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 356, Nombre ='SANTA ANA DEL VALLE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 357, Nombre ='SANTA ANA TAVELA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 358, Nombre ='SANTA ANA TLAPACOYAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 359, Nombre ='SANTA ANA YARENI', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 360, Nombre ='SANTA ANA ZEGACHE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 361, Nombre ='SANTA CATALINA QUIERI', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 362, Nombre ='SANTA CATARINA CUIXTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 363, Nombre ='SANTA CATARINA IXTEPEJI', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 364, Nombre ='SANTA CATARINA JUQUILA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 365, Nombre ='SANTA CATARINA LACHATAO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 366, Nombre ='SANTA CATARINA LOXICHA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 367, Nombre ='SANTA CATARINA MECHOACAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 368, Nombre ='SANTA CATARINA MINAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 369, Nombre ='SANTA CATARINA QUIANE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 370, Nombre ='SANTA CATARINA TAYATA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 371, Nombre ='SANTA CATARINA TICUA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 372, Nombre ='SANTA CATARINA YOSONOTU', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 373, Nombre ='SANTA CATARINA ZAPOQUILA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 374, Nombre ='SANTA CRUZ ACATEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 375, Nombre ='SANTA CRUZ AMILPAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 376, Nombre ='SANTA CRUZ DE BRAVO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 377, Nombre ='SANTA CRUZ ITUNDUJIA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 378, Nombre ='SANTA CRUZ MIXTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 379, Nombre ='SANTA CRUZ NUNDACO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 380, Nombre ='SANTA CRUZ PAPALUTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 381, Nombre ='SANTA CRUZ TACACHE DE MINA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 382, Nombre ='SANTA CRUZ TACAHUA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 383, Nombre ='SANTA CRUZ TAYATA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 384, Nombre ='SANTA CRUZ XITLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 385, Nombre ='SANTA CRUZ XOXOCOTLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 386, Nombre ='SANTA CRUZ ZENZONTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 387, Nombre ='SANTA GERTRUDIS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 388, Nombre ='SANTA INES DEL MONTE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 389, Nombre ='SANTA INES YATZECHE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 390, Nombre ='SANTA LUCIA DEL CAMINO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 391, Nombre ='SANTA LUCIA MIAHUATLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 392, Nombre ='SANTA LUCIA MONTEVERDE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 393, Nombre ='SANTA LUCIA OCOTLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 394, Nombre ='SANTA MARIA ALOTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 395, Nombre ='SANTA MARIA APAZCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 396, Nombre ='SANTA MARIA LA ASUNCION', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 397, Nombre ='HEROICA CIUDAD DE TLAXIACO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 398, Nombre ='AYOQUEZCO DE ALDAMA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 399, Nombre ='SANTA MARIA ATZOMPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 400, Nombre ='SANTA MARIA CAMOTLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 401, Nombre ='SANTA MARIA COLOTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 402, Nombre ='SANTA MARIA CORTIJO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 403, Nombre ='SANTA MARIA COYOTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 404, Nombre ='SANTA MARIA CHACHOAPAM', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 405, Nombre ='SANTA MARIA CHILAPA DE DIAZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 406, Nombre ='SANTA MARIA CHILCHOTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 407, Nombre ='SANTA MARIA CHIMALAPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 408, Nombre ='SANTA MARIA DEL ROSARIO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 409, Nombre ='SANTA MARIA DEL TULE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 410, Nombre ='SANTA MARIA ECATEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 411, Nombre ='SANTA MARIA GUELACE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 412, Nombre ='SANTA MARIA GUIENAGATI', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 413, Nombre ='SANTA MARIA HUATULCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 414, Nombre ='SANTA MARIA HUAZOLOTITLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 415, Nombre ='SANTA MARIA IPALAPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 416, Nombre ='SANTA MARIA IXCATLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 417, Nombre ='SANTA MARIA JACATEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 418, Nombre ='SANTA MARIA JALAPA DEL MARQUES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 419, Nombre ='SANTA MARIA JALTIANGUIS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 420, Nombre ='SANTA MARIA LACHIXIO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 421, Nombre ='SANTA MARIA MIXTEQUILLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 422, Nombre ='SANTA MARIA NATIVITAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 423, Nombre ='SANTA MARIA NDUAYACO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 424, Nombre ='SANTA MARIA OZOLOTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 425, Nombre ='SANTA MARIA PAPALO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 426, Nombre ='SANTA MARIA PE¥OLES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 427, Nombre ='SANTA MARIA PETAPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 428, Nombre ='SANTA MARIA QUIEGOLANI', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 429, Nombre ='SANTA MARIA SOLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 430, Nombre ='SANTA MARIA TATALTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 431, Nombre ='SANTA MARIA TECOMAVACA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 432, Nombre ='SANTA MARIA TEMAXCALAPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 433, Nombre ='SANTA MARIA TEMAXCALTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 434, Nombre ='SANTA MARIA TEOPOXCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 435, Nombre ='SANTA MARIA TEPANTLALI', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 436, Nombre ='SANTA MARIA TEXCATITLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 437, Nombre ='SANTA MARIA TLAHUITOLTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 438, Nombre ='SANTA MARIA TLALIXTAC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 439, Nombre ='SANTA MARIA TONAMECA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 440, Nombre ='SANTA MARIA TOTOLAPILLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 441, Nombre ='SANTA MARIA XADANI', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 442, Nombre ='SANTA MARIA YALINA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 443, Nombre ='SANTA MARIA YAVESIA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 444, Nombre ='SANTA MARIA YOLOTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 445, Nombre ='SANTA MARIA YOSOYUA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 446, Nombre ='SANTA MARIA YUCUHITI', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 447, Nombre ='SANTA MARIA ZACATEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 448, Nombre ='SANTA MARIA ZANIZA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 449, Nombre ='SANTA MARIA ZOQUITLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 450, Nombre ='SANTIAGO AMOLTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 451, Nombre ='SANTIAGO APOALA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 452, Nombre ='SANTIAGO APOSTOL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 453, Nombre ='SANTIAGO ASTATA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 454, Nombre ='SANTIAGO ATITLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 455, Nombre ='SANTIAGO AYUQUILILLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 456, Nombre ='SANTIAGO CACALOXTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 457, Nombre ='SANTIAGO CAMOTLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 458, Nombre ='SANTIAGO COMALTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 459, Nombre ='SANTIAGO CHAZUMBA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 460, Nombre ='SANTIAGO CHOAPAM', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 461, Nombre ='SANTIAGO DEL RIO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 462, Nombre ='SANTIAGO HUAJOLOTITLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 463, Nombre ='SANTIAGO HUAUCLILLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 464, Nombre ='SANTIAGO IHUITLAN PLUMAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 465, Nombre ='SANTIAGO IXCUINTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 466, Nombre ='SANTIAGO IXTAYUTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 467, Nombre ='SANTIAGO JAMILTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 468, Nombre ='SANTIAGO JOCOTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 469, Nombre ='SANTIAGO JUXTLAHUACA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 470, Nombre ='SANTIAGO LACHIGUIRI', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 471, Nombre ='SANTIAGO LALOPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 472, Nombre ='SANTIAGO LAOLLAGA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 473, Nombre ='SANTIAGO LAXOPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 474, Nombre ='SANTIAGO LLANO GRANDE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 475, Nombre ='SANTIAGO MATATLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 476, Nombre ='SANTIAGO MILTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 477, Nombre ='SANTIAGO MINAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 478, Nombre ='SANTIAGO NACALTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 479, Nombre ='SANTIAGO NEJAPILLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 480, Nombre ='SANTIAGO NUNDICHE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 481, Nombre ='SANTIAGO NUYOO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 482, Nombre ='SANTIAGO PINOTEPA NACIONAL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 483, Nombre ='SANTIAGO SUCHILQUITONGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 484, Nombre ='SANTIAGO TAMAZOLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 485, Nombre ='SANTIAGO TAPEXTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 486, Nombre ='VILLA TEJUPAM DE LA UNION', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 487, Nombre ='SANTIAGO TENANGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 488, Nombre ='SANTIAGO TEPETLAPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 489, Nombre ='SANTIAGO TETEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 490, Nombre ='SANTIAGO TEXCALCINGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 491, Nombre ='SANTIAGO TEXTITLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 492, Nombre ='SANTIAGO TILANTONGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 493, Nombre ='SANTIAGO TILLO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 494, Nombre ='SANTIAGO TLAZOYALTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 495, Nombre ='SANTIAGO XANICA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 496, Nombre ='SANTIAGO XIACUI', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 497, Nombre ='SANTIAGO YAITEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 498, Nombre ='SANTIAGO YAVEO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 499, Nombre ='SANTIAGO YOLOMECATL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 500, Nombre ='SANTIAGO YOSONDUA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 501, Nombre ='SANTIAGO YUCUYACHI', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 502, Nombre ='SANTIAGO ZACATEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 503, Nombre ='SANTIAGO ZOOCHILA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 504, Nombre ='NUEVO ZOQUIAPAM', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 505, Nombre ='SANTO DOMINGO INGENIO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 506, Nombre ='SANTO DOMINGO ALBARRADAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 507, Nombre ='SANTO DOMINGO ARMENTA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 508, Nombre ='SANTO DOMINGO CHIHUITAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 509, Nombre ='SANTO DOMINGO DE MORELOS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 510, Nombre ='SANTO DOMINGO IXCATLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 511, Nombre ='SANTO DOMINGO NUXAA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 512, Nombre ='SANTO DOMINGO OZOLOTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 513, Nombre ='SANTO DOMINGO PETAPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 514, Nombre ='SANTO DOMINGO ROAYAGA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 515, Nombre ='SANTO DOMINGO TEHUANTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 516, Nombre ='SANTO DOMINGO TEOJOMULCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 517, Nombre ='SANTO DOMINGO TEPUXTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 518, Nombre ='SANTO DOMINGO TLATAYAPAM', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 519, Nombre ='SANTO DOMINGO TOMALTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 520, Nombre ='SANTO DOMINGO TONALA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 521, Nombre ='SANTO DOMINGO TONALTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 522, Nombre ='SANTO DOMINGO XAGACIA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 523, Nombre ='SANTO DOMINGO YANHUITLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 524, Nombre ='SANTO DOMINGO YODOHINO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 525, Nombre ='SANTO DOMINGO ZANATEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 526, Nombre ='SANTOS REYES NOPALA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 527, Nombre ='SANTOS REYES PAPALO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 528, Nombre ='SANTOS REYES TEPEJILLO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 529, Nombre ='SANTOS REYES YUCUNA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 530, Nombre ='SANTO TOMAS JALIEZA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 531, Nombre ='SANTO TOMAS MAZALTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 532, Nombre ='SANTO TOMAS OCOTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 533, Nombre ='SANTO TOMAS TAMAZULAPAM', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 534, Nombre ='SAN VICENTE COATLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 535, Nombre ='SAN VICENTE LACHIXIO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 536, Nombre ='SAN VICENTE NU¥U', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 537, Nombre ='SILACAYOAPAM', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 538, Nombre ='SITIO DE XITLAPEHUA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 539, Nombre ='SOLEDAD ETLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 540, Nombre ='VILLA DE TAMAZULAPAM DEL PROGRESO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 541, Nombre ='TANETZE DE ZARAGOZA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 542, Nombre ='TANICHE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 543, Nombre ='TATALTEPEC DE VALDES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 544, Nombre ='TEOCOCUILCO DE MARCOS PEREZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 545, Nombre ='TEOTITLAN DE FLORES MAGON', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 546, Nombre ='TEOTITLAN DEL VALLE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 547, Nombre ='TEOTONGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 548, Nombre ='TEPELMEME VILLA DE MORELOS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 549, Nombre ='TEZOATLAN DE SEGURA Y LUNA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 550, Nombre ='SAN JERONIMO TLACOCHAHUAYA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 551, Nombre ='TLACOLULA DE MATAMOROS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 552, Nombre ='TLACOTEPEC PLUMAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 553, Nombre ='TLALIXTAC DE CABRERA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 554, Nombre ='TOTONTEPEC VILLA DE MORELOS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 555, Nombre ='TRINIDAD ZAACHILA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 556, Nombre ='LA TRINIDAD VISTA HERMOSA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 557, Nombre ='UNION HIDALGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 558, Nombre ='VALERIO TRUJANO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 559, Nombre ='SAN JUAN BAUTISTA VALLE NACIONAL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 560, Nombre ='VILLA DIAZ ORDAZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 561, Nombre ='YAXE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 562, Nombre ='MAGDALENA YODOCONO DE PORFIRIO DIAZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 563, Nombre ='YOGANA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 564, Nombre ='YUTANDUCHI DE GUERRERO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 565, Nombre ='VILLA DE ZAACHILA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 566, Nombre ='ZAPOTITLAN DEL RIO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 567, Nombre ='ZAPOTITLAN LAGUNAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 568, Nombre ='ZAPOTITLAN PALMAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 569, Nombre ='SANTA INES DE ZARAGOZA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 20, IdMunicipio = 570, Nombre ='ZIMATLAN DE ALVAREZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 1, Nombre ='ACAJETE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 2, Nombre ='ACATENO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 3, Nombre ='ACATLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 4, Nombre ='ACATZINGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 5, Nombre ='ACTEOPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 6, Nombre ='AHUACATLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 7, Nombre ='AHUATLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 8, Nombre ='AHUAZOTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 9, Nombre ='AHUEHUETITLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 10, Nombre ='AJALPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 11, Nombre ='ALBINO ZERTUCHE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 12, Nombre ='ALJOJUCA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 13, Nombre ='ALTEPEXI', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 14, Nombre ='AMIXTLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 15, Nombre ='AMOZOC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 16, Nombre ='AQUIXTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 17, Nombre ='ATEMPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 18, Nombre ='ATEXCAL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 19, Nombre ='ATLIXCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 20, Nombre ='ATOYATEMPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 21, Nombre ='ATZALA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 22, Nombre ='ATZITZIHUACAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 23, Nombre ='ATZITZINTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 24, Nombre ='AXUTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 25, Nombre ='AYOTOXCO DE GUERRERO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 26, Nombre ='CALPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 27, Nombre ='CALTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 28, Nombre ='CAMOCUAUTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 29, Nombre ='CAXHUACAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 30, Nombre ='COATEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 31, Nombre ='COATZINGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 32, Nombre ='COHETZALA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 33, Nombre ='COHUECAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 34, Nombre ='CORONANGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 35, Nombre ='COXCATLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 36, Nombre ='COYOMEAPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 37, Nombre ='COYOTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 38, Nombre ='CUAPIAXTLA DE MADERO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 39, Nombre ='CUAUTEMPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 40, Nombre ='CUAUTINCHAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 41, Nombre ='CUAUTLANCINGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 42, Nombre ='CUAYUCA DE ANDRADE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 43, Nombre ='CUETZALAN DEL PROGRESO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 44, Nombre ='CUYOACO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 45, Nombre ='CHALCHICOMULA DE SESMA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 46, Nombre ='CHAPULCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 47, Nombre ='CHIAUTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 48, Nombre ='CHIAUTZINGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 49, Nombre ='CHICONCUAUTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 50, Nombre ='CHICHIQUILA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 51, Nombre ='CHIETLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 52, Nombre ='CHIGMECATITLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 53, Nombre ='CHIGNAHUAPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 54, Nombre ='CHIGNAUTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 55, Nombre ='CHILA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 56, Nombre ='CHILA DE LA SAL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 57, Nombre ='CHILA HONEY', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 58, Nombre ='CHILCHOTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 59, Nombre ='CHINANTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 60, Nombre ='DOMINGO ARENAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 61, Nombre ='ELOXOCHITLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 62, Nombre ='EPATLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 63, Nombre ='ESPERANZA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 64, Nombre ='FRANCISCO Z MENA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 65, Nombre ='GENERAL FELIPE ANGELES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 66, Nombre ='GUADALUPE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 67, Nombre ='GUADALUPE VICTORIA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 68, Nombre ='HERMENEGILDO GALEANA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 69, Nombre ='HUAQUECHULA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 70, Nombre ='HUATLATLAUCA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 71, Nombre ='HUAUCHINANGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 72, Nombre ='HUEHUETLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 73, Nombre ='HUEHUETLAN EL CHICO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 74, Nombre ='HUEJOTZINGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 75, Nombre ='HUEYAPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 76, Nombre ='HUEYTAMALCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 77, Nombre ='HUEYTLALPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 78, Nombre ='HUITZILAN DE SERDAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 79, Nombre ='HUITZILTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 80, Nombre ='IGNACIO ALLENDE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 81, Nombre ='IXCAMILPA DE GUERRERO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 82, Nombre ='IXCAQUIXTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 83, Nombre ='IXTACAMAXTITLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 84, Nombre ='IXTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 85, Nombre ='IZUCAR DE MATAMOROS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 86, Nombre ='JALPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 87, Nombre ='JOLALPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 88, Nombre ='JONOTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 89, Nombre ='JOPALA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 90, Nombre ='JUAN C BONILLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 91, Nombre ='JUAN GALINDO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 92, Nombre ='JUAN N MENDEZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 93, Nombre ='LAFRAGUA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 94, Nombre ='LIBRES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 95, Nombre ='LA MAGDALENA TLATLAUQUITEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 96, Nombre ='MAZAPILTEPEC DE JUAREZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 97, Nombre ='MIXTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 98, Nombre ='MOLCAXAC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 99, Nombre ='CA¥ADA MORELOS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 100, Nombre ='NAUPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 101, Nombre ='NAUZONTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 102, Nombre ='NEALTICAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 103, Nombre ='NICOLAS BRAVO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 104, Nombre ='NOPALUCAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 105, Nombre ='OCOTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 106, Nombre ='OCOYUCAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 107, Nombre ='OLINTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 108, Nombre ='ORIENTAL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 109, Nombre ='PAHUATLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 110, Nombre ='PALMAR DE BRAVO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 111, Nombre ='PANTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 112, Nombre ='PETLALCINGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 113, Nombre ='PIAXTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 114, Nombre ='PUEBLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 115, Nombre ='QUECHOLAC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 116, Nombre ='QUIMIXTLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 117, Nombre ='RAFAEL LARA GRAJALES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 118, Nombre ='LOS REYES DE JUAREZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 119, Nombre ='SAN ANDRES CHOLULA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 120, Nombre ='SAN ANTONIO CA¥ADA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 121, Nombre ='SAN DIEGO LA MESA TOCHIMILTZI', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 122, Nombre ='SAN FELIPE TEOTLALCINGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 123, Nombre ='SAN FELIPE TEPATLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 124, Nombre ='SAN GABRIEL CHILAC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 125, Nombre ='SAN GREGORIO ATZOMPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 126, Nombre ='SAN JERONIMO TECUANIPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 127, Nombre ='SAN JERONIMO XAYACATLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 128, Nombre ='SAN JOSE CHIAPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 129, Nombre ='SAN JOSE MIAHUATLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 130, Nombre ='SAN JUAN ATENCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 131, Nombre ='SAN JUAN ATZOMPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 132, Nombre ='SAN MARTIN TEXMELUCAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 133, Nombre ='SAN MARTIN TOTOLTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 134, Nombre ='SAN MATIAS TLALANCALECA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 135, Nombre ='SAN MIGUEL IXITLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 136, Nombre ='SAN MIGUEL XOXTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 137, Nombre ='SAN NICOLAS BUENOS AIRES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 138, Nombre ='SAN NICOLAS DE LOS RANCHOS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 139, Nombre ='SAN PABLO ANICANO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 140, Nombre ='SAN PEDRO CHOLULA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 141, Nombre ='SAN PEDRO YELOIXTLAHUACA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 142, Nombre ='SAN SALVADOR EL SECO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 143, Nombre ='SAN SALVADOR EL VERDE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 144, Nombre ='SAN SALVADOR HUIXCOLOTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 145, Nombre ='SAN SEBASTIAN TLACOTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 146, Nombre ='SANTA CATARINA TLALTEMPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 147, Nombre ='SANTA INES AHUATEMPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 148, Nombre ='SANTA ISABEL CHOLULA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 149, Nombre ='SANTIAGO MIAHUATLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 150, Nombre ='HUEHUETLAN EL GRANDE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 151, Nombre ='SANTO TOMAS HUEYOTLIPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 152, Nombre ='SOLTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 153, Nombre ='TECALI DE HERRERA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 154, Nombre ='TECAMACHALCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 155, Nombre ='TECOMATLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 156, Nombre ='TEHUACAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 157, Nombre ='TEHUITZINGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 158, Nombre ='TENAMPULCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 159, Nombre ='TEOPANTLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 160, Nombre ='TEOTLALCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 161, Nombre ='TEPANCO DE LOPEZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 162, Nombre ='TEPANGO DE RODRIGUEZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 163, Nombre ='TEPATLAXCO DE HIDALGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 164, Nombre ='TEPEACA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 165, Nombre ='TEPEMAXALCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 166, Nombre ='TEPEOJUMA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 167, Nombre ='TEPETZINTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 168, Nombre ='TEPEXCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 169, Nombre ='TEPEXI DE RODRIGUEZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 170, Nombre ='TEPEYAHUALCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 171, Nombre ='TEPEYAHUALCO DE CUAUHTEMOC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 172, Nombre ='TETELA DE OCAMPO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 173, Nombre ='TETELES DE AVILA CASTILLO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 174, Nombre ='TEZIUTLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 175, Nombre ='TIANGUISMANALCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 176, Nombre ='TILAPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 177, Nombre ='TLACOTEPEC DE BENITO JUAREZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 178, Nombre ='TLACUILOTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 179, Nombre ='TLACHICHUCA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 180, Nombre ='TLAHUAPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 181, Nombre ='TLALTENANGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 182, Nombre ='TLANEPANTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 183, Nombre ='TLAOLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 184, Nombre ='TLAPACOYA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 185, Nombre ='TLAPANALA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 186, Nombre ='TLATLAUQUITEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 187, Nombre ='TLAXCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 188, Nombre ='TOCHIMILCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 189, Nombre ='TOCHTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 190, Nombre ='TOTOLTEPEC DE GUERRERO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 191, Nombre ='TULCINGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 192, Nombre ='TUZAMAPAN DE GALEANA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 193, Nombre ='TZICATLACOYAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 194, Nombre ='VENUSTIANO CARRANZA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 195, Nombre ='VICENTE GUERRERO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 196, Nombre ='XAYACATLAN DE BRAVO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 197, Nombre ='XICOTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 198, Nombre ='XICOTLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 199, Nombre ='XIUTETELCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 200, Nombre ='XOCHIAPULCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 201, Nombre ='XOCHILTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 202, Nombre ='XOCHITLAN DE VICENTE SUAREZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 203, Nombre ='XOCHITLAN TODOS SANTOS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 204, Nombre ='YAONAHUAC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 205, Nombre ='YEHUALTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 206, Nombre ='ZACAPALA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 207, Nombre ='ZACAPOAXTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 208, Nombre ='ZACATLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 209, Nombre ='ZAPOTITLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 210, Nombre ='ZAPOTITLAN DE MENDEZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 211, Nombre ='ZARAGOZA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 212, Nombre ='ZAUTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 213, Nombre ='ZIHUATEUTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 214, Nombre ='ZINACATEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 215, Nombre ='ZONGOZOTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 216, Nombre ='ZOQUIAPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 21, IdMunicipio = 217, Nombre ='ZOQUITLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 22, IdMunicipio = 1, Nombre ='AMEALCO DE BONFIL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 22, IdMunicipio = 2, Nombre ='PINAL DE AMOLES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 22, IdMunicipio = 3, Nombre ='ARROYO SECO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 22, IdMunicipio = 4, Nombre ='CADEREYTA DE MONTES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 22, IdMunicipio = 5, Nombre ='COLON', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 22, IdMunicipio = 6, Nombre ='CORREGIDORA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 22, IdMunicipio = 7, Nombre ='EZEQUIEL MONTES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 22, IdMunicipio = 8, Nombre ='HUIMILPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 22, IdMunicipio = 9, Nombre ='JALPAN DE SERRA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 22, IdMunicipio = 10, Nombre ='LANDA DE MATAMOROS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 22, IdMunicipio = 11, Nombre ='EL MARQUES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 22, IdMunicipio = 12, Nombre ='PEDRO ESCOBEDO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 22, IdMunicipio = 13, Nombre ='PE¥AMILLER', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 22, IdMunicipio = 14, Nombre ='SANTIAGO DE QUERETARO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 22, IdMunicipio = 15, Nombre ='SAN JOAQUIN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 22, IdMunicipio = 16, Nombre ='SAN JUAN DEL RIO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 22, IdMunicipio = 17, Nombre ='TEQUISQUIAPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 22, IdMunicipio = 18, Nombre ='TOLIMAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 23, IdMunicipio = 1, Nombre ='COZUMEL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 23, IdMunicipio = 2, Nombre ='FELIPE CARRILLO PUERTO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 23, IdMunicipio = 3, Nombre ='ISLA MUJERES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 23, IdMunicipio = 4, Nombre ='OTHON P BLANCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 23, IdMunicipio = 5, Nombre ='BENITO JUAREZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 23, IdMunicipio = 6, Nombre ='JOSE MA MORELOS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 23, IdMunicipio = 7, Nombre ='LAZARO CARDENAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 23, IdMunicipio = 8, Nombre ='SOLIDARIDAD', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 24, IdMunicipio = 1, Nombre ='AHUALULCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 24, IdMunicipio = 2, Nombre ='ALAQUINES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 24, IdMunicipio = 3, Nombre ='AQUISMON', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 24, IdMunicipio = 4, Nombre ='ARMADILLO DE LOS INFANTE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 24, IdMunicipio = 5, Nombre ='CARDENAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 24, IdMunicipio = 6, Nombre ='CATORCE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 24, IdMunicipio = 7, Nombre ='CEDRAL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 24, IdMunicipio = 8, Nombre ='CERRITOS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 24, IdMunicipio = 9, Nombre ='CERRO DE SAN PEDRO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 24, IdMunicipio = 10, Nombre ='CIUDAD DEL MAIZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 24, IdMunicipio = 11, Nombre ='CIUDAD FERNANDEZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 24, IdMunicipio = 12, Nombre ='TANCANHUITZ DE SANTOS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 24, IdMunicipio = 13, Nombre ='CIUDAD VALLES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 24, IdMunicipio = 14, Nombre ='COXCATLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 24, IdMunicipio = 15, Nombre ='CHARCAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 24, IdMunicipio = 16, Nombre ='EBANO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 24, IdMunicipio = 17, Nombre ='GUADALCAZAR', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 24, IdMunicipio = 18, Nombre ='HUEHUETLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 24, IdMunicipio = 19, Nombre ='LAGUNILLAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 24, IdMunicipio = 20, Nombre ='MATEHUALA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 24, IdMunicipio = 21, Nombre ='MEXQUITIC DE CARMONA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 24, IdMunicipio = 22, Nombre ='MOCTEZUMA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 24, IdMunicipio = 23, Nombre ='RAYON', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 24, IdMunicipio = 24, Nombre ='RIO VERDE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 24, IdMunicipio = 25, Nombre ='SALINAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 24, IdMunicipio = 26, Nombre ='SAN ANTONIO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 24, IdMunicipio = 27, Nombre ='SAN CIRO DE ACOSTA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 24, IdMunicipio = 28, Nombre ='SAN LUIS POTOSI', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 24, IdMunicipio = 29, Nombre ='SAN MARTIN CHALCHICUAUTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 24, IdMunicipio = 30, Nombre ='SAN NICOLAS TOLENTINO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 24, IdMunicipio = 31, Nombre ='SANTA CATARINA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 24, IdMunicipio = 32, Nombre ='SANTA MARIA DEL RIO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 24, IdMunicipio = 33, Nombre ='SANTO DOMINGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 24, IdMunicipio = 34, Nombre ='SAN VICENTE TANCUAYALAB', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 24, IdMunicipio = 35, Nombre ='SOLEDAD DE GRACIANO SANCHEZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 24, IdMunicipio = 36, Nombre ='TAMASOPO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 24, IdMunicipio = 37, Nombre ='TAMAZUNCHALE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 24, IdMunicipio = 38, Nombre ='TAMPACAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 24, IdMunicipio = 39, Nombre ='TAMPAMOLON CORONA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 24, IdMunicipio = 40, Nombre ='TAMUIN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 24, IdMunicipio = 41, Nombre ='TANLAJAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 24, IdMunicipio = 42, Nombre ='TANQUIAN DE ESCOBEDO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 24, IdMunicipio = 43, Nombre ='TIERRANUEVA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 24, IdMunicipio = 44, Nombre ='VANEGAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 24, IdMunicipio = 45, Nombre ='VENADO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 24, IdMunicipio = 46, Nombre ='VILLA DE ARRIAGA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 24, IdMunicipio = 47, Nombre ='VILLA DE GUADALUPE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 24, IdMunicipio = 48, Nombre ='VILLA DE LA PAZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 24, IdMunicipio = 49, Nombre ='VILLA DE RAMOS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 24, IdMunicipio = 50, Nombre ='VILLA DE REYES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 24, IdMunicipio = 51, Nombre ='VILLA HIDALGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 24, IdMunicipio = 52, Nombre ='VILLA JUAREZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 24, IdMunicipio = 53, Nombre ='AXTLA DE TERRAZAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 24, IdMunicipio = 54, Nombre ='XILITLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 24, IdMunicipio = 55, Nombre ='ZARAGOZA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 24, IdMunicipio = 56, Nombre ='VILLA DE ARISTA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 25, IdMunicipio = 1, Nombre ='AHOME', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 25, IdMunicipio = 2, Nombre ='ANGOSTURA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 25, IdMunicipio = 3, Nombre ='BADIRAGUATO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 25, IdMunicipio = 4, Nombre ='CONCORDIA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 25, IdMunicipio = 5, Nombre ='COSALA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 25, IdMunicipio = 6, Nombre ='CULIACAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 25, IdMunicipio = 7, Nombre ='CHOIX', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 25, IdMunicipio = 8, Nombre ='ELOTA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 25, IdMunicipio = 9, Nombre ='ESCUINAPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 25, IdMunicipio = 10, Nombre ='EL FUERTE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 25, IdMunicipio = 11, Nombre ='GUASAVE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 25, IdMunicipio = 12, Nombre ='MAZATLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 25, IdMunicipio = 13, Nombre ='MOCORITO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 25, IdMunicipio = 14, Nombre ='ROSARIO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 25, IdMunicipio = 15, Nombre ='SALVADOR ALVARADO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 25, IdMunicipio = 16, Nombre ='SAN IGNACIO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 25, IdMunicipio = 17, Nombre ='SINALOA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 25, IdMunicipio = 18, Nombre ='NAVOLATO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 1, Nombre ='ACONCHI', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 2, Nombre ='AGUA PRIETA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 3, Nombre ='ALAMOS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 4, Nombre ='ALTAR', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 5, Nombre ='ARIVECHI', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 6, Nombre ='ARIZPE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 7, Nombre ='ATIL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 8, Nombre ='BACADEHUACHI', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 9, Nombre ='BACANORA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 10, Nombre ='BACERAC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 11, Nombre ='BACOACHI', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 12, Nombre ='BACUM', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 13, Nombre ='BANAMICHI', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 14, Nombre ='BAVIACORA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 15, Nombre ='BAVISPE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 16, Nombre ='BENJAMIN HILL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 17, Nombre ='CABORCA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 18, Nombre ='CAJEME', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 19, Nombre ='CANANEA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 20, Nombre ='CARBO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 21, Nombre ='LA COLORADA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 22, Nombre ='CUCURPE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 23, Nombre ='CUMPAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 24, Nombre ='DIVISADEROS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 25, Nombre ='EMPALME', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 26, Nombre ='ETCHOJOA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 27, Nombre ='FRONTERAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 28, Nombre ='GRANADOS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 29, Nombre ='GUAYMAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 30, Nombre ='HERMOSILLO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 31, Nombre ='HUACHINERA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 32, Nombre ='HUASABAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 33, Nombre ='HUATABAMPO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 34, Nombre ='HUEPAC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 35, Nombre ='IMURIS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 36, Nombre ='MAGDALENA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 37, Nombre ='MAZATAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 38, Nombre ='MOCTEZUMA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 39, Nombre ='NACO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 40, Nombre ='NACORI CHICO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 41, Nombre ='NACOZARI DE GARCIA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 42, Nombre ='NAVOJOA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 43, Nombre ='NOGALES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 44, Nombre ='ONAVAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 45, Nombre ='OPODEPE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 46, Nombre ='OQUITOA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 47, Nombre ='PITIQUITO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 48, Nombre ='PUERTO PE¥ASCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 49, Nombre ='QUIRIEGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 50, Nombre ='RAYON', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 51, Nombre ='ROSARIO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 52, Nombre ='SAHUARIPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 53, Nombre ='SAN FELIPE DE JESUS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 54, Nombre ='SAN JAVIER', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 55, Nombre ='SAN LUIS RIO COLORADO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 56, Nombre ='SAN MIGUEL DE HORCASITAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 57, Nombre ='SAN PEDRO DE LA CUEVA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 58, Nombre ='SANTA ANA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 59, Nombre ='SANTA CRUZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 60, Nombre ='SARIC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 61, Nombre ='SOYOPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 62, Nombre ='SUAQUI GRANDE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 63, Nombre ='TEPACHE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 64, Nombre ='TRINCHERAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 65, Nombre ='TUBUTAMA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 66, Nombre ='URES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 67, Nombre ='VILLA HIDALGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 68, Nombre ='VILLA PESQUEIRA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 69, Nombre ='YECORA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 70, Nombre ='GENERAL PLUTARCO ELIAS CALLES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 26, IdMunicipio = 71, Nombre ='CD OBREGON', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 27, IdMunicipio = 1, Nombre ='BALANCAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 27, IdMunicipio = 2, Nombre ='CARDENAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 27, IdMunicipio = 3, Nombre ='CENTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 27, IdMunicipio = 4, Nombre ='CENTRO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 27, IdMunicipio = 5, Nombre ='COMALCALCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 27, IdMunicipio = 6, Nombre ='CUNDUACAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 27, IdMunicipio = 7, Nombre ='EMILIANO ZAPATA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 27, IdMunicipio = 8, Nombre ='HUIMANGUILLO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 27, IdMunicipio = 9, Nombre ='JALAPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 27, IdMunicipio = 10, Nombre ='JALPA DE MENDEZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 27, IdMunicipio = 11, Nombre ='JONUTA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 27, IdMunicipio = 12, Nombre ='MACUSPANA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 27, IdMunicipio = 13, Nombre ='NACAJUCA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 27, IdMunicipio = 14, Nombre ='PARAISO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 27, IdMunicipio = 15, Nombre ='TACOTALPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 27, IdMunicipio = 16, Nombre ='TEAPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 27, IdMunicipio = 17, Nombre ='TENOSIQUE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 28, IdMunicipio = 1, Nombre ='ABASOLO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 28, IdMunicipio = 2, Nombre ='ALDAMA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 28, IdMunicipio = 3, Nombre ='ALTAMIRA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 28, IdMunicipio = 4, Nombre ='ANTIGUO MORELOS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 28, IdMunicipio = 5, Nombre ='BURGOS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 28, IdMunicipio = 6, Nombre ='BUSTAMANTE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 28, IdMunicipio = 7, Nombre ='CAMARGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 28, IdMunicipio = 8, Nombre ='CASAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 28, IdMunicipio = 9, Nombre ='CIUDAD MADERO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 28, IdMunicipio = 10, Nombre ='CRUILLAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 28, IdMunicipio = 11, Nombre ='GOMEZ FARIAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 28, IdMunicipio = 12, Nombre ='GONZALEZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 28, IdMunicipio = 13, Nombre ='GUEMEZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 28, IdMunicipio = 14, Nombre ='GUERRERO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 28, IdMunicipio = 15, Nombre ='GUSTAVO DIAZ ORDAZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 28, IdMunicipio = 16, Nombre ='HIDALGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 28, IdMunicipio = 17, Nombre ='JAUMAVE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 28, IdMunicipio = 18, Nombre ='JIMENEZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 28, IdMunicipio = 19, Nombre ='LLERA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 28, IdMunicipio = 20, Nombre ='MAINERO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 28, IdMunicipio = 21, Nombre ='EL MANTE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 28, IdMunicipio = 22, Nombre ='MATAMOROS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 28, IdMunicipio = 23, Nombre ='MENDEZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 28, IdMunicipio = 24, Nombre ='MIER', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 28, IdMunicipio = 25, Nombre ='MIGUEL ALEMAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 28, IdMunicipio = 26, Nombre ='MIQUIHUANA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 28, IdMunicipio = 27, Nombre ='NUEVO LAREDO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 28, IdMunicipio = 28, Nombre ='NUEVO MORELOS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 28, IdMunicipio = 29, Nombre ='OCAMPO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 28, IdMunicipio = 30, Nombre ='PADILLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 28, IdMunicipio = 31, Nombre ='PALMILLAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 28, IdMunicipio = 32, Nombre ='REYNOSA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 28, IdMunicipio = 33, Nombre ='RIO BRAVO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 28, IdMunicipio = 34, Nombre ='SAN CARLOS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 28, IdMunicipio = 35, Nombre ='SAN FERNANDO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 28, IdMunicipio = 36, Nombre ='SAN NICOLAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 28, IdMunicipio = 37, Nombre ='SOTO LA MARINA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 28, IdMunicipio = 38, Nombre ='TAMPICO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 28, IdMunicipio = 39, Nombre ='TULA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 28, IdMunicipio = 40, Nombre ='VALLE HERMOSO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 28, IdMunicipio = 41, Nombre ='VICTORIA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 28, IdMunicipio = 42, Nombre ='VILLAGRAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 28, IdMunicipio = 43, Nombre ='XICOTENCATL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 29, IdMunicipio = 1, Nombre ='AMAXAC DE GUERRERO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 29, IdMunicipio = 2, Nombre ='APETATITLAN DE A CARBAJAL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 29, IdMunicipio = 3, Nombre ='ATLANGATEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 29, IdMunicipio = 4, Nombre ='ALTZAYANCA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 29, IdMunicipio = 5, Nombre ='APIZACO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 29, IdMunicipio = 6, Nombre ='CALPULALPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 29, IdMunicipio = 7, Nombre ='EL CARMEN TEQUEXQUITLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 29, IdMunicipio = 8, Nombre ='CUAPIAXTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 29, IdMunicipio = 9, Nombre ='CUAXOMULCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 29, IdMunicipio = 10, Nombre ='CHIAUTEMPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 29, IdMunicipio = 11, Nombre ='MU¥OZ DE DOMINGO ARENAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 29, IdMunicipio = 12, Nombre ='ESPA¥ITA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 29, IdMunicipio = 13, Nombre ='HUAMANTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 29, IdMunicipio = 14, Nombre ='HUEYOTLIPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 29, IdMunicipio = 15, Nombre ='IXTACUIXTLA DE M MATAMOROS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 29, IdMunicipio = 16, Nombre ='IXTENCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 29, IdMunicipio = 17, Nombre ='MAZATECOCHCO DE JOSE MA MORELOS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 29, IdMunicipio = 18, Nombre ='CONTLA DE JUAN CUAMATZI', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 29, IdMunicipio = 19, Nombre ='TEPETITLA DE LARDIZABAL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 29, IdMunicipio = 20, Nombre ='SANCTORUM DE LAZARO CARDENAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 29, IdMunicipio = 21, Nombre ='NANACAMILPA DE MARIANO ARISTA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 29, IdMunicipio = 22, Nombre ='ACUAMANALA DE MIGUEL HIDALGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 29, IdMunicipio = 23, Nombre ='NATIVITAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 29, IdMunicipio = 24, Nombre ='PANOTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 29, IdMunicipio = 25, Nombre ='SAN PABLO DEL MONTE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 29, IdMunicipio = 26, Nombre ='SANTA CRUZ TLAXCALA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 29, IdMunicipio = 27, Nombre ='TENANCINGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 29, IdMunicipio = 28, Nombre ='TEOLOCHOLCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 29, IdMunicipio = 29, Nombre ='TEPEYANCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 29, IdMunicipio = 30, Nombre ='TERRENATE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 29, IdMunicipio = 31, Nombre ='TETLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 29, IdMunicipio = 32, Nombre ='TETLATLAHUCA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 29, IdMunicipio = 33, Nombre ='TLAXCALA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 29, IdMunicipio = 34, Nombre ='TLAXCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 29, IdMunicipio = 35, Nombre ='TOCATLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 29, IdMunicipio = 36, Nombre ='TOTOLAC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 29, IdMunicipio = 37, Nombre ='Z DE TRINIDAD SANCHEZ SANTOS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 29, IdMunicipio = 38, Nombre ='TZOMPANTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 29, IdMunicipio = 39, Nombre ='XALOZTOC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 29, IdMunicipio = 40, Nombre ='XALTOCAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 29, IdMunicipio = 41, Nombre ='PAPALOTLA DE XICOHTENCATL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 29, IdMunicipio = 42, Nombre ='XICOTZINGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 29, IdMunicipio = 43, Nombre ='YAUHQUEMEHCAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 29, IdMunicipio = 44, Nombre ='ZACATELCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 1, Nombre ='ACAJETE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 2, Nombre ='ACATLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 3, Nombre ='ACAYUCAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 4, Nombre ='ACTOPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 5, Nombre ='ACULA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 6, Nombre ='ACULTZINGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 7, Nombre ='CAMARON DE TEJEDA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 8, Nombre ='ALPATLAHUAC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 9, Nombre ='ALTO LUCERO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 10, Nombre ='ALTOTONGA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 11, Nombre ='ALVARADO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 12, Nombre ='AMATITLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 13, Nombre ='AMATLAN TUXPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 14, Nombre ='AMATLAN DE LOS REYES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 15, Nombre ='ANGEL R CABADA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 16, Nombre ='LA ANTIGUA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 17, Nombre ='APAZAPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 18, Nombre ='AQUILA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 19, Nombre ='ASTACINGA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 20, Nombre ='ATLAHUILCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 21, Nombre ='ATOYAC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 22, Nombre ='ATZACAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 23, Nombre ='ATZALAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 24, Nombre ='TLALTETELA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 25, Nombre ='AYAHUALULCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 26, Nombre ='BANDERILLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 27, Nombre ='BENITO JUAREZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 28, Nombre ='BOCA DEL RIO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 29, Nombre ='CALCAHUALCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 30, Nombre ='CAMERINO Z MENDOZA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 31, Nombre ='CARRILLO PUERTO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 32, Nombre ='CATEMACO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 33, Nombre ='CAZONES DE HERRERA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 34, Nombre ='CERRO AZUL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 35, Nombre ='CITLALTEPETL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 36, Nombre ='COACOATZINTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 37, Nombre ='COAHUITLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 38, Nombre ='COATEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 39, Nombre ='COATZACOALCOS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 40, Nombre ='COATZINTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 41, Nombre ='COETZALA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 42, Nombre ='COLIPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 43, Nombre ='COMAPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 44, Nombre ='CORDOBA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 45, Nombre ='COSAMALOAPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 46, Nombre ='COSAUTLAN DE CARVAJAL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 47, Nombre ='COSCOMATEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 48, Nombre ='COSOLEACAQUE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 49, Nombre ='COTAXTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 50, Nombre ='COXQUIHUI', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 51, Nombre ='COYUTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 52, Nombre ='CUICHAPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 53, Nombre ='CUITLAHUAC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 54, Nombre ='CHACALTIANGUIS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 55, Nombre ='CHALMA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 56, Nombre ='CHICONAMEL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 57, Nombre ='CHICONQUIACO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 58, Nombre ='CHICONTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 59, Nombre ='CHINAMECA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 60, Nombre ='CHINAMPA DE GOROSTIZA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 61, Nombre ='LAS CHOAPAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 62, Nombre ='CHOCAMAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 63, Nombre ='CHONTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 64, Nombre ='CHUMATLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 65, Nombre ='EMILIANO ZAPATA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 66, Nombre ='ESPINAL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 67, Nombre ='FILOMENO MATA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 68, Nombre ='FORTIN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 69, Nombre ='GUTIERREZ ZAMORA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 70, Nombre ='HIDALGOTITLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 71, Nombre ='HUATUSCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 72, Nombre ='HUAYACOCOTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 73, Nombre ='HUEYAPAN DE OCAMPO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 74, Nombre ='HUILOAPAN DE CUAUHTEMOC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 75, Nombre ='IGNACIO DE LA LLAVE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 76, Nombre ='ILAMATLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 77, Nombre ='ISLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 78, Nombre ='IXCATEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 79, Nombre ='IXHUACAN DE LOS REYES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 80, Nombre ='IXHUATLAN DEL CAFE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 81, Nombre ='IXHUATLANCILLO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 82, Nombre ='IXHUATLAN DEL SURESTE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 83, Nombre ='IXHUATLAN DE MADERO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 84, Nombre ='IXMATLAHUACAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 85, Nombre ='IXTACZOQUITLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 86, Nombre ='JALACINGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 87, Nombre ='XALAPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 88, Nombre ='JALCOMULCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 89, Nombre ='JALTIPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 90, Nombre ='JAMAPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 91, Nombre ='JESUS CARRANZA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 92, Nombre ='XICO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 93, Nombre ='JILOTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 94, Nombre ='JUAN RODRIGUEZ CLARA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 95, Nombre ='JUCHIQUE DE FERRER', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 96, Nombre ='LANDERO Y COSS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 97, Nombre ='LERDO DE TEJADA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 98, Nombre ='MAGDALENA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 99, Nombre ='MALTRATA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 100, Nombre ='MANLIO FABIO ALTAMIRANO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 101, Nombre ='MARIANO ESCOBEDO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 102, Nombre ='MARTINEZ DE LA TORRE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 103, Nombre ='MECATLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 104, Nombre ='MECAYAPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 105, Nombre ='MEDELLIN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 106, Nombre ='MIAHUATLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 107, Nombre ='LAS MINAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 108, Nombre ='MINATITLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 109, Nombre ='MISANTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 110, Nombre ='MIXTLA DE ALTAMIRANO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 111, Nombre ='MOLOACAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 112, Nombre ='NAOLINCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 113, Nombre ='NARANJAL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 114, Nombre ='NAUTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 115, Nombre ='NOGALES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 116, Nombre ='OLUTA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 117, Nombre ='OMEALCA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 118, Nombre ='ORIZABA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 119, Nombre ='OTATITLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 120, Nombre ='OTEAPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 121, Nombre ='OZULUAMA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 122, Nombre ='PAJAPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 123, Nombre ='PANUCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 124, Nombre ='PAPANTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 125, Nombre ='PASO DEL MACHO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 126, Nombre ='PASO DE OVEJAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 127, Nombre ='LA PERLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 128, Nombre ='PEROTE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 129, Nombre ='PLATON SANCHEZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 130, Nombre ='PLAYA VICENTE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 131, Nombre ='POZA RICA DE HIDALGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 132, Nombre ='LAS VIGAS DE RAMIREZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 133, Nombre ='PUEBLO VIEJO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 134, Nombre ='PUENTE NACIONAL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 135, Nombre ='RAFAEL DELGADO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 136, Nombre ='RAFAEL LUCIO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 137, Nombre ='LOS REYES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 138, Nombre ='RIO BLANCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 139, Nombre ='SALTABARRANCA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 140, Nombre ='SAN ANDRES TENEJAPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 141, Nombre ='SAN ANDRES TUXTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 142, Nombre ='SAN JUAN EVANGELISTA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 143, Nombre ='SANTIAGO TUXTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 144, Nombre ='SAYULA DE ALEMAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 145, Nombre ='SOCONUSCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 146, Nombre ='SOCHIAPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 147, Nombre ='SOLEDAD ATZOMPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 148, Nombre ='SOLEDAD DE DOBLADO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 149, Nombre ='SOTEAPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 150, Nombre ='TAMALIN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 151, Nombre ='TAMIAHUA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 152, Nombre ='TAMPICO ALTO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 153, Nombre ='TANCOCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 154, Nombre ='TANTIMA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 155, Nombre ='TANTOYUCA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 156, Nombre ='TATATILA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 157, Nombre ='CASTILLO DE TEAYO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 158, Nombre ='TECOLUTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 159, Nombre ='TEHUIPANGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 160, Nombre ='TEMAPACHE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 161, Nombre ='TEMPOAL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 162, Nombre ='TENAMPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 163, Nombre ='TENOCHTITLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 164, Nombre ='TEOCELO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 165, Nombre ='TEPATLAXCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 166, Nombre ='TEPETLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 167, Nombre ='TEPETZINTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 168, Nombre ='TEQUILA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 169, Nombre ='JOSE AZUETA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 170, Nombre ='TEXCATEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 171, Nombre ='TEXHUACAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 172, Nombre ='TEXISTEPEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 173, Nombre ='TEZONAPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 174, Nombre ='TIERRA BLANCA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 175, Nombre ='TIHUATLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 176, Nombre ='TLACOJALPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 177, Nombre ='TLACOLULAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 178, Nombre ='TLACOTALPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 179, Nombre ='TLACOTEPEC DE MEJIA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 180, Nombre ='TLACHICHILCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 181, Nombre ='TLALIXCOYAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 182, Nombre ='TLALNELHUAYOCAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 183, Nombre ='TLAPACOYAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 184, Nombre ='TLAQUILPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 185, Nombre ='TLILAPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 186, Nombre ='TOMATLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 187, Nombre ='TONAYAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 188, Nombre ='TOTUTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 189, Nombre ='TUXPAM', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 190, Nombre ='TUXTILLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 191, Nombre ='URSULO GALVAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 192, Nombre ='VEGA DE ALATORRE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 193, Nombre ='VERACRUZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 194, Nombre ='VILLA ALDAMA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 195, Nombre ='XOXOCOTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 196, Nombre ='YANGA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 197, Nombre ='VILLA YECUATLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 198, Nombre ='ZACUALPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 199, Nombre ='ZARAGOZA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 200, Nombre ='ZENTLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 201, Nombre ='ZONGOLICA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 202, Nombre ='ZONTECOMATLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 203, Nombre ='ZOZOCOLCO DE HIDALGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 204, Nombre ='AGUA DULCE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 205, Nombre ='EL HIGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 206, Nombre ='NANCHITAL DE LAZARO CARDENAS DEL RIO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 30, IdMunicipio = 207, Nombre ='TRES VALLES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 1, Nombre ='ABALA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 2, Nombre ='ACANCEH', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 3, Nombre ='AKIL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 4, Nombre ='BACA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 5, Nombre ='BOKOBA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 6, Nombre ='BUCTZOTZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 7, Nombre ='CACALCHEN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 8, Nombre ='CALOTMUL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 9, Nombre ='CANSAHCAB', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 10, Nombre ='CANTAMAYEC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 11, Nombre ='CELESTUN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 12, Nombre ='CENOTILLO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 13, Nombre ='CONKAL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 14, Nombre ='CUNCUNUL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 15, Nombre ='CUZAMA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 16, Nombre ='CHACSINKIN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 17, Nombre ='CHANKOM', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 18, Nombre ='CHAPAB', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 19, Nombre ='CHEMAX', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 20, Nombre ='CHICXULUB PUEBLO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 21, Nombre ='CHICHIMILA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 22, Nombre ='CHIKINDZONOT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 23, Nombre ='CHOCHOLA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 24, Nombre ='CHUMAYEL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 25, Nombre ='DZAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 26, Nombre ='DZEMUL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 27, Nombre ='DZIDZANTUN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 28, Nombre ='DZILAM DE BRAVO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 29, Nombre ='DZILAM GONZALEZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 30, Nombre ='DZITAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 31, Nombre ='DZONCAUICH', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 32, Nombre ='ESPITA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 33, Nombre ='HALACHO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 34, Nombre ='HOCABA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 35, Nombre ='HOCTUN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 36, Nombre ='HOMUN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 37, Nombre ='HUHI', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 38, Nombre ='HUNUCMA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 39, Nombre ='IXIL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 40, Nombre ='IZAMAL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 41, Nombre ='KANASIN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 42, Nombre ='KANTUNIL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 43, Nombre ='KAUA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 44, Nombre ='KINCHIL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 45, Nombre ='KOPOMA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 46, Nombre ='MAMA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 47, Nombre ='MANI', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 48, Nombre ='MAXCANU', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 49, Nombre ='MAYAPAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 50, Nombre ='MERIDA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 51, Nombre ='MOCOCHA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 52, Nombre ='MOTUL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 53, Nombre ='MUNA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 54, Nombre ='MUXUPIP', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 55, Nombre ='OPICHEN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 56, Nombre ='OXKUTZCAB', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 57, Nombre ='PANABA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 58, Nombre ='PETO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 59, Nombre ='PROGRESO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 60, Nombre ='QUINTANA ROO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 61, Nombre ='RIO LAGARTOS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 62, Nombre ='SACALUM', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 63, Nombre ='SAMAHIL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 64, Nombre ='SANAHCAT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 65, Nombre ='SAN FELIPE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 66, Nombre ='SANTA ELENA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 67, Nombre ='SEYE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 68, Nombre ='SINANCHE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 69, Nombre ='SOTUTA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 70, Nombre ='SUCILA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 71, Nombre ='SUDZAL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 72, Nombre ='SUMA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 73, Nombre ='TAHDZIU', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 74, Nombre ='TAHMEK', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 75, Nombre ='TEABO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 76, Nombre ='TECOH', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 77, Nombre ='TEKAL DE VENEGAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 78, Nombre ='TEKANTO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 79, Nombre ='TEKAX', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 80, Nombre ='TEKIT', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 81, Nombre ='TEKOM', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 82, Nombre ='TELCHAC PUEBLO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 83, Nombre ='TELCHAC PUERTO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 84, Nombre ='TEMAX', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 85, Nombre ='TEMOZON', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 86, Nombre ='TEPAKAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 87, Nombre ='TETIZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 88, Nombre ='TEYA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 89, Nombre ='TICUL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 90, Nombre ='TIMUCUY', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 91, Nombre ='TINUM', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 92, Nombre ='TIXCACALCUPUL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 93, Nombre ='TIXKOKOB', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 94, Nombre ='TIXMEHUAC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 95, Nombre ='TIXPEHUAL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 96, Nombre ='TIZIMIN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 97, Nombre ='TUNKAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 98, Nombre ='TZUCACAB', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 99, Nombre ='UAYMA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 100, Nombre ='UCU', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 101, Nombre ='UMAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 102, Nombre ='VALLADOLID', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 103, Nombre ='XOCCHEL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 104, Nombre ='YAXCABA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 105, Nombre ='YAXKUKUL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 31, IdMunicipio = 106, Nombre ='YOBAIN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 32, IdMunicipio = 1, Nombre ='APOZOL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 32, IdMunicipio = 2, Nombre ='APULCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 32, IdMunicipio = 3, Nombre ='ATOLINGA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 32, IdMunicipio = 4, Nombre ='BENITO JUAREZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 32, IdMunicipio = 5, Nombre ='CALERA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 32, IdMunicipio = 6, Nombre ='CA¥ITAS DE FELIPE PESCADOR', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 32, IdMunicipio = 7, Nombre ='CONCEPCION DEL ORO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 32, IdMunicipio = 8, Nombre ='CUAUHTEMOC', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 32, IdMunicipio = 9, Nombre ='CHALCHIHUITES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 32, IdMunicipio = 10, Nombre ='FRESNILLO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 32, IdMunicipio = 11, Nombre ='TRINIDAD GARCIA DE LA CADENA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 32, IdMunicipio = 12, Nombre ='GENARO CODINA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 32, IdMunicipio = 13, Nombre ='GENERAL ENRIQUE ESTRADA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 32, IdMunicipio = 14, Nombre ='FRANCISCO R MURGUIA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 32, IdMunicipio = 15, Nombre ='GENERAL JOAQUIN AMARO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 32, IdMunicipio = 16, Nombre ='GENERAL PANFILO NATERA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 32, IdMunicipio = 17, Nombre ='GUADALUPE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 32, IdMunicipio = 18, Nombre ='HUANUSCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 32, IdMunicipio = 19, Nombre ='JALPA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 32, IdMunicipio = 20, Nombre ='JEREZ', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 32, IdMunicipio = 21, Nombre ='JIMENEZ DEL TEUL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 32, IdMunicipio = 22, Nombre ='JUAN ALDAMA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 32, IdMunicipio = 23, Nombre ='JUCHIPILA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 32, IdMunicipio = 24, Nombre ='LORETO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 32, IdMunicipio = 25, Nombre ='LUIS MOYA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 32, IdMunicipio = 26, Nombre ='MAZAPIL', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 32, IdMunicipio = 27, Nombre ='MELCHOR OCAMPO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 32, IdMunicipio = 28, Nombre ='MEZQUITAL DEL ORO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 32, IdMunicipio = 29, Nombre ='MIGUEL AUZA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 32, IdMunicipio = 30, Nombre ='MOMAX', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 32, IdMunicipio = 31, Nombre ='MONTE ESCOBEDO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 32, IdMunicipio = 32, Nombre ='MORELOS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 32, IdMunicipio = 33, Nombre ='MOYAHUA DE ESTRADA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 32, IdMunicipio = 34, Nombre ='NOCHISTLAN DE MEJIA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 32, IdMunicipio = 35, Nombre ='NORIA DE ANGELES', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 32, IdMunicipio = 36, Nombre ='OJOCALIENTE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 32, IdMunicipio = 37, Nombre ='PANUCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 32, IdMunicipio = 38, Nombre ='PINOS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 32, IdMunicipio = 39, Nombre ='RIO GRANDE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 32, IdMunicipio = 40, Nombre ='SAIN ALTO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 32, IdMunicipio = 41, Nombre ='EL SALVADOR', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 32, IdMunicipio = 42, Nombre ='SOMBRERETE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 32, IdMunicipio = 43, Nombre ='SUSTICACAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 32, IdMunicipio = 44, Nombre ='TABASCO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 32, IdMunicipio = 45, Nombre ='TEPECHITLAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 32, IdMunicipio = 46, Nombre ='TEPETONGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 32, IdMunicipio = 47, Nombre ='TEUL DE GONZALEZ ORTEGA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 32, IdMunicipio = 48, Nombre ='TLALTENANGO DE SANCHEZ ROMAN', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 32, IdMunicipio = 49, Nombre ='VALPARAISO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 32, IdMunicipio = 50, Nombre ='VETAGRANDE', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 32, IdMunicipio = 51, Nombre ='VILLA DE COS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 32, IdMunicipio = 52, Nombre ='VILLA GARCIA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 32, IdMunicipio = 53, Nombre ='VILLA GONZALEZ ORTEGA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 32, IdMunicipio = 54, Nombre ='VILLA HIDALGO', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 32, IdMunicipio = 55, Nombre ='VILLANUEVA', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdPais = 1, IdEstado = 32, IdMunicipio = 56, Nombre ='ZACATECAS', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 


select * from municipio

commit tran
GO


