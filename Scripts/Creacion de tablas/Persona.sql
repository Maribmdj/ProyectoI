USE [Proyecto]
GO

/****** Object:  Table [dbo].[Persona]    Script Date: 21/4/2017 9:51:44 a. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Persona](
	[ID] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[ValorDel_ID] [int] NULL,
	[FechaNacimiento] [datetime] NULL,
	[Tel1] [int] NULL,
	[Tel2] [int] NULL,
	[email] [varchar](50) NULL,
	[UsuarioClave] [varchar](50) NULL,
 CONSTRAINT [PK_Persona] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Persona]  WITH CHECK ADD  CONSTRAINT [FK_Persona_Tipo Doc Id] FOREIGN KEY([ValorDel_ID])
REFERENCES [dbo].[TipoDocId] ([ID])
GO

ALTER TABLE [dbo].[Persona] CHECK CONSTRAINT [FK_Persona_Tipo Doc Id]
GO


