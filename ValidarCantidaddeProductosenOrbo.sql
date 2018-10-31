
SET LINESIZE 300
SET PAGESIZE 0
SET FEEDBACK OFF
SET ECHO OFF
SET VERIFY OFF
SET HEADING OFF
SET SPACE 2
SELECT 1||';'|| id_str_rt ||';'||
  nm_loc ||';'||
  --id_itm||';'||
  --de_itm||';'||
  count(*)
FROM bouser.as_itm, VW_PASTRRTLORBO
where id_itm = '315194'
GROUP BY id_str_rt,nm_loc;
exit;