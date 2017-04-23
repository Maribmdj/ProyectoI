USE [Proyecto]
GO

/****** Object:  Table [dbo].[Movim]    Script Date: 21/4/2017 9:49:15 a. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Movim](
	[ID] [int] NOT NULL,
	[Fecha] [datetime] NULL,
	[Monto] [int] NULL,
 CONSTRAINT [PK_Movim] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Movim]  WITH CHECK ADD  CONSTRAINT [FK_Movim_SaldoCuentaObjetivo] FOREIGN KEY([ID])
REFERENCES [dbo].[SaldoCuentaObjetivo] ([ID])
GO

ALTER TABLE [dbo].[Movim] CHECK CONSTRAINT [FK_Movim_SaldoCuentaObjetivo]
GO


