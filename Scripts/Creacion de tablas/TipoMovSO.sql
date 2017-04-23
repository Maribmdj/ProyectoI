USE [Proyecto]
GO

/****** Object:  Table [dbo].[TipoMovS.O.]    Script Date: 21/4/2017 9:54:26 a. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TipoMovS.O.](
	[ID] [int] NULL,
	[Nombre] [varchar](50) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[TipoMovS.O.]  WITH CHECK ADD  CONSTRAINT [FK_TipoMovS.O._MovS.O.] FOREIGN KEY([ID])
REFERENCES [dbo].[MovS.O.] ([ID])
GO

ALTER TABLE [dbo].[TipoMovS.O.] CHECK CONSTRAINT [FK_TipoMovS.O._MovS.O.]
GO


