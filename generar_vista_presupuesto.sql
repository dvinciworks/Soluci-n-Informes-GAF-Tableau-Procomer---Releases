USE [EXACTUS]
GO
/****** Object:  StoredProcedure [dbo].[generar_vista_presupuesto]    Script Date: 05/18/2015 13:39:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
ALTER procedure [dbo].[generar_vista_presupuesto]
(
    @year       varchar(100),
    @month      varchar(100)
)
as
 
declare @sql nvarchar(4000)
 
--Generate column names in the passed EXCEL file
set @sql='delete from exactus.dbo.vista_presup_temp'
--exec(@sql)
EXEC Sp_executesql @sql;
 
set @sql='insert into exactus.dbo.vista_presup_temp  select * from exactus.procomer.detalle_presupuesto where ano_fecha >='+@year+' and mes_fecha <='+@month
--exec(@sql)
EXEC Sp_executesql @sql;
 
set @sql='select count(*) from exactus.dbo.vista_presup_temp'
EXEC Sp_executesql @sql;