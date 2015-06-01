USE [EXACTUS]
GO

/****** Object:  Table [dbo].[vista_presup_temp]    Script Date: 5/9/2015 4:45:59 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING OFF
GO

CREATE TABLE [dbo].[vista_presup_temp](
	[NOMBRE_PRESUPUESTO] [varchar](40) NOT NULL,
	[PRESUPUESTO] [varchar](20) NOT NULL,
	[PARTIDA] [varchar](25) NOT NULL,
	[PERIODO] [datetime] NOT NULL,
	[ANO_FECHA] [int] NULL,
	[TRIMESTRE_FECHA] [int] NULL
) ON [PRIMARY]
SET ANSI_PADDING ON
ALTER TABLE [dbo].[vista_presup_temp] ADD [MES_FECHA] [varchar](2) NULL
ALTER TABLE [dbo].[vista_presup_temp] ADD [ANO_MES_FECHA] [varchar](33) NULL
ALTER TABLE [dbo].[vista_presup_temp] ADD [TIPO_CAMBIO] [decimal](28, 8) NULL
ALTER TABLE [dbo].[vista_presup_temp] ADD [MONTO_LOCAL] [decimal](38, 7) NULL
ALTER TABLE [dbo].[vista_presup_temp] ADD [AMPLIACION_LOCAL] [decimal](38, 7) NULL
ALTER TABLE [dbo].[vista_presup_temp] ADD [REDUCCION_LOCAL] [decimal](38, 7) NULL
ALTER TABLE [dbo].[vista_presup_temp] ADD [PRESUPUESTADO_MES] [decimal](38, 6) NULL
ALTER TABLE [dbo].[vista_presup_temp] ADD [PRESUPUESTADO_ACUMULADO] [float] NULL
ALTER TABLE [dbo].[vista_presup_temp] ADD [DIFERENCIA_ACUMULADO] [float] NULL
ALTER TABLE [dbo].[vista_presup_temp] ADD [DIFERENCIA_MES] [float] NULL
ALTER TABLE [dbo].[vista_presup_temp] ADD [COMPR_LOCAL] [decimal](38, 7) NULL
ALTER TABLE [dbo].[vista_presup_temp] ADD [EJEDEV_LOCAL] [decimal](38, 7) NULL
ALTER TABLE [dbo].[vista_presup_temp] ADD [PAGCOB_LOCAL] [decimal](38, 7) NULL
ALTER TABLE [dbo].[vista_presup_temp] ADD [GASTO_REAL_MES] [float] NULL
ALTER TABLE [dbo].[vista_presup_temp] ADD [REAL_ACUMULADO] [float] NULL
ALTER TABLE [dbo].[vista_presup_temp] ADD [DISPONIBLE] [decimal](38, 6) NULL
SET ANSI_PADDING OFF
ALTER TABLE [dbo].[vista_presup_temp] ADD [DESCRIPCION] [varchar](40) NOT NULL
SET ANSI_PADDING ON
ALTER TABLE [dbo].[vista_presup_temp] ADD [PARTIDA_DESCRIPCION] [varchar](200) NOT NULL
SET ANSI_PADDING OFF
ALTER TABLE [dbo].[vista_presup_temp] ADD [CENTRO_COSTO] [varchar](25) NOT NULL
SET ANSI_PADDING ON
ALTER TABLE [dbo].[vista_presup_temp] ADD [CENTRO_COSTO_DESCRIPCION] [varchar](200) NOT NULL
ALTER TABLE [dbo].[vista_presup_temp] ADD [AGRUPACION_1] [varchar](100) NULL
ALTER TABLE [dbo].[vista_presup_temp] ADD [AGRUPACION_2] [varchar](100) NULL
ALTER TABLE [dbo].[vista_presup_temp] ADD [AGRUPACION_3] [varchar](100) NULL
ALTER TABLE [dbo].[vista_presup_temp] ADD [MONTO_DOLAR] [decimal](38, 6) NULL
ALTER TABLE [dbo].[vista_presup_temp] ADD [AMPLIACION_DOLAR] [decimal](38, 6) NULL
ALTER TABLE [dbo].[vista_presup_temp] ADD [REDUCCION_DOLAR] [decimal](38, 6) NULL
ALTER TABLE [dbo].[vista_presup_temp] ADD [PRESUPUESTADO_MES_DOLAR] [decimal](38, 6) NULL
ALTER TABLE [dbo].[vista_presup_temp] ADD [PRESUPUESTADO_ACUMULADO_DOLAR] [float] NULL
ALTER TABLE [dbo].[vista_presup_temp] ADD [DIFERENCIA_ACUMULADO_DOLAR] [float] NULL
ALTER TABLE [dbo].[vista_presup_temp] ADD [DIFERENCIA_MES_DOLAR] [float] NULL
ALTER TABLE [dbo].[vista_presup_temp] ADD [COMPR_DOLAR] [decimal](38, 6) NULL
ALTER TABLE [dbo].[vista_presup_temp] ADD [EJEDEV_DOLAR] [decimal](38, 6) NULL
ALTER TABLE [dbo].[vista_presup_temp] ADD [PAGCOB_DOLAR] [decimal](38, 6) NULL
ALTER TABLE [dbo].[vista_presup_temp] ADD [GASTO_REAL_MES_DOLAR] [float] NULL
ALTER TABLE [dbo].[vista_presup_temp] ADD [REAL_ACUMULADO_DOLAR] [float] NULL
ALTER TABLE [dbo].[vista_presup_temp] ADD [DISPONIBLE_DOLAR] [decimal](38, 6) NULL

GO

SET ANSI_PADDING OFF
GO


