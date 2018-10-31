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
        AND A.DC_DY_BSN >= '2017-03-01' AND A.DC_DY_BSN<= '2017-03-31'
        AND A.FL_TRG_TRN != 1
        --AND ROWNUM <=100
        AND C.FL_VD_LN_ITM = 0
        AND C.MO_EXTN_LN_ITM_RTN  != 0;
