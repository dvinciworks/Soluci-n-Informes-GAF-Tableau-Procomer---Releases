USE [EXACTUS]
GO
/******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[cargar_fichero_activosfijos]

as

declare @sql nvarchar(4000)

--Borrar filas de tabla temporal de activosfijos
set @sql='delete from exactus.dbo.activosfijos_temp'
--exec(@sql)
EXEC Sp_executesql @sql;

set @sql='BULK INSERT exactus.dbo.activosfijos_temp FROM ''c:\soluciontableau\activosfijos.csv'' with (firstrow = 2, FIELDTERMINATOR = '','', ROWTERMINATOR = ''\n'' )'
--exec(@sql)
EXEC Sp_executesql @sql;

set @sql='select count(*)  from exactus.dbo.activosfijos_temp'
EXEC Sp_executesql @sql;
