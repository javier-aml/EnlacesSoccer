USE [TorneoDeacero]
GO
/****** Object:  Table [dbo].[Acceso]    Script Date: 08/31/2011 09:54:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Acceso](
	[IdUsuario] [tinyint] NOT NULL,
	[IdModulo] [tinyint] NOT NULL,
	[IdOpcion] [tinyint] NOT NULL,
	[FechaActualiza] [smalldatetime] NULL,
 CONSTRAINT [PK_Acceso] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC,
	[IdModulo] ASC,
	[IdOpcion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
