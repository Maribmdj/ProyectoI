USE [Proyecto]
GO

/****** Object:  Table [dbo].[TipoDeCuenta]    Script Date: 21/4/2017 9:53:15 a. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TipoDeCuenta](
	[ID] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[SaldoMinimo] [int] NULL,
	[MultaSalLiquido] [varchar](50) NULL,
	[MuiltaCajHumano] [varchar](50) NULL,
	[QmaxSetCajHumano] [nchar](10) NULL,
 CONSTRAINT [PK_TipoDeCuenta] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[TipoDeCuenta]  WITH CHECK ADD  CONSTRAINT [FK_TipoDeCuenta_Cuenta] FOREIGN KEY([SaldoMinimo])
REFERENCES [dbo].[Cuenta] ([ID])
GO

ALTER TABLE [dbo].[TipoDeCuenta] CHECK CONSTRAINT [FK_TipoDeCuenta_Cuenta]
GO


