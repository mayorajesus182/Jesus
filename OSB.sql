---------------------------Valida Cantida------------------------------------------------------

SELECT AI.ID_STR_RT COD_Tienda, po.nm_orgn Tienda,
       count(*)
FROM  simuser.AS_ITM_RTL_STR AI, simuser.pa_str_rtl psr, simuser.pa_orgn po
WHERE ai.ID_ITM   in  ('317237')

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
where  p.id_itm  in  ('317101')
ORDER BY 1; 

----------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------
------------- Select  para validar productos en ITEMS_DETAILS----------------------------------
SELECT SUBSTR(BS_ID, 1, LENGTH(BS_ID)-2) BS_ID_UPDATE,
  ITEMS_DETAILS.*
FROM OSB.ITEMS_DETAILS
WHERE BS_ID LIKE '%-1050-317430%'
AND TRUNC(TS_ORSIM)>='01-01-18'
ORDER BY TRUNC(TS_ORSIM) DESC,
ID_TBL;



----------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------
------------------- Update para reenviar productos que estén la tabla en ITEMS_DETAILS ---------

UPDATE OSB.ITEMS_DETAILS SET IND_ORSIM=NULL, TS_ORSIM=SYSDATE, TS_REG=SYSDATE 
WHERE IND_ORSIM IS NOT NULL 
and SUBSTR(BS_ID, 43, 6) in('317238','317239','317240','317241','','316530','316535','','317035')
and bs_id like ('%-1050%')
and ts_reg >='01/01/18';

UPDATE OSB.ITEMS_DETAILS SET IND_ORSIM=NULL, TS_ORSIM=SYSDATE, TS_REG=SYSDATE 
 WHERE BS_ID like '%ae6248e5-25e2-1ee8-93fb-38be221d0706-1050-316536%';
 
 
 
 UPDATE OSB.ITEMS_DETAILS SET IND_ORSIM=NULL, TS_ORSIM=SYSDATE, TS_REG=SYSDATE 
WHERE IND_ORSIM IS NOT NULL 
and SUBSTR(BS_ID, 43, 6) in('317257','317258','317259','317260','317261','317262',
'317338','317339','317390','317391','317392','317393',
'317394','317395','317396','317430')
--and bs_id like ('%-1050%')
and ts_reg >='31/05/18';
 
 count(*)
 select  * from  ITEMS_DETAILS  
WHERE IND_ORSIM IS NOT NULL 
and SUBSTR(BS_ID, 43, 6) in('317257','317258','317259','317260','317261','317262',
'317338','317339','317390','317391','317392','317393',
'317394','317395','317396','317430')
--and bs_id like ('%-1050%')
and ts_reg >='01/05/18';
 
 
 
 ('317257','317258','317259','317260','317261','317262',
'317338','317339','317390','317391','317392','317393',
'317394','317395','317396','317430')

 
 
 
 

---------------------------------------------------------------------------------------------


SELECT ID_ITM AS SKU, DEPT_ID AS DEPARTAMENTO, CLASS_ID AS CLASE, SUBCLASS_ID AS SUB_CLASE, DE_ITM AS DESCRIPCION 
FROM SIMUSER.AS_ITM 
where ID_ITM='316536' ;



SELECT AS_ITM.ID_PRT_ITM AS ID_ITM, AS_ITM.ID_ITM AS UPC, AS_ITM.RK_LONG_DESC AS NAME 
FROM SIMUSER.AS_ITM WHERE AS_ITM.ID_PRT_ITM IS NOT NULL
AND ID_ITM in( '7591102034176') 


-----------------------------------------------------

SELECT TO_CHAR(sysdate, 'dd-mm-rrrr hh24:mi:ss') Fecha_Inv_Actual,
  rsis.id_str_rt Cod_Farmacia,
  rsis.nm_orgn Farmacia,
  rsis.id_itm Cod_Producto,
  rsis.de_itm Producto,
  rsis.dept_id Cod_Depto,
  rsis.dept_name Departamento,
  rsis.class_id Cod_Clase,
  rsis.class_name Clase,
  rsis.subclass_id Cod_SubClase,
  rsis.subclass_name SubClase,
  rsis.total_quantity Inv_Total,
  rsis.intavailable_qty Inv_Disponible,
  rsis.adjust_unavail_qty Inv_NoDisponible,
  rsis.reserved_quantity
FROM fao_user.vw_inventorypharmacy rsis
WHERE rsis.total_quantity != 0
AND rsis.dc_cl_rt_str     IS NULL
AND rsis.DE_ITM LIKE '%PROSOLVIT%'
  --AND  rsis.subclass_name like'%UROLOGICOS%'
-- AND rsis.id_str_rt = '1115'
-- AND rsis.id_itm in ('313692')--,'316482')
ORDER BY rsis.id_str_rt,
  rsis.de_itm;





