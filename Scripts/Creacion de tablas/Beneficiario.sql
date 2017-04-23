USE [Proyecto]
GO

/****** Object:  Table [dbo].[Benificiario]    Script Date: 21/4/2017 9:45:03 a. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Benificiario](
	[ID] [int] NOT NULL,
	[FechaDeInicio] [datetime] NULL,
	[FechaDeCierre] [datetime] NULL,
 CONSTRAINT [PK_Benificiario] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Benificiario]  WITH CHECK ADD  CONSTRAINT [FK_Benificiario_Cuenta] FOREIGN KEY([ID])
REFERENCES [dbo].[Cuenta] ([ID])
GO

ALTER TABLE [dbo].[Benificiario] CHECK CONSTRAINT [FK_Benificiario_Cuenta]
GO

ALTER TABLE [dbo].[Benificiario]  WITH CHECK ADD  CONSTRAINT [FK_Benificiario_Persona] FOREIGN KEY([ID])
REFERENCES [dbo].[Persona] ([ID])
GO

ALTER TABLE [dbo].[Benificiario] CHECK CONSTRAINT [FK_Benificiario_Persona]
GO


