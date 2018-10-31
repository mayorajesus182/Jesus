
SET LINESIZE 300
SET PAGESIZE 0
SET FEEDBACK OFF
SET ECHO OFF
SET VERIFY OFF
SET HEADING OFF
SET SPACE 2
Select 'AS_ITM'||';'||id_str_rt ||';'||
  V.nm_loc ||';'||id_itm||';'|| de_itm ||';'|| de_itm_shrt||';' from BOUSER.AS_ITM A ,VW_PASTRRTLORBO V
where id_itm='313692'
GROUP BY V.id_str_rt,V.nm_loc,A.ID_ITM,A.de_itm,A.de_itm_shrt

UNION

Select 'AS_ITM_I8'||';'||id_str_rt ||';'||
  V.nm_loc ||';'|| id_itm ||';'|| de_itm ||';'|| de_itm_shrt||';' from bouser.as_itm_I8 B ,VW_PASTRRTLORBO V
where id_itm='313692'
GROUP BY V.id_str_rt, V.nm_loc, id_itm, de_itm, de_itm_shrt;
exit;