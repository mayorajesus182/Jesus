SELECT
    a.id_str_rt cod_tienda,
    pa.nm_loc nombre,
    a.id_ws caja,
    a.ai_trn transaccion,
    a.dc_dy_bsn fecha,
    rt.mo_tnd_tot monto_total,
    lt.ty_tnd tipo_pago,
    lt.mo_itm_ln_tnd monto_pago,
        CASE WHEN
            a.tx_mod = 0
        THEN
            'DEFAULT'
        ELSE
            'CAMBIO'
        END
    modo_tax,
    a.pe_tx porcentaje,
    a.id_unq codigo_tax,
        CASE WHEN
            b.sc_trn = 2
        THEN
            'EXITOSO'
        ELSE
            'CANCELADA'
        END
    status,
    b.id_opr cajero,
    e.id_login,
    e.nm_em nombre_caj
FROM
    couser.tr_ltm_sls_rtn_tx a
    INNER JOIN
        couser.tr_trn b
    ON (            a.id_str_rt = b.id_str_rt
        AND            a.id_ws = b.id_ws
        AND            a.dc_dy_bsn = b.dc_dy_bsn
        AND            a.ai_trn = b.ai_trn
    )
    INNER JOIN
        couser.pa_str_rtl pa
    ON (        b.id_str_rt = pa.id_str_rt
    )
    INNER JOIN
        employees e
    ON (            b.id_str_rt = e.id_str_rt
        AND            b.id_opr = e.id_em
    )
LEFT JOIN
    couser.tr_ltm_tnd lt
ON (        lt.id_str_rt = b.id_str_rt
    AND        lt.id_ws = b.id_ws
    AND        lt.dc_dy_bsn = b.dc_dy_bsn
    AND        lt.ai_trn = b.ai_trn
)
    INNER JOIN
        couser.tr_rtl rt
    ON (            rt.id_str_rt = b.id_str_rt
        AND            rt.id_ws = b.id_ws
        AND            rt.dc_dy_bsn = b.dc_dy_bsn
        AND            rt.ai_trn = b.ai_trn
    )
WHERE  a.dc_dy_bsn >= '2016-12-27'
AND    a.pe_tx NOT IN ( 10,12,0 )
AND    a.ai_ln_itm = 0
--AND A.TX_MOD IN(0,3)
--AND LT.TY_TND IN('CASH')
--AND LT.TY_TND IN('DBIT','CRDT','FCRD')
--AND RT.MO_TND_TOT <> LT.MO_ITM_LN_TND
ORDER BY a.ai_trn;