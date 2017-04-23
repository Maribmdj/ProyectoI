USE [Proyecto]
GO

/****** Object:  Table [dbo].[Cuenta]    Script Date: 21/4/2017 9:48:34 a. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Cuenta](
	[ID] [int] NOT NULL,
	[FechaApertura] [datetime] NULL,
	[Saldo] [int] NULL,
 CONSTRAINT [PK_Cuenta] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


