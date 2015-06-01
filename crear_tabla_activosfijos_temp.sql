USE [EXACTUS]
GO

/****** Object:  Table [dbo].[activosfijos_temp]    Script Date: 5/15/2015 9:56:22 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[activosfijos_temp](
	[ano_saldo] [int] NULL,
	[mes_saldo] [int] NULL,
	[cuenta_contable_codigo] [nvarchar](100) NULL,
	[centro_costo_codigo] [nvarchar](100) NULL,
	[debito_fisc_local] [real] NULL,
	[debito_fisc_dolar] [real] NULL
) ON [PRIMARY]

GO


