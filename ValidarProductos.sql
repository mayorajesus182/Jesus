SET LINESIZE 100
SET PAGESIZE 0
SET FEEDBACK OFF
SET ECHO OFF
SET VERIFY OFF
SET HEADING OFF
SET SPACE 2


SELECT o.id_str_rt||'|'||
  ai.id_itm||'|'||
 decode(ai.fl_actvn_rq, 1, 'A', 'I')||'|' 
FROM bouser.as_itm ai,   VW_PASTRRTLORBO o
order by ai.id_itm; 

exit;