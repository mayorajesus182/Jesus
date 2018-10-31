select * 
from diclofenacosb.DBFAO_CRECER.dbo.SAP_MESSAGE_TRACE  WITH(NOLOCK)
WHERE ID_TRANSACTION ='ae6248e5-25e2-1ed8-a8ab-f3929edb0c06' and
 DATE_ARRIVE >= '2018-08-16 00:10:42.930'  --and DATE_ARRIVE<='2017-11-08 00:21:42.930'
--and MSG like '%01015%'
order by date_arrive desc


ae6248e5-25e2-1ed8-a8ab-f3929edb0c06

20782

select * 
from diclofenacosb.DBFAO_CRECER.dbo.SAP_MESSAGE_TRACE  WITH(NOLOCK)
WHERE ID_TRANSACTION ='ae6248e5-25e2-1ed8-a0a4-4e72f882cb00'
and DATE_ARRIVE >= '2018-06-07 01:10:42.930'  --and DATE_ARRIVE<='2017-11-08 00:21:42.930'
--and MSG like '%01015%'
order by date_arrive desc





select *  from  Products_ConversionMonetaria20180819


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
            DATE_ARRIVE > '2018-08-15 01:58:40.983'  --No usar rangos mayores a 23,9 horas
            AND
            DATE_ARRIVE < '2018-08-15 23:58:40.983' --No usar rangos mayores a 23,9 horas
            AND 
            INFO LIKE 'rimel:gest%'
                               ) A ORDER BY A.ID ASC;





select * 
from diclofenacosb.DBFAO_CRECER.dbo.SAP_MESSAGE_TRACE  WITH(NOLOCK)
WHERE ID_TRANSACTION like '%50%'
and DATE_ARRIVE <= '2018-06-14 10:10:42.930'  --and DATE_ARRIVE<='2017-11-08 00:21:42.930'
--and MSG like '%01015%'
order by date_arrive desc


select * 
from diclofenacosb.DBFAO_CRECER.dbo.SAP_MESSAGE_TRACE  WITH(NOLOCK)
WHERE --ID_TRANSACTION ='ae6248e5-25e2-1ee8-a389-43df9d774001' and
 DATE_ARRIVE >= '2018-07-23 01:10:42.930'  --and DATE_ARRIVE<='2017-11-08 00:21:42.930'
--and MSG like '%01015%'
order by date_arrive desc