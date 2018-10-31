
--Query para ORCO buscar transacciones que existe ya en ORCO

select AI_TRN, dc_dy_bsn,
         id_tlog_btch,
     ''''||AI_TRn||ID_STR_RT||ID_WS||dc_dy_bsn||''',' txno,
         tr_trn.*
from tr_trn  
where AI_TRn||ID_STR_RT||ID_WS||dc_dy_bsn in ('197010110032018-04-05',
'198010110032018-04-05',
'199010110032018-04-05',
'1181010110032018-04-15',
'2930010110012018-04-15',
'2931010110012018-04-15',
'2932010110012018-04-15',
'7922010110002018-04-15',
'1182010110032018-04-16',
'1183010110032018-04-16',
'1184010110032018-04-16',
'1185010110032018-04-16',
'1186010110032018-04-16',
'1187010110032018-04-16',
'1188010110032018-04-16',
'1189010110032018-04-16',
'1190010110032018-04-16',
'1191010110032018-04-16',
'1192010110032018-04-16',
'1193010110032018-04-16',
'1194010110032018-04-16',
'1195010110032018-04-16',
'1196010110032018-04-16',
'1197010110032018-04-16',
'1198010110032018-04-16',
'1199010110032018-04-16',
'1200010110032018-04-16',
'1201010110032018-04-16',
'1202010110032018-04-16')
order by 2,1;



SELECT * FROM TR_TRN WHERE AI_TRN = '5733' AND DC_DY_BSN='2018-05-17' and id_str_rt='01114';

UPDATE TR_TRN
SET SC_TRN = '3'
WHERE AI_TRN = '5733' AND DC_DY_BSN='2018-05-17' and id_str_rt='01114';


------------------------------------------------------
--------- ORCO

--- Ventas Totales  
select to_char(sysdate, 'dd/mm/rrrr hh24:mi:ss') fecha_Ejecucion_Query,
substr(f.dc_dy_bsn, 1, 7) Fecha_ORCO, 
sum(rtl.mo_sls_tot) Monto_Sin_IVA_ORCO,
sum(rtl.mo_tnd_tot) Monto_con_IVA_ORCO,
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
      f.dc_dy_bsn  >=  '2018-01-01'  and f.dc_dy_bsn <=   '2018-05-24'  --and
group by  
substr(f.dc_dy_bsn, 1, 7)
ORDER BY  2;
--------------------------------------


SELECT * FROM TR_TRN WHERE AI_TRN = '9248' AND DC_DY_BSN='2018-05-17' and ID_STR_RT='01079';

UPDATE TR_TRN
SET SC_TRN = '3'
WHERE AI_TRN = '9248' AND DC_DY_BSN='2018-05-17' and ID_STR_RT='01079';




----------------------------------------------------------------------------------

---- CABECERA 
SELECT
     to_number(A.id_str_rt) pharmacyid,
                PA.NM_LOC PHARMACYNAME,
    A.id_str_rt ||  A.id_ws ||  lpad(A.ai_trn,4,0) transactionnumber,
    A.id_ws cashregister,
    A.dc_dy_bsn invoicedate,
    to_char(A.ts_trn_end,'HH24:MI:SSxFF') invoicetime,
    A.id_em cashier,
    substr(A.dc_dy_bsn,6,2) ||  substr(A.dc_dy_bsn,4,1) ||  substr(A.dc_dy_bsn,9,1) ||  substr(A.id_ws,2,2) ||  lpad(A.ai_trn,4,0) invoicenumber,
    b.fisc_serial fiscalserial,
    b.FISC_Z,
                decode(substr(nvl(b.beneficiary_id,nvl(faoct.id_reference_num,'') ),1,1),'0','V', '1', 'V', '2', 'V', '3', 'V', '4', 'V', '5', 'V', '6', 'V', '7', 'V', '8', 'V', '9', 'V') || nvl(b.beneficiary_id,nvl(faoct.id_reference_num,'') ) clientid,
    nvl(b.beneficiary_name,nvl(C.nm_ct,'') ) clientname,
    nvl(ads.a1_cnct,'') address,
    nvl(ads.tl_cnct,'') phoneclient,
    nvl(f.pe_dsc,0) discountpercent,
    nvl(rtl.mo_dsc_tot,0) discountamount,
    (G.iva + G.invoiceamount)  invoiceamount,
    G.iva,
    G.baseimpgrav,
    G.baseexenta,
    nvl(I.id_ru_prdv,0) numbercoupons,
    CASE nvl(to_number(b.agreement_id,'999'),0) WHEN 0 THEN 1 ELSE to_number(b.agreement_id,'999') END AS clienttype,
    CASE b.holder_order_id WHEN '0' THEN b.holder_generated_order_num ELSE b.holder_order_id END agreementverify,
    b.holder_rif holderid
FROM couser.tr_trn A
                INNER JOIN COUSER.PA_STR_RTL PA ON PA.ID_STR_RT = A.ID_STR_RT
    INNER JOIN couser.fao_tr_rtl b  ON A.id_str_rt = b.id_str_rt
      AND A.id_ws = b.id_ws
      AND A.dc_dy_bsn = b.dc_dy_bsn
      AND A.ai_trn = b.ai_trn
    INNER JOIN couser.tr_rtl rtl  ON A.id_str_rt = rtl.id_str_rt
      AND A.id_ws = rtl.id_ws
      AND A.dc_dy_bsn = rtl.dc_dy_bsn
      AND A.ai_trn = rtl.ai_trn
    LEFT JOIN couser.pa_ct C  ON C.id_ct = rtl.id_ct
    LEFT JOIN couser.lo_ads ads ON C.id_prty = ads.id_prty
    LEFT JOIN couser.fao_pa_ct faoct  ON faoct.fao_id_ct = rtl.id_ct
    LEFT JOIN couser.tr_ltm_dsc f ON A.id_str_rt = f.id_str_rt
      AND A.id_ws = f.id_ws
      AND A.dc_dy_bsn = f.dc_dy_bsn
      AND A.ai_trn = f.ai_trn
    INNER JOIN (SELECT
                pharmacyid,
                transactionnumber,
                cashregister,
                invoicedate,
                SUM(invoiceamount) invoiceamount,
                SUM(items) items,
                SUM(iva) iva,
                SUM(baseimpgrav) baseimpgrav,
                SUM(baseexenta) baseexenta
                FROM(SELECT
                       G.id_str_rt pharmacyid,
                       G.ai_trn transactionnumber,
                       G.id_ws cashregister,
                       G.dc_dy_bsn invoicedate,
                       G.mo_extn_dsc_ln_itm invoiceamount,
                       G.qu_itm_lm_rtn_sls items,
                       G.MO_VAT_LN_ITM_RTN IVA,
                      CASE WHEN G.mo_vat_ln_itm_rtn != 0 THEN G.mo_extn_dsc_ln_itm ELSE 0 END baseimpgrav,
                      CASE WHEN G.mo_vat_ln_itm_rtn = 0 THEN G.mo_extn_dsc_ln_itm ELSE 0 END baseexenta 
                    FROM couser.tr_ltm_sls_rtn G
                    WHERE G.fl_vd_ln_itm = 0
                    ) A
                    GROUP BY pharmacyid,
                    transactionnumber,
                    cashregister,
                    invoicedate
              ) G ON A.id_str_rt = G.pharmacyid
      AND A.id_ws = G.cashregister
      AND A.dc_dy_bsn = G.invoicedate
      AND A.ai_trn = G.transactionnumber
    LEFT JOIN couser.tr_ru_prdv I ON A.id_str_rt = I.id_str_rt
      AND A.id_ws = I.id_ws
      AND A.dc_dy_bsn = I.dc_dy_bsn
      AND A.ai_trn = I.ai_trn
WHERE A.ty_trn IN ( 1,2 )
AND A.sc_trn = 2
AND A.dc_dy_bsn >= '2018-03-01' AND A.dc_dy_bsn <= '2018-03-31'
AND A.fl_trg_trn != 1;

-----------------DETALLE-----------------------------
SELECT  
        TO_NUMBER(A.ID_STR_RT) PHARMACYID ,
        PA.NM_LOC PHARMACYNAME,
        A.ID_STR_RT || A.ID_WS || LPAD(A.AI_TRN, 4, 0) TRANSACTIONNUMBER ,
        A.DC_DY_BSN INVOICEDATE ,
        (SELECT DEPT_ID FROM AS_ITM@SIMPRD01 WHERE ID_ITM =C.ID_ITM) DEP ,
        B.AGREEMENT_ID CLIENTTYPE,
        C.ID_ITM PRODUCTID ,
        C.DE_ITM_SHRT_RCPT ITEMDESC,
        C.QU_ITM_LM_RTN_SLS QUANTITY ,
        NVL(CASE WHEN c.MO_VAT_LN_ITM_RTN = 0 THEN
        C.MO_EXTN_DSC_LN_ITM 
        END,0) BASEEXENTADETAIL,
        NVL(CASE WHEN c.MO_VAT_LN_ITM_RTN != 0 THEN
        C.MO_EXTN_DSC_LN_ITM 
        END,0) BASEIMPGRAVDETAIL,
        C.MO_VAT_LN_ITM_RTN IVADETAIL,
        (c.MO_EXTN_LN_ITM_RTN + c.MO_VAT_LN_ITM_RTN) - (c.MO_EXTN_LN_ITM_RTN - c.MO_EXTN_DSC_LN_ITM) INVOICEAMOUNTDETAIL,
        NVL(D.PE_DSC, 0) DISCOUNTPERCENTAGE ,
        NVL(D.MO_DSC, 0) DISCOUNTAMOUNT ,
        CASE C.MO_VAT_LN_ITM_RTN WHEN 0 THEN 0 ELSE TX.PE_TX END VAT, 
        C.AI_LN_ITM ITEMNUMBER ,
        NVL (C.ID_ITM_MF_UPC,'0') UPC
FROM    COUSER.TR_TRN A
        INNER JOIN COUSER.PA_STR_RTL PA ON PA.ID_STR_RT = A.ID_STR_RT
        LEFT JOIN COUSER.FAO_TR_RTL B ON A.ID_STR_RT = B.ID_STR_RT
                                          AND A.ID_WS = B.ID_WS
                                          AND A.DC_DY_BSN = B.DC_DY_BSN
                                          AND A.AI_TRN = B.AI_TRN
        LEFT JOIN COUSER.TR_LTM_SLS_RTN C ON A.ID_STR_RT = C.ID_STR_RT
                                          AND A.ID_WS = C.ID_WS
                                          AND A.DC_DY_BSN = C.DC_DY_BSN
                                          AND A.AI_TRN = C.AI_TRN
                                          AND C.FL_VD_LN_ITM = 0
        LEFT JOIN COUSER.TR_LTM_SLS_RTN_TX TX ON  TX.ID_STR_RT = C.ID_STR_RT
                                          AND TX.ID_WS = C.ID_WS
                                          AND TX.DC_DY_BSN = C.DC_DY_BSN
                                          AND TX.AI_TRN = C.AI_TRN
                                          AND TX.AI_LN_ITM=C.AI_LN_ITM
        LEFT JOIN COUSER.TR_LTM_DSC D ON A.ID_STR_RT = D.ID_STR_RT
                                          AND A.ID_WS = D.ID_WS
                                          AND A.DC_DY_BSN = D.DC_DY_BSN
                                          AND A.AI_TRN = D.AI_TRN
WHERE   A.TY_TRN IN (1,2)
        AND A.SC_TRN = 2
       -- AND A.ID_STR_RT= '01006'
        --AND C.ID_ITM IN ('102183', '105122', '105152', '105153', '102012', '300569', '101892', '103658', '309922', '313696', '104000', '104170', '301526', '304132')
       -- AND A.AI_TRN= '0226'
       -- AND C.DE_ITM_SHRT_RCPT LIKE'%LOBELLE%'
        AND A.DC_DY_BSN >= '2018-03-01' AND A.DC_DY_BSN<= '2018-03-31'
        AND A.FL_TRG_TRN != 1
        AND C.FL_VD_LN_ITM = 0
        AND C.MO_EXTN_LN_ITM_RTN  != 0
        ORDER BY 4;
        



