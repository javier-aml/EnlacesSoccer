
SET XACT_ABORT ON
SET ARITHABORT ON
GO


BEGIN TRANSACTION

INSERT INTO [dbo].[Jugador] ([IdJugador], [Nombre], [Activo], [FechaUltimaMod], [NombrePcMod], [ClaUsuarioMod]) VALUES (1, 'AS YA MODIFICADO OTRA VEZ', 0, GETDATE(), 'DCSAARODRIGUEZ', 1)
INSERT INTO [dbo].[Jugador] ([IdJugador], [Nombre], [Activo], [FechaUltimaMod], [NombrePcMod], [ClaUsuarioMod]) VALUES (2, 'ARTURO ALFONSO RODRIGUEZ ABUDSDSD', 1, GETDATE(), 'DCSAARODRIGUEZ', 1)
INSERT INTO [dbo].[Jugador] ([IdJugador], [Nombre], [Activo], [FechaUltimaMod], [NombrePcMod], [ClaUsuarioMod]) VALUES (3, 'JESUS MARTIN CS', 1, GETDATE(), 'DCSAARODRIGUEZ', 1)
INSERT INTO [dbo].[Jugador] ([IdJugador], [Nombre], [Activo], [FechaUltimaMod], [NombrePcMod], [ClaUsuarioMod]) VALUES (4, 'JORGE ALBERTO SANCHEZ JASSO', 1, GETDATE(), 'DCSAARODRIGUEZ', 1)
INSERT INTO [dbo].[Jugador] ([IdJugador], [Nombre], [Activo], [FechaUltimaMod], [NombrePcMod], [ClaUsuarioMod]) VALUES (5, 'NUEVO JUGADOR PARA DAR DE BAJA', 0, GETDATE(), 'DCSAARODRIGUEZ', 1)
INSERT INTO [dbo].[Jugador] ([IdJugador], [Nombre], [Activo], [FechaUltimaMod], [NombrePcMod], [ClaUsuarioMod]) VALUES (6, 'NUEVO SDSD', 0, GETDATE(), 'DCSAARODRIGUEZ', 1)
INSERT INTO [dbo].[Jugador] ([IdJugador], [Nombre], [Activo], [FechaUltimaMod], [NombrePcMod], [ClaUsuarioMod]) VALUES (7, 'OTRO JUGADOR', 1, GETDATE(), 'DCSAARODRIGUEZ', 1)


COMMIT TRANSACTION