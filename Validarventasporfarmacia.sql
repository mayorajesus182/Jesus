SET LINESIZE 300
SET PAGESIZE 0
SET FEEDBACK OFF
SET ECHO OFF
SET VERIFY OFF
SET HEADING OFF
SET SPACE 2
select 'care'||';'|| 
reg.NM_STR_RGN ||';'|| dist.NM_STR_DSTRCT ||';'|| str.NM_LOC||';'||--trn.dc_dy_bsn ||';'|| 
round(sum(rtl.mo_sls_tot),2) ||';'|| round(sum(rtl.mo_tax_tot),2) ||';'||round(sum(rtl.mo_tnd_tot),2)||';'||
SUM(SLS2.Unidades) ||';'||count(*)||';'
from tr_trn trn 
                    inner join fao_tr_rtl f on
                               f.ai_trn = trn.ai_trn and
                               f.dc_dy_bsn = trn.dc_dy_bsn and
                               f.id_ws = trn.id_ws and
                               f.id_str_rt = trn.id_str_rt and
                               nvl(f.AGREEMENT_ID,0) not in ('98', '118', '127', '131')
                    inner join tr_rtl rtl on
                               rtl.ai_trn = trn.ai_trn and
                               rtl.dc_dy_bsn = trn.dc_dy_bsn and
                               rtl.id_ws = trn.id_ws and
                               rtl.id_str_rt = trn.id_str_rt
                    inner join PA_STR_RTL str on 
                               str.ID_STR_RT = trn.ID_STR_RT
                    inner join LO_STR_RGN reg on
                               reg.ID_STR_RGN = str.ID_STR_RGN
                    inner join LO_STR_DSTRCT dist on
                               dist.ID_STR_DSTRCT = str.ID_STR_DSTRCT and
                               dist.ID_STR_RGN = str.ID_STR_RGN    
                   inner join (select SLS.ID_STR_RT, SLS.DC_DY_BSN, SLS.AI_TRN, SLS.ID_WS,  
                                      SUM(SLS.QU_ITM_LM_RTN_SLS) Unidades
                                from TR_LTM_SLS_RTN SLS
                                where sls.id_itm not   in  ('500001', '500002', '500003', '500068' )
                                group by SLS.ID_STR_RT, SLS.DC_DY_BSN, SLS.AI_TRN, SLS.ID_WS)  SLS2 ON
                             TRN.AI_TRN = SLS2.AI_TRN AND
                             TRN.DC_DY_BSN = SLS2.DC_DY_BSN AND                               
                             TRN.ID_WS = SLS2.ID_WS AND                               
                             TRN.ID_STR_RT = SLS2.ID_STR_RT 
where str.DC_CL_RT_STR is null and
      trn.dc_dy_bsn >=  '2018-01-01' and  trn.dc_dy_bsn <=  '2018-01-23'
      and trn.SC_TRN = 2 
      and trn.ty_trn in (1,2)
group by reg.NM_STR_RGN, dist.NM_STR_DSTRCT, f.id_str_rt, str.NM_LOC;
exit;