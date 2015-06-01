USE [EXACTUS]
GO

/****** Object:  Table [dbo].[jimmy_saldos_acumulados_epf]    Script Date: 5/26/2015 7:52:18 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[jimmy_saldos_acumulados_epf2](
	[cuentacontablecodigo] [nvarchar](50) NULL,
	[moneda] [nvarchar](10) NULL,
	[mes_saldo] [int] NULL,
	[ano_saldo] [int] NULL,
	[creditofisclocal] [decimal] NULL,
	[debitofisclocal] [decimal] NULL,
	[cuenta_contable] [nvarchar](200) NULL
) ON [PRIMARY]

GO


