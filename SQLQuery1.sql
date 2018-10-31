select substring(InvoiceDate, 1,6) Fecha, SUM(InvoiceAmount) Monto_con_IVA, COUNT(*) Cant_tic 
from   Invoice 
WHERE  InvoiceDate >='20180101' and InvoiceDate <='20181022'
group  by substring(InvoiceDate, 1,6)
order  by 1;

select cast(InvoiceDate as date) as fecha , COUNT (InvoiceAmount)
from   Invoice WHERE  cast(InvoiceDate as date)  >='20181001' 
group  by cast(InvoiceDate as date)  ;


select * from 
select InvoiceDetail from Invoice ; 

select  PharmacyID,substring(InvoiceDate, 1,6) Fecha ,SUM(InvoiceAmount) from  Invoice
WHERE  InvoiceDate >='20180919' and InvoiceDate <='20180919'and PharmacyID='072298'
group  by substring(InvoiceDate, 1,6) , PharmacyID
order  by 1;



072298

select * 
from diclofenac.DBFAO_CRECER.dbo.vw_BasePharmacy



select * 
from diclofenacosb.DBFAO_CRECER.dbo.SAP_MESSAGE_TRACE  WITH(NOLOCK)
WHERE ID_TRANSACTION ='ae6248e5-25e2-1ed8-b1d5-e507302d8e00-1025-316274'
and DATE_ARRIVE >= '2018-08-31 01:10:42.930'  --and DATE_ARRIVE<='2017-11-08 00:21:42.930'
--and MSG like '%01015%'
order by date_arrive desc


select * 
from diclofenacosb.DBFAO_CRECER.dbo.SAP_MESSAGE_TRACE  WITH(NOLOCK)
--WHERE ID_TRANSACTION --and DATE_ARRIVE >= '2018-08-31 01:10:42.930'  
--order by date_arrive desc



select SUM(invoiceamount),InvoiceDate from invoice 
where  InvoiceDate >='20180601' and InvoiceDate <='20180630' and PharmacyID ='019471' 
group by  Invoicedate







select SUM(invoiceamount),InvoiceDate from invoice 
where  InvoiceDate >='20180601' and InvoiceDate <='20180631' and PharmacyID ='024844'
group by  Invoicedate




select * 
from diclofenacosb.DBFAO_CRECER.dbo.SAP_MESSAGE_TRACE  WITH(NOLOCK)
WHERE ID_TRANSACTION ='ae6248e5-25e2-1ed8-ada4-4749bf88cf09' and
 DATE_ARRIVE >= '2018-07-23 01:10:42.930'  --and DATE_ARRIVE<='2017-11-08 00:21:42.930'
--and MSG like '%01015%'
order by date_arrive desc





SELECT  
A.XML.value('xs:int((//ID_PHARMACY)[1])', 'VARCHAR(MAX)') ID_FARMACIA,
A.XML.value('count(//ID_ITEM)', 'VARCHAR(MAX)') NUM_ITEMS,
A.XML.query('(

for $a in //ID_ITEM

return data($a)

)')

PRODUCTOS,
    
    A.DATE_ARRIVE,
    A.ID_TRANSACTION,
    A.ID
           FROM    ( SELECT 
                    CAST(MSG COLLATE SQL_Latin1_General_CP1253_CI_AI AS XML) XML,
                    DATE_ARRIVE,
                    ID_TRANSACTION,
                    ID
                  
          FROM      DBFAO_CRECER.dbo.SAP_MESSAGE_TRACE WITH (NOLOCK)
          WHERE          
            DATE_ARRIVE > '2018-09-17 00:58:40.983'  --No usar rangos mayores a 23,9 horas
            AND
            DATE_ARRIVE < '2018-09-17 23:58:40.983' --No usar rangos mayores a 23,9 horas
            AND 
            INFO LIKE 'rimel:gest%'
                               ) A ORDER BY A.ID ASC;



select * 
from diclofenacosb.DBFAO_CRECER.dbo.SAP_MESSAGE_TRACE  WITH(NOLOCK)
WHERE ID_TRANSACTION like '%ae6248e5-25e2-1ed8-ada4-4749bf88cf09%' and INFO= 'gestionarMaestroProductos' and
DATE_ARRIVE >= '2018-08-20 01:10:42.930' and DATE_ARRIVE<='2018-09-10 23:21:42.930'