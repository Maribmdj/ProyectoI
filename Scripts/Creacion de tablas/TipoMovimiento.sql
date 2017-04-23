USE [Proyecto]
GO

/****** Object:  Table [dbo].[TipoMovimiento]    Script Date: 21/4/2017 9:54:18 a. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TipoMovimiento](
	[ID] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[ECredito] [varchar](50) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[TipoMovimiento]  WITH CHECK ADD  CONSTRAINT [FK_TipoMovimiento_Movimiento] FOREIGN KEY([ID])
REFERENCES [dbo].[Movimiento] ([ID])
GO

ALTER TABLE [dbo].[TipoMovimiento] CHECK CONSTRAINT [FK_TipoMovimiento_Movimiento]
GO


