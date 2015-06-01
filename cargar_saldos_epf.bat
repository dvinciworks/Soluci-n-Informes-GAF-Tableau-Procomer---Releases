@ECHO OFF
ECHO Cargando tabla temporal saldos acumulados epf...
bcp "exec exactus.dbo.cargar_saldos_epf" queryout fout3.txt -c -t , -T -S JIMMYFIGUER7A21\SQLEXPRESS2

:theend
