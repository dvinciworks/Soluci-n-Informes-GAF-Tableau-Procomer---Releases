USE [EXACTUS]
GO
/****** Object:  StoredProcedure [dbo].[generar_vista_presupuesto]    Script Date: 5/9/2015 12:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter procedure [dbo].[cargar_tipo_cambio]
(
    @year       varchar(100),
    @month      varchar(100),
	@tc         varchar(100)
)
as

declare @sql nvarchar(4000)

set @sql='delete from exactus.dbo.jimmy_tipos_cambio where ano='+@year+'+1 and mes='+@month
--exec(@sql)
EXEC Sp_executesql @sql; 

set @sql='insert into exactus.dbo.jimmy_tipos_cambio (ano,mes,tipo_cambio) values ('+@year+'+1, '+@month+', '+@tc+')'
--exec(@sql)
EXEC Sp_executesql @sql; 

set @sql='select count(*) conteo from exactus.dbo.jimmy_tipos_cambio'
EXEC Sp_executesql @sql; 