USE [Proyecto]
GO

/****** Object:  Table [dbo].[Movimiento]    Script Date: 21/4/2017 9:51:09 a. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Movimiento](
	[ID] [int] NOT NULL,
	[FechaMovimiento] [datetime] NULL,
	[Monto] [int] NULL,
	[Descripcion] [text] NULL,
	[NuelvoSaldo] [int] NULL,
 CONSTRAINT [PK_Movimiento] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

ALTER TABLE [dbo].[Movimiento]  WITH CHECK ADD  CONSTRAINT [FK_Movimiento_Cuenta] FOREIGN KEY([Monto])
REFERENCES [dbo].[Cuenta] ([ID])
GO

ALTER TABLE [dbo].[Movimiento] CHECK CONSTRAINT [FK_Movimiento_Cuenta]
GO


