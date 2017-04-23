USE [Proyecto]
GO

/****** Object:  Table [dbo].[SaldoCuentaObjetivo]    Script Date: 21/4/2017 9:51:53 a. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SaldoCuentaObjetivo](
	[ID] [int] NOT NULL,
	[FechaInicio] [int] NULL,
	[FechaFin] [int] NULL,
	[DiaDeAporte] [datetime] NULL,
	[DescripcionObjetivo] [text] NULL,
	[Saldo] [int] NULL,
	[SaldoInteresAcumulado] [int] NULL,
	[MontoAporte] [int] NULL,
 CONSTRAINT [PK_SaldoCuentaObjetivo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

ALTER TABLE [dbo].[SaldoCuentaObjetivo]  WITH CHECK ADD  CONSTRAINT [FK_SaldoCuentaObjetivo_Cuenta] FOREIGN KEY([Saldo])
REFERENCES [dbo].[Cuenta] ([ID])
GO

ALTER TABLE [dbo].[SaldoCuentaObjetivo] CHECK CONSTRAINT [FK_SaldoCuentaObjetivo_Cuenta]
GO


