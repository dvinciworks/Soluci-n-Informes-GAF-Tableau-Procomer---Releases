USE [EXACTUS]
GO
drop view [dbo].[presup_and_real] 
/****** Object:  View [dbo].[presup_and_real]    Script Date: 5/26/2015 9:25:52 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[presup_and_real] 
AS 
  (SELECT 
          case 
		    when r.centrocostocodigo is null then p.centro_costo
			else r.centrocostocodigo
		  end as centrocostocodigo, 
          case 
		    when r.cuentacontablecodigo  is null then p.partida
			else r.cuentacontablecodigo 
		  end as cuentacontablecodigo, 
          case 
		    when  r.centro_costo  is null then p.centro_costo_descripcion
			else  r.centro_costo 
		  end AS centro_costo_desc, 
          case 
		    when r.cuenta_contable  is null then p.partida_descripcion
			else r.cuenta_contable 
		  end AS cuenta_contable, 
		  'CRC' as moneda,
          r.tipo_cuenta, 
          r.subtipo_cuenta, 
          r.saldo_normal, 
          r.fecha_saldo, 
          case 
		    when r.mes_saldo  is null then p.mes_fecha
			else r.mes_saldo 
		  end AS mes_saldo, 
          r.trimestre_saldo, 
          case 
		    when r.ano_saldo  is null then p.ano_fecha
			else r.ano_saldo 
		  end AS ano_saldo, 
          r.saldoinifiscallocal, 
          case 
		    when r.debitofisclocal  is null then 0.0
			else r.debitofisclocal 
		  end AS debitofisclocal, 
          case 
		    when r.creditofisclocal  is null then 0.0
			else r.creditofisclocal 
		  end AS creditofisclocal, 
          r.saldofisclocal, 
          r.saldoinifiscaldolar, 
          r.creditofiscdolar, 
          r.saldofiscdolar, 
          p.partida, 
          p.centro_costo, 
          p.ano_fecha, 
          p.mes_fecha, 
          p.nombre_presupuesto, 
          p.presupuesto, 
          p.periodo, 
          p.trimestre_fecha, 
          p.ano_mes_fecha, 
          p.tipo_cambio, 
          p.monto_local, 
          p.ampliacion_local, 
          p.reduccion_local, 
          p.presupuestado_mes, 
          p.presupuestado_acumulado, 
          p.diferencia_acumulado, 
          p.diferencia_mes, 
          p.compr_local, 
          p.ejedev_local, 
          p.pagcob_local, 
          p.gasto_real_mes, 
          p.real_acumulado, 
          p.disponible, 
          p.descripcion, 
          p.partida_descripcion, 
          p.centro_costo_descripcion, 
          p.agrupacion_1, 
          p.agrupacion_2, 
          p.agrupacion_3, 
          p.monto_dolar, 
          p.ampliacion_dolar, 
          p.reduccion_dolar, 
          p.presupuestado_mes_dolar, 
          p.presupuestado_acumulado_dolar, 
          p.diferencia_acumulado_dolar, 
          p.diferencia_mes_dolar, 
          p.compr_dolar, 
          p.ejedev_dolar, 
          p.pagcob_dolar, 
          p.gasto_real_mes_dolar, 
          p.real_acumulado_dolar, 
          p.disponible_dolar 
   FROM   vistal_real r 
          FULL OUTER JOIN (SELECT * 
                           FROM   vista_presupuesto where moneda = 'CRC') p 
                       ON ( r.ano_saldo = p.ano_fecha 
                            AND r.mes_saldo = p.mes_fecha 
                            AND r.centrocostocodigo = p.centro_costo 
                            AND r.cuentacontablecodigo = p.partida
							AND r.moneda = p.moneda
							)
where r.moneda = 'CRC' or r.moneda is null
union all
SELECT 
          case 
		    when r.centrocostocodigo is null then p.centro_costo
			else r.centrocostocodigo
		  end as centrocostocodigo, 
          case 
		    when r.cuentacontablecodigo  is null then p.partida
			else r.cuentacontablecodigo 
		  end as cuentacontablecodigo, 
          case 
		    when  r.centro_costo  is null then p.centro_costo_descripcion
			else  r.centro_costo 
		  end AS centro_costo_desc, 
          case 
		    when r.cuenta_contable  is null then p.partida_descripcion
			else r.cuenta_contable 
		  end AS cuenta_contable, 
		  'USD' as moneda,
          r.tipo_cuenta, 
          r.subtipo_cuenta, 
          r.saldo_normal, 
          r.fecha_saldo, 
          case 
		    when r.mes_saldo  is null then p.mes_fecha
			else r.mes_saldo 
		  end AS mes_saldo, 
          r.trimestre_saldo, 
          case 
		    when r.ano_saldo  is null then p.ano_fecha
			else r.ano_saldo 
		  end AS ano_saldo, 
          r.saldoinifiscallocal, 
          case 
		    when r.debitofisclocal  is null then 0.0
			else r.debitofisclocal 
		  end AS debitofisclocal, 
          case 
		    when r.creditofisclocal  is null then 0.0
			else r.creditofisclocal 
		  end AS creditofisclocal, 
          r.saldofisclocal, 
          r.saldoinifiscaldolar, 
          r.creditofiscdolar, 
          r.saldofiscdolar, 
          p.partida, 
          p.centro_costo, 
          p.ano_fecha, 
          p.mes_fecha, 
          p.nombre_presupuesto, 
          p.presupuesto, 
          p.periodo, 
          p.trimestre_fecha, 
          p.ano_mes_fecha, 
          p.tipo_cambio, 
          p.monto_local, 
          p.ampliacion_local, 
          p.reduccion_local, 
          p.presupuestado_mes, 
          p.presupuestado_acumulado, 
          p.diferencia_acumulado, 
          p.diferencia_mes, 
          p.compr_local, 
          p.ejedev_local, 
          p.pagcob_local, 
          p.gasto_real_mes, 
          p.real_acumulado, 
          p.disponible, 
          p.descripcion, 
          p.partida_descripcion, 
          p.centro_costo_descripcion, 
          p.agrupacion_1, 
          p.agrupacion_2, 
          p.agrupacion_3, 
          p.monto_dolar, 
          p.ampliacion_dolar, 
          p.reduccion_dolar, 
          p.presupuestado_mes_dolar, 
          p.presupuestado_acumulado_dolar, 
          p.diferencia_acumulado_dolar, 
          p.diferencia_mes_dolar, 
          p.compr_dolar, 
          p.ejedev_dolar, 
          p.pagcob_dolar, 
          p.gasto_real_mes_dolar, 
          p.real_acumulado_dolar, 
          p.disponible_dolar 
   FROM   vistal_real r 
          FULL OUTER JOIN (SELECT * 
                           FROM   vista_presupuesto where moneda = 'USD') p 
                       ON ( r.ano_saldo = p.ano_fecha 
                            AND r.mes_saldo = p.mes_fecha 
                            AND r.centrocostocodigo = p.centro_costo 
                            AND r.cuentacontablecodigo = p.partida
							AND r.moneda = p.moneda
							)
where r.moneda = 'USD' or r.moneda is null
)
GO


