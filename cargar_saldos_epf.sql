USE [EXACTUS]
GO
/****** Object:  StoredProcedure [dbo].[cargar_tipo_cambio]    Script Date: 5/14/2015 7:07:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[cargar_saldos_epf]
as

declare @sql nvarchar(4000)

set @sql='delete from exactus.dbo.jimmy_saldos_acumulados_epf'
--exec(@sql)
EXEC Sp_executesql @sql; 

set @sql='BULK INSERT exactus.dbo.jimmy_saldos_acumulados_epf FROM ''c:\soluciontableau\saldos_epf.csv'' with (firstrow = 2, FIELDTERMINATOR = '','', ROWTERMINATOR = ''\n'' )'
--exec(@sql)
EXEC Sp_executesql @sql; 

set @sql='select count(*) conteo from exactus.dbo.jimmy_saldos_acumulados_epf'
EXEC Sp_executesql @sql; 