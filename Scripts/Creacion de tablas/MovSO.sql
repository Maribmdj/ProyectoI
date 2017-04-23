USE [Proyecto]
GO

/****** Object:  Table [dbo].[MovS.O.]    Script Date: 21/4/2017 9:50:17 a. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[MovS.O.](
	[ID] [int] NOT NULL,
	[Fecha] [datetime] NULL,
	[Monto] [int] NULL,
 CONSTRAINT [PK_MovS.O.] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[MovS.O.]  WITH CHECK ADD  CONSTRAINT [FK_MovS.O._SaldoCuentaObjetivo] FOREIGN KEY([ID])
REFERENCES [dbo].[SaldoCuentaObjetivo] ([ID])
GO

ALTER TABLE [dbo].[MovS.O.] CHECK CONSTRAINT [FK_MovS.O._SaldoCuentaObjetivo]
GO


