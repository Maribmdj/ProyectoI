USE [Proyecto]
GO

/****** Object:  Table [dbo].[EstadoDeCuenta]    Script Date: 21/4/2017 9:48:58 a. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[EstadoDeCuenta](
	[ID] [int] NOT NULL,
	[FechaInicio] [datetime] NULL,
	[FechaFinal] [datetime] NULL,
	[SaldoInicio] [int] NULL,
	[SaldoFinal] [int] NULL,
	[RetirosManuales] [int] NULL,
	[SaldoMinimo] [int] NULL
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[EstadoDeCuenta]  WITH CHECK ADD  CONSTRAINT [FK_EstadoDeCuenta_Cuenta] FOREIGN KEY([SaldoInicio])
REFERENCES [dbo].[Cuenta] ([ID])
GO

ALTER TABLE [dbo].[EstadoDeCuenta] CHECK CONSTRAINT [FK_EstadoDeCuenta_Cuenta]
GO


