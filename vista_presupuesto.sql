CREATE VIEW vista_presupuesto 
AS 
  ( SELECT partida, 
          centro_costo, 
          ano_fecha, 
          mes_fecha, 
		  'CRC' as moneda,
          Max(Replace(nombre_presupuesto, ',', ''))       AS nombre_presupuesto, 
          Max(presupuesto)                                AS presupuesto, 
          Max(periodo)                                    AS periodo, 
          Max(trimestre_fecha)                            AS trimestre_fecha, 
          Max(ano_mes_fecha)                              AS ano_mes_fecha, 
          Max(tipo_cambio)                                AS tipo_cambio, 
          Sum(monto_local)                                AS monto_local, 
          Sum(ampliacion_local)                           AS ampliacion_local, 
          Sum(reduccion_local)                            AS reduccion_local, 
          Sum(presupuestado_mes)                          AS persupuestado_mes, 
          Sum(presupuestado_acumulado)                    AS 
             presupuestado_acumulado, 
          Sum(diferencia_acumulado)                       AS 
          diferencia_acumulado, 
          Sum(diferencia_mes)                             AS diferencia_mes, 
          Sum(compr_local)                                AS compr_local, 
          Sum(ejedev_local)                               AS ejedev_local, 
          Sum(pagcob_local)                               AS pagcog_local, 
          Sum(gasto_real_mes)                             AS gasto_real_mes, 
          Sum(real_acumulado)                             AS real_acumulado, 
          Sum(disponible)                                 AS disponible, 
          Max(Replace(descripcion, ',', ''))              AS descripcion, 
          Max(Replace(partida_descripcion, ',', ''))      AS partida_descripcion 
          , 
          Max(Replace(centro_costo_descripcion, ',', '')) AS 
             centro_costo_descripcion, 
          Max(Replace(agrupacion_1, ',', ''))             AS agrupacion_1, 
          Max(Replace(agrupacion_2, ',', ''))             AS agrupacion_2, 
          Max(Replace(agrupacion_3, ',', ''))             AS agrupacion_3, 
          Sum(monto_dolar)                                AS monto_dolar, 
          Avg(ampliacion_dolar)                           AS ampliacion_dolar, 
          Sum(reduccion_dolar)                            AS reduccion_dolar, 
          Sum(presupuestado_mes)                          AS presupuestado_mes, 
          Sum(presupuestado_mes_dolar)                    AS 
             presupuestado_mes_dolar, 
          Sum(presupuestado_acumulado_dolar)              AS 
             presupuestado_acumulado_dolar, 
          Sum(diferencia_acumulado_dolar)                 AS 
             diferencia_acumulado_dolar, 
          Sum(diferencia_mes_dolar)                       AS 
          diferencia_mes_dolar, 
          Sum(compr_dolar)                                AS compr_dolar, 
          Sum(ejedev_dolar)                               AS ejedev_dolar, 
          Sum(pagcob_local)                               AS pagcob_local, 
          Sum(pagcob_dolar)                               AS pagcob_dolar, 
          Sum(gasto_real_mes_dolar)                       AS 
          gasto_real_mes_dolar, 
          Sum(real_acumulado_dolar)                       AS 
          real_acumulado_dolar, 
          Sum(disponible_dolar)                           AS disponible_dolar 
   FROM   exactus.dbo.vista_presup_temp 
   GROUP  BY partida, 
             centro_costo, 
             ano_fecha, 
             mes_fecha
 UNION ALL
 SELECT partida, 
          centro_costo, 
          ano_fecha, 
          mes_fecha, 
		  'USD' as moneda,
          Max(Replace(nombre_presupuesto, ',', ''))       AS nombre_presupuesto, 
          Max(presupuesto)                                AS presupuesto, 
          Max(periodo)                                    AS periodo, 
          Max(trimestre_fecha)                            AS trimestre_fecha, 
          Max(ano_mes_fecha)                              AS ano_mes_fecha, 
          Max(tipo_cambio)                                AS tipo_cambio, 
          Sum(monto_local/tc.t_cambio)                                AS monto_local, 
          Sum(ampliacion_local/tc.t_cambio)                           AS ampliacion_local, 
          Sum(reduccion_local/tc.t_cambio)                            AS reduccion_local, 
          Sum(presupuestado_mes)                          AS persupuestado_mes, 
          Sum(presupuestado_acumulado)                    AS 
             presupuestado_acumulado, 
          Sum(diferencia_acumulado)                       AS 
          diferencia_acumulado, 
          Sum(diferencia_mes)                             AS diferencia_mes, 
          Sum(compr_local)                                AS compr_local, 
          Sum(ejedev_local)                               AS ejedev_local, 
          Sum(pagcob_local)                               AS pagcog_local, 
          Sum(gasto_real_mes)                             AS gasto_real_mes, 
          Sum(real_acumulado)                             AS real_acumulado, 
          Sum(disponible)                                 AS disponible, 
          Max(Replace(descripcion, ',', ''))              AS descripcion, 
          Max(Replace(partida_descripcion, ',', ''))      AS partida_descripcion 
          , 
          Max(Replace(centro_costo_descripcion, ',', '')) AS 
             centro_costo_descripcion, 
          Max(Replace(agrupacion_1, ',', ''))             AS agrupacion_1, 
          Max(Replace(agrupacion_2, ',', ''))             AS agrupacion_2, 
          Max(Replace(agrupacion_3, ',', ''))             AS agrupacion_3, 
          Sum(monto_dolar)                                AS monto_dolar, 
          Avg(ampliacion_dolar)                           AS ampliacion_dolar, 
          Sum(reduccion_dolar)                            AS reduccion_dolar, 
          Sum(presupuestado_mes)                          AS presupuestado_mes, 
          Sum(presupuestado_mes_dolar)                    AS 
             presupuestado_mes_dolar, 
          Sum(presupuestado_acumulado_dolar)              AS 
             presupuestado_acumulado_dolar, 
          Sum(diferencia_acumulado_dolar)                 AS 
             diferencia_acumulado_dolar, 
          Sum(diferencia_mes_dolar)                       AS 
          diferencia_mes_dolar, 
          Sum(compr_dolar)                                AS compr_dolar, 
          Sum(ejedev_dolar)                               AS ejedev_dolar, 
          Sum(pagcob_local)                               AS pagcob_local, 
          Sum(pagcob_dolar)                               AS pagcob_dolar, 
          Sum(gasto_real_mes_dolar)                       AS 
          gasto_real_mes_dolar, 
          Sum(real_acumulado_dolar)                       AS 
          real_acumulado_dolar, 
          Sum(disponible_dolar)                           AS disponible_dolar 
   FROM   exactus.dbo.vista_presup_temp 
   JOIN  (select ano, mes, tipo_cambio as t_cambio from exactus.dbo.jimmy_tipos_cambio) tc ON (
                                                exactus.dbo.vista_presup_temp.ANO_FECHA = tc.ano
												AND
												exactus.dbo.vista_presup_temp.MES_FECHA = tc.mes
											   )
   GROUP  BY partida, 
             centro_costo, 
             ano_fecha, 
             mes_fecha) 