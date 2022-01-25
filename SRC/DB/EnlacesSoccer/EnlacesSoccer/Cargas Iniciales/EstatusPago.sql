USE [EnlacesSoccer]
GO

begin tran

select * from [dbo].[EstatusPago]

INSERT INTO [dbo].[EstatusPago]
           ([IdEstatusPago]
           ,[Descripcion]
           ,[Activo]
           ,[FechaUltimaMod]
           ,[NombrePcMod]
           ,[ClaUsuarioMod])
select IdEstatusPago = 1,Descripcion ='Pendiente', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdEstatusPago = 2,Descripcion ='En Proceso', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdEstatusPago = 3,Descripcion ='Pagado', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 union all
select IdEstatusPago = 4,Descripcion ='Rechazado', Activo = 1, FechaUltimaMod = GETDATE(), NombrePcMod = 'Carga Inicial', ClaUsuarioMod = 1 
GO


select * from [dbo].[EstatusPago]


commit tran