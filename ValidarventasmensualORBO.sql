update tr_trn set id_tlog_btch = -1 where id_tlog_btch = -2 and  dc_dy_bsn >= '2018-01-01' ;
commit;
