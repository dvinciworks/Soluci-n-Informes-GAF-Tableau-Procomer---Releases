@ECHO OFF

:loop
IF NOT "%1"=="" (
    IF "%1"=="-a" (
        SET year=%2
        SHIFT
    )
    IF "%1"=="-m" (
        SET month=%2
        SHIFT
    )
    IF "%1"=="-t" (
        SET tipo_cambio=%2
        SHIFT
    )
    SHIFT
    GOTO :loop
)

ECHO Anio = %year%
ECHO Mes = %month%
ECHO Tipo Cambio Mes = %tipo_cambio%
ECHO 

ECHO Cargando tipo de cambio del mes ...
bcp "exec exactus.dbo.cargar_tipo_cambio %year%, %month%, %tipo_cambio%" queryout fout_tc.txt -c -t , -T -S JIMMYFIGUER7A21\SQLEXPRESS2
ECHO

:theend
