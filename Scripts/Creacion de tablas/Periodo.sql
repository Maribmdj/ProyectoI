USE [Proyecto]
GO

/****** Object:  Table [dbo].[Periodo]    Script Date: 21/4/2017 9:51:35 a. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Periodo](
	[ID] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[TransAnual] [int] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Periodo]  WITH CHECK ADD  CONSTRAINT [FK_Periodo_SaldoCuentaObjetivo] FOREIGN KEY([ID])
REFERENCES [dbo].[SaldoCuentaObjetivo] ([ID])
GO

ALTER TABLE [dbo].[Periodo] CHECK CONSTRAINT [FK_Periodo_SaldoCuentaObjetivo]
GO


