USE [Proyecto]
GO

/****** Object:  Table [dbo].[Parentesco]    Script Date: 21/4/2017 9:50:27 a. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Parentesco](
	[ID] [int] NOT NULL,
	[Nombre] [varchar](50) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Parentesco]  WITH CHECK ADD  CONSTRAINT [FK_Parentesco_Benificiario] FOREIGN KEY([ID])
REFERENCES [dbo].[Benificiario] ([ID])
GO

ALTER TABLE [dbo].[Parentesco] CHECK CONSTRAINT [FK_Parentesco_Benificiario]
GO


