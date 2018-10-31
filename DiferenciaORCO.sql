SET HEADING OFF 
SET FEEDBACK OFF
SET ECHO OFF
SET TERMOUT OFF
SET LINESIZE 300
SET PAGESIZE 0
SPOOL InventarioEnLinea.txt
select to_char(sysdate,'dd/mm/rrrr hh24:mi:ss') fecha_Ejecucion_Query,
substr(f.dc_dy_bsn, 1, 7) Fecha_ORCO, 
sum(DECODE(SIGN(to_date(f.dc_dy_bsn, 'rrrr-mm-dd') - to_date('2018-08-20', 'rrrr-mm-dd')),
     -1,rtl.mo_sls_tot, rtl.mo_sls_tot * 100000)) Monto_Sin_IVA_ORCO,
sum(DECODE(SIGN(to_date(f.dc_dy_bsn, 'rrrr-mm-dd') - to_date('2018-08-20', 'rrrr-mm-dd')),
     -1, rtl.mo_tnd_tot, rtl.mo_tnd_tot * 100000)) Monto_con_IVA_ORCO ,
--sum(rtl.mo_sls_tot) Monto_Sin_IVA_ORCO,
--sum(rtl.mo_tnd_tot) Monto_con_IVA_ORCO,
COUNT(*) Cant_Tick_ORCO
from fao_tr_rtl f 
                    inner join tr_trn trn on
                               f.ai_trn = trn.ai_trn and
                               f.dc_dy_bsn = trn.dc_dy_bsn and
                               f.id_ws = trn.id_ws and
                               f.id_str_rt = trn.id_str_rt
                    inner join tr_rtl rtl on
                               f.ai_trn = rtl.ai_trn and
                               f.dc_dy_bsn = rtl.dc_dy_bsn and
                               f.id_ws = rtl.id_ws and
                               f.id_str_rt = rtl.id_str_rt
                    inner join pa_str_rtl psr on
                               psr.id_str_rt = f.id_str_rt
where  trn.fl_trg_trn <> 1 and
       trn.sc_trn = 2 and
       f.dc_dy_bsn  >=  '2018-01-01'  and f.dc_dy_bsn <='SYSDATE'
      group by substr(f.dc_dy_bsn, 1, 7)
ORDER BY  2;

SPOOL OFF

EXIT;


