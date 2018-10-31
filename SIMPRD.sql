---------------------------Valida Cantida------------------------------------------------------

SELECT AI.ID_STR_RT COD_Tienda, po.nm_orgn Tienda,
       count(*)
FROM  simuser.AS_ITM_RTL_STR AI, simuser.pa_str_rtl psr, simuser.pa_orgn po
WHERE ai.ID_ITM   in  ('316836',
'316909',
'316910',
'316911',
'316912',
'316913')

    AND psr.rk_store_type ='C'
    AND psr.dc_cl_rt_str IS NULL
    AND AI.ID_STR_RT = psr.ID_STR_RT
    AND psr.id_prty        = po.id_prty_orgn
group by  AI.ID_STR_RT, po.nm_orgn
order by AI.ID_STR_RT ;

----------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------
----------------------------Valida nombre--------------------------------------

select id_itm "SKU/UPC" ,   nvl(de_itm, p.RK_LONG_DESC) DESCRIPCION
from simuser.AS_ITM p
where  p.id_itm  in  ('316836',
'316909',
'316910',
'316911',
'316912',
'316913')
ORDER BY 1; 

316780
316751
----------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------
------------- Select  para validar productos en ITEMS_DETAILS----------------------------------
SELECT SUBSTR(BS_ID, 1, LENGTH(BS_ID)-2) BS_ID_UPDATE,
  ITEMS_DETAILS.*
FROM OSB.ITEMS_DETAILS
WHERE BS_ID LIKE '%-1052-316780%'
AND TRUNC(TS_ORSIM)>='10-03-18'
ORDER BY TRUNC(TS_ORSIM) DESC,
ID_TBL;
----------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------
------------------- Update para reenviar productos que estén la tabla en ITEMS_DETAILS ---------

UPDATE OSB.ITEMS_DETAILS SET IND_ORSIM=NULL, TS_ORSIM=SYSDATE, TS_REG=SYSDATE 
WHERE IND_ORSIM IS NOT NULL 
and SUBSTR(BS_ID, 43, 6) in ('316751')
and bs_id like ('%-1052%')
and ts_reg >='10/03/18';


---------------------------------------------------------------------------------------------


SELECT ID_ITM AS SKU, DEPT_ID AS DEPARTAMENTO, CLASS_ID AS CLASE, SUBCLASS_ID AS SUB_CLASE, DE_ITM AS DESCRIPCION 
FROM SIMUSER.AS_ITM 
where ID_ITM='302066' ;



SELECT AS_ITM.ID_PRT_ITM AS ID_ITM, AS_ITM.ID_ITM AS UPC, AS_ITM.RK_LONG_DESC AS NAME 
FROM SIMUSER.AS_ITM WHERE AS_ITM.ID_PRT_ITM IS NOT NULL
AND ID_ITM in( '7501098430556'); 


