USE [Proyecto]
GO

/****** Object:  Table [dbo].[Moneda]    Script Date: 21/4/2017 9:49:05 a. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Moneda](
	[ID] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Simbolo] [varchar](50) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Moneda]  WITH CHECK ADD  CONSTRAINT [FK_Moneda_TipoDeCuenta] FOREIGN KEY([ID])
REFERENCES [dbo].[TipoDeCuenta] ([ID])
GO

ALTER TABLE [dbo].[Moneda] CHECK CONSTRAINT [FK_Moneda_TipoDeCuenta]
GO


