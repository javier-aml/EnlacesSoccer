
SET XACT_ABORT ON
SET ARITHABORT ON
GO

BEGIN TRANSACTION

DELETE Opcion

INSERT INTO [dbo].[Opcion] ([IdModulo], [IdOpcion], [Opcion], [Nivel], [Padre]) VALUES (1, 1, 'Configuraci�n', 1, 0)
INSERT INTO [dbo].[Opcion] ([IdModulo], [IdOpcion], [Opcion], [Nivel], [Padre]) VALUES (1, 2, 'Generar Torneo', 2, 1)
INSERT INTO [dbo].[Opcion] ([IdModulo], [IdOpcion], [Opcion], [Nivel], [Padre]) VALUES (1, 3, 'Configurar plantilla de equipos', 2, 1)
INSERT INTO [dbo].[Opcion] ([IdModulo], [IdOpcion], [Opcion], [Nivel], [Padre]) VALUES (1, 4, 'Cat�logos', 1, 0)
INSERT INTO [dbo].[Opcion] ([IdModulo], [IdOpcion], [Opcion], [Nivel], [Padre]) VALUES (1, 5, 'Cat�logo de Jugadores', 2, 4)
INSERT INTO [dbo].[Opcion] ([IdModulo], [IdOpcion], [Opcion], [Nivel], [Padre]) VALUES (1, 6, 'Cat�logo de Arbitros', 2, 4)
INSERT INTO [dbo].[Opcion] ([IdModulo], [IdOpcion], [Opcion], [Nivel], [Padre]) VALUES (1, 7, 'Cat�logo de Equipos', 2, 4)
INSERT INTO [dbo].[Opcion] ([IdModulo], [IdOpcion], [Opcion], [Nivel], [Padre]) VALUES (1, 8, 'Cat�logo de Tipos de Sanci�n', 2, 4)
INSERT INTO [dbo].[Opcion] ([IdModulo], [IdOpcion], [Opcion], [Nivel], [Padre]) VALUES (1, 9, 'Cat�logo de Usuarios', 2, 4)
INSERT INTO [dbo].[Opcion] ([IdModulo], [IdOpcion], [Opcion], [Nivel], [Padre]) VALUES (1, 10, 'Captura', 1, 0)
INSERT INTO [dbo].[Opcion] ([IdModulo], [IdOpcion], [Opcion], [Nivel], [Padre]) VALUES (1, 11, 'Capturar Resultado Partido', 2, 10)
INSERT INTO [dbo].[Opcion] ([IdModulo], [IdOpcion], [Opcion], [Nivel], [Padre]) VALUES (1, 12, 'Capturar Bitacora de Juntas', 2, 10)
INSERT INTO [dbo].[Opcion] ([IdModulo], [IdOpcion], [Opcion], [Nivel], [Padre]) VALUES (1, 13, 'Consultas', 1, 0)
INSERT INTO [dbo].[Opcion] ([IdModulo], [IdOpcion], [Opcion], [Nivel], [Padre]) VALUES (1, 14, 'Estadisticas de los jugadores', 2, 13)
INSERT INTO [dbo].[Opcion] ([IdModulo], [IdOpcion], [Opcion], [Nivel], [Padre]) VALUES (1, 15, 'Estadisticas por Jornada', 2, 13)
INSERT INTO [dbo].[Opcion] ([IdModulo], [IdOpcion], [Opcion], [Nivel], [Padre]) VALUES (1, 16, 'Calendario del Torneo', 2, 13)
GO

COMMIT TRANSACTION