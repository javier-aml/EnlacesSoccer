USE [EnlacesSoccer]
GO

begin tran

select * from [dbo].[TipoTorneo]

INSERT INTO [dbo].[TipoTorneo]
           ([IdTipoTorneo]
           ,[Descripcion]
		   ,[Activo]
           ,[FechaUltimaMod]
           ,[NombrePcMod]
           ,[ClaUsuarioMod])
select IdTipoTorneo = 1,Descripcion ='Soccer', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdTipoTorneo = 2,Descripcion ='Fut 7', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdTipoTorneo = 3,Descripcion ='Fut 9', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdTipoTorneo = 4,Descripcion ='Fut 6', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdTipoTorneo = 5,Descripcion ='Fut 5', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 
GO

select * from [dbo].[TipoTorneo]


commit tran