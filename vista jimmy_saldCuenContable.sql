DROP VIEW jimmy_saldcuencontable 

CREATE VIEW jimmy_saldcuencontable 
AS 
  (SELECT cen_cos.centro_costo         AS CentroCostoCodigo, 
          cue_con.cuenta_contable      AS CuentaContableCodigo, 
          cen_cos.descripcion          AS centro_costo, 
          cue_con.descripcion          AS cuenta_contable, 
          cue_con.tipo                 AS tipo_cuenta, 
          cue_con.tipo_detallado       AS subtipo_cuenta, 
          cue_con.saldo_normal, 
          CONVERT(CHAR(11), sal.fecha) AS fecha_saldo, 
          Datepart(month, sal.fecha)   AS mes_saldo, 
          Datepart(quarter, sal.fecha) AS trimestre_saldo, 
          Datepart(year, sal.fecha)    AS ano_saldo, 
          CASE cue_con.saldo_normal 
            WHEN 'D' THEN sal.saldo_fisc_local - sal.debito_fisc_local + 
                          sal.credito_fisc_local 
            ELSE sal.saldo_fisc_local 
                 + sal.debito_fisc_local - sal.credito_fisc_local 
          END                          AS saldoIniFiscalLocal, 
          sal.debito_fisc_local        AS debitoFiscLocal, 
          sal.credito_fisc_local       AS creditoFiscLocal, 
          sal.saldo_fisc_local         AS saldoFiscLocal, 
          CASE cue_con.saldo_normal 
            WHEN 'D' THEN sal.saldo_fisc_dolar - sal.debito_fisc_dolar + 
                          sal.credito_fisc_dolar 
            ELSE sal.saldo_fisc_dolar 
                 + sal.debito_fisc_dolar - sal.credito_fisc_dolar 
          END                          AS saldoIniFiscalDolar, 
          sal.credito_fisc_dolar       AS creditoFiscDolar, 
          sal.saldo_fisc_dolar         AS saldoFiscDolar, 
          sal.debito_fisc_dolar        AS debitoFiscDolar 
   FROM   procomer.saldo AS sal 
          INNER JOIN procomer.centro_costo AS cen_cos 
                  ON sal.centro_costo = cen_cos.centro_costo 
          INNER JOIN procomer.cuenta_contable AS cue_con 
                  ON sal.cuenta_contable = cue_con.cuenta_contable) 