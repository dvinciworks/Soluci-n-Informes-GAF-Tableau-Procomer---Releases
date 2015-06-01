@ECHO OFF
ECHO Cargando tabla temporal activos fijos ...
bcp "exec exactus.dbo.cargar_fichero_activosfijos" queryout fout2.txt -c -t , -T -S JIMMYFIGUER7A21\SQLEXPRESS2

:theend
