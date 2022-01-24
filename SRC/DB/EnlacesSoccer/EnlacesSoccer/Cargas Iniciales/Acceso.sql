
SET XACT_ABORT ON
SET ARITHABORT ON
GO


BEGIN TRANSACTION

DELETE Acceso


INSERT INTO [dbo].[Acceso] ([IdUsuario], [IdModulo], [IdOpcion], [FechaActualiza]) VALUES (1, 1, 1, getdate())
INSERT INTO [dbo].[Acceso] ([IdUsuario], [IdModulo], [IdOpcion], [FechaActualiza]) VALUES (1, 1, 2, getdate())
INSERT INTO [dbo].[Acceso] ([IdUsuario], [IdModulo], [IdOpcion], [FechaActualiza]) VALUES (1, 1, 3, getdate())
INSERT INTO [dbo].[Acceso] ([IdUsuario], [IdModulo], [IdOpcion], [FechaActualiza]) VALUES (1, 1, 4, getdate())
INSERT INTO [dbo].[Acceso] ([IdUsuario], [IdModulo], [IdOpcion], [FechaActualiza]) VALUES (1, 1, 5, getdate())
INSERT INTO [dbo].[Acceso] ([IdUsuario], [IdModulo], [IdOpcion], [FechaActualiza]) VALUES (1, 1, 6, getdate())
INSERT INTO [dbo].[Acceso] ([IdUsuario], [IdModulo], [IdOpcion], [FechaActualiza]) VALUES (1, 1, 7, getdate())
INSERT INTO [dbo].[Acceso] ([IdUsuario], [IdModulo], [IdOpcion], [FechaActualiza]) VALUES (1, 1, 8, getdate())
INSERT INTO [dbo].[Acceso] ([IdUsuario], [IdModulo], [IdOpcion], [FechaActualiza]) VALUES (1, 1, 9, getdate())
INSERT INTO [dbo].[Acceso] ([IdUsuario], [IdModulo], [IdOpcion], [FechaActualiza]) VALUES (1, 1, 10, getdate())
INSERT INTO [dbo].[Acceso] ([IdUsuario], [IdModulo], [IdOpcion], [FechaActualiza]) VALUES (1, 1, 11, getdate())
INSERT INTO [dbo].[Acceso] ([IdUsuario], [IdModulo], [IdOpcion], [FechaActualiza]) VALUES (1, 1, 12, getdate())
INSERT INTO [dbo].[Acceso] ([IdUsuario], [IdModulo], [IdOpcion], [FechaActualiza]) VALUES (1, 1, 13, getdate())
INSERT INTO [dbo].[Acceso] ([IdUsuario], [IdModulo], [IdOpcion], [FechaActualiza]) VALUES (1, 1, 14, getdate())
INSERT INTO [dbo].[Acceso] ([IdUsuario], [IdModulo], [IdOpcion], [FechaActualiza]) VALUES (1, 1, 15, getdate())
INSERT INTO [dbo].[Acceso] ([IdUsuario], [IdModulo], [IdOpcion], [FechaActualiza]) VALUES (1, 1, 16, getdate())


COMMIT TRANSACTION