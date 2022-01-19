
SET XACT_ABORT ON
SET ARITHABORT ON
GO

BEGIN TRANSACTION

DELETE Opcion

INSERT INTO [dbo].[Opcion] ([IdModulo], [IdOpcion], [Opcion], [Nivel], [Padre]) VALUES (1, 1, 'Configuración', 1, 0)
INSERT INTO [dbo].[Opcion] ([IdModulo], [IdOpcion], [Opcion], [Nivel], [Padre]) VALUES (1, 2, 'Generar Torneo', 2, 1)
INSERT INTO [dbo].[Opcion] ([IdModulo], [IdOpcion], [Opcion], [Nivel], [Padre]) VALUES (1, 3, 'Configurar plantilla de equipos', 2, 1)
INSERT INTO [dbo].[Opcion] ([IdModulo], [IdOpcion], [Opcion], [Nivel], [Padre]) VALUES (1, 4, 'Catálogos', 1, 0)
INSERT INTO [dbo].[Opcion] ([IdModulo], [IdOpcion], [Opcion], [Nivel], [Padre]) VALUES (1, 5, 'Catálogo de Jugadores', 2, 4)
INSERT INTO [dbo].[Opcion] ([IdModulo], [IdOpcion], [Opcion], [Nivel], [Padre]) VALUES (1, 6, 'Catálogo de Arbitros', 2, 4)
INSERT INTO [dbo].[Opcion] ([IdModulo], [IdOpcion], [Opcion], [Nivel], [Padre]) VALUES (1, 7, 'Catálogo de Equipos', 2, 4)
INSERT INTO [dbo].[Opcion] ([IdModulo], [IdOpcion], [Opcion], [Nivel], [Padre]) VALUES (1, 8, 'Catálogo de Tipos de Sanción', 2, 4)
INSERT INTO [dbo].[Opcion] ([IdModulo], [IdOpcion], [Opcion], [Nivel], [Padre]) VALUES (1, 9, 'Catálogo de Usuarios', 2, 4)
INSERT INTO [dbo].[Opcion] ([IdModulo], [IdOpcion], [Opcion], [Nivel], [Padre]) VALUES (1, 10, 'Captura', 1, 0)
INSERT INTO [dbo].[Opcion] ([IdModulo], [IdOpcion], [Opcion], [Nivel], [Padre]) VALUES (1, 11, 'Capturar Resultado Partido', 2, 10)
INSERT INTO [dbo].[Opcion] ([IdModulo], [IdOpcion], [Opcion], [Nivel], [Padre]) VALUES (1, 12, 'Capturar Bitacora de Juntas', 2, 10)
INSERT INTO [dbo].[Opcion] ([IdModulo], [IdOpcion], [Opcion], [Nivel], [Padre]) VALUES (1, 13, 'Consultas', 1, 0)
INSERT INTO [dbo].[Opcion] ([IdModulo], [IdOpcion], [Opcion], [Nivel], [Padre]) VALUES (1, 14, 'Estadisticas de los jugadores', 2, 13)
INSERT INTO [dbo].[Opcion] ([IdModulo], [IdOpcion], [Opcion], [Nivel], [Padre]) VALUES (1, 15, 'Estadisticas por Jornada', 2, 13)
INSERT INTO [dbo].[Opcion] ([IdModulo], [IdOpcion], [Opcion], [Nivel], [Padre]) VALUES (1, 16, 'Calendario del Torneo', 2, 13)
GO

COMMIT TRANSACTION