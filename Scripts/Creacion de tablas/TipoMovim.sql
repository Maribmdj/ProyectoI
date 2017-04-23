USE [Proyecto]
GO

/****** Object:  Table [dbo].[TipoMovim]    Script Date: 21/4/2017 9:53:28 a. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TipoMovim](
	[ID] [int] NOT NULL,
	[Nombre] [varchar](50) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[TipoMovim]  WITH CHECK ADD  CONSTRAINT [FK_TipoMovim_Movim] FOREIGN KEY([ID])
REFERENCES [dbo].[Movim] ([ID])
GO

ALTER TABLE [dbo].[TipoMovim] CHECK CONSTRAINT [FK_TipoMovim_Movim]
GO


