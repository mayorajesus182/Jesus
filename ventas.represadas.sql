whenever sqlerror exit failure rollback
whenever oserror exit failure rollback
set serveroutput on
set pagesize 0
set heading off
set echo off
set feedback off
set VERIFY OFF 
set HEADING OFF 
SET LINESIZE 300
select id_tlog_btch,DC_DY_BSN,COUNT(*)
from tr_trn  
where dc_dy_bsn >= '2018-02-18'and id_tlog_btch  in (-1, -2)
group by id_tlog_btch,                 ID_STR_RT, DC_DY_BSN
order by  DC_DY_BSN;  

exit;