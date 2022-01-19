
SET XACT_ABORT ON
SET ARITHABORT ON
GO

BEGIN TRANSACTION

INSERT INTO [dbo].[Usuario] ([IdUsuario], [NombreUsuario], [Login], [Password], [Clave], [Activo], [FechaUltimaMod], [NombrePcMod], [ClaUsuarioMod]) 
VALUES (1, 'Michael', 'ADMINISTRADOR', 'yURTLm3o73gtQlaV5ed35Q==', 'DcubIOtM77tvCCCOcUiBsf/w7WTNpfXhAiQcehuTVHk=', 1, GETDATE(), 'DCSAARODRIGUEZ', 0)

COMMIT TRANSACTION