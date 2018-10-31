select distinct INFO 
from diclofenacosb.DBFAO_CRECER.dbo.SAP_MESSAGE_TRACE  WITH(NOLOCK)
WHERE --ID_TRANSACTION ='ae6248e5-25e2-1ee8-a389-43df9d774001' and
 DATE_ARRIVE >= '2018-07-23 01:10:42.930'  --and DATE_ARRIVE<='2017-11-08 00:21:42.930'
--and MSG like '%01015%'
--order by date_arrive desc

----6051

select count (*)
from diclofenacosb.DBFAO_CRECER.dbo.SAP_MESSAGE_TRACE  WITH(NOLOCK)
WHERE --ID_TRANSACTION ='ae6248e5-25e2-1ee8-a389-43df9d774001' and
 DATE_ARRIVE >= '2018-07-23 01:10:42.930'  --and DATE_ARRIVE<='2017-11-08 00:21:42.930'
--and MSG like '%01015%'
--order by date_arrive desc