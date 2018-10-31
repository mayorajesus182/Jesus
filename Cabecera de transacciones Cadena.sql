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
AND A.dc_dy_bsn >= '2017-03-01' AND A.dc_dy_bsn <= '2017-03-31'
/*AND TO_NUMBER(A.ID_STR_RT)= 1002*/
AND A.fl_trg_trn != 1;