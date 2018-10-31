-------------------------------------------Union --------------------------------------------------

select 'VW_EXTRACTOR_FOF_LINE_011', MIN(transactionnumber) Original_MINIMO ,MAX(transactionnumber) Original_MAXIMO , count(*) 
from VW_EXTRACTOR_FOF_LINE_011 
where INVOICEDATE  >=  '2014-10-26'  and INVOICEDATE <=   '2014-10-27' 
UNION
select 'VW_EXTRACTOR_FOF_LINE_011_MM', MIN(transactionnumber) COPIA_MINIMO ,MAX(transactionnumber)COPIA_MAXIMO , count(*) 
from VW_EXTRACTOR_FOF_LINE_011_MM 
where INVOICEDATE  >=  '2014-10-26'  and INVOICEDATE <=   '2014-10-27' 
UNION
select 'VW_EXTRACTOR_FOF_LINE_012' ,MIN(transactionnumber) Original_MINIMO ,MAX(transactionnumber) Original_MAXIMO , count(*) 
from VW_EXTRACTOR_FOF_LINE_012 
where INVOICEDATE  >=  '2014-10-26'  and INVOICEDATE <=   '2014-10-27' 
UNION
select 'VW_EXTRACTOR_FOF_LINE_012_MM', MIN(transactionnumber) COPIA_MINIMO ,MAX(transactionnumber)COPIA_MAXIMO , count(*) 
from  VW_EXTRACTOR_FOF_LINE_012_MM 
where INVOICEDATE  >=  '2014-10-26'  and INVOICEDATE <=   '2014-10-27' 
UNION
select 'VW_EXTRACTOR_FOF_LINE_013' ,MIN(transactionnumber) Original_MINIMO ,MAX(transactionnumber) Original_MAXIMO , count(*) 
from VW_EXTRACTOR_FOF_LINE_013 
where TRANSACTIONNUMBER >= '010010010004' and TRANSACTIONNUMBER <=  '010010010100'
UNION
select 'VW_EXTRACTOR_FOF_LINE_013_MM', MIN(transactionnumber) COPIA_MINIMO ,MAX(transactionnumber)COPIA_MAXIMO , count(*) 
from VW_EXTRACTOR_FOF_LINE_013 
where TRANSACTIONNUMBER >= '010010010004' and TRANSACTIONNUMBER <=  '010010010100'
UNION
select 'VW_EXTRACTOR_FOF_LINE_014' ,MIN(transactionnumber) Original_MINIMO ,MAX(transactionnumber) Original_MAXIMO , count(*) 
from VW_EXTRACTOR_FOF_LINE_014 
where INVOICEDATE  >=  '2014-10-26'  and INVOICEDATE <=   '2014-10-27' 
UNION
select 'VW_EXTRACTOR_FOF_LINE_014_MM' ,MIN(transactionnumber) Original_MINIMO ,MAX(transactionnumber) Original_MAXIMO , count(*) 
from VW_EXTRACTOR_FOF_LINE_014_MM 
where INVOICEDATE  >=  '2014-10-26'  and INVOICEDATE <=   '2014-10-27' 
UNION
select 'VW_EXTRACTOR_FOF_LINE_015' ,MIN(transactionnumber) Original_MINIMO ,MAX(transactionnumber) Original_MAXIMO , count(*) 
from VW_EXTRACTOR_FOF_LINE_015 
where INVOICEDATE  >=  '2014-10-26'  and INVOICEDATE <=   '2014-10-27' 
UNION
select 'VW_EXTRACTOR_FOF_LINE_015_MM' ,MIN(transactionnumber) Original_MINIMO ,MAX(transactionnumber) Original_MAXIMO , count(*) 
from VW_EXTRACTOR_FOF_LINE_015_MM 
where INVOICEDATE  >=  '2014-10-26'  and INVOICEDATE <=   '2014-10-27' 
UNION
select 'VW_EXTRACTOR_FOF_LINE_016' ,MIN(transactionnumber) Original_MINIMO ,MAX(transactionnumber) Original_MAXIMO , count(*) 
from VW_EXTRACTOR_FOF_LINE_016 
where TRANSACTIONNUMBER  >=  '010010010887'  and TRANSACTIONNUMBER <=   '010020010887' 
UNION
select 'VW_EXTRACTOR_FOF_LINE_016_MM' ,MIN(transactionnumber) Original_MINIMO ,MAX(transactionnumber) Original_MAXIMO , count(*) 
from VW_EXTRACTOR_FOF_LINE_016_MM 
where TRANSACTIONNUMBER  >=  '010010010887'  and TRANSACTIONNUMBER <=   '010020010887' 
UNION
select 'VW_EXTRACTOR_FOF_LINE_022' ,MIN(transactionnumber) Original_MINIMO ,MAX(transactionnumber) Original_MAXIMO , count(*) 
from VW_EXTRACTOR_FOF_LINE_022 
where INVOICEDATE  >=  '2014-10-26'  and INVOICEDATE <=   '2014-10-27'
UNION
select 'VW_EXTRACTOR_FOF_LINE_022_MM' ,MIN(transactionnumber) Original_MINIMO ,MAX(transactionnumber) Original_MAXIMO , count(*) 
from VW_EXTRACTOR_FOF_LINE_022_MM 
where INVOICEDATE  >=  '2014-10-26'  and INVOICEDATE <=   '2014-10-27'  
UNION
select 'VW_EXTRACTOR_FOF_LINE_023' ,MIN(transactionnumber) Original_MINIMO ,MAX(transactionnumber) Original_MAXIMO , count(*) 
from VW_EXTRACTOR_FOF_LINE_023 
where TRANSACTIONNUMBER >= '010010010093' and TRANSACTIONNUMBER <=  '010020010093'
UNION
select 'VW_EXTRACTOR_FOF_LINE_023_MM' ,MIN(transactionnumber) Original_MINIMO ,MAX(transactionnumber) Original_MAXIMO , count(*) 
from VW_EXTRACTOR_FOF_LINE_023_MM 
where TRANSACTIONNUMBER >= '010010010093' and TRANSACTIONNUMBER <=  '010020010093'
UNION
select 'VW_EXTRACTOR_FOF_LINE_025' ,MIN(transactionnumber) Original_MINIMO ,MAX(transactionnumber) Original_MAXIMO , count(*) 
from VW_EXTRACTOR_FOF_LINE_025 where INVOICEDATE  >=  '2014-10-26'  and INVOICEDATE <=   '2014-11-28' 
UNION
select 'VW_EXTRACTOR_FOF_LINE_025_MM' ,MIN(transactionnumber) Original_MINIMO ,MAX(transactionnumber) Original_MAXIMO , count(*) 
from VW_EXTRACTOR_FOF_LINE_025_MM where INVOICEDATE  >=  '2014-10-26'  and INVOICEDATE <=   '2014-11-28'
UNION
select 'VW_EXTRACTOR_FOF_LINE_026' ,MIN(transactionnumber) Original_MINIMO ,MAX(transactionnumber) Original_MAXIMO , count(*) 
from VW_EXTRACTOR_FOF_LINE_026 
where TRANSACTIONNUMBER >= '010020050621' and TRANSACTIONNUMBER <=  '010030050621'
UNION
select 'VW_EXTRACTOR_FOF_LINE_026_MM' ,MIN(transactionnumber) Original_MINIMO ,MAX(transactionnumber) Original_MAXIMO , count(*) 
from VW_EXTRACTOR_FOF_LINE_026_MM
where TRANSACTIONNUMBER >= '010020050621' and TRANSACTIONNUMBER <=  '010030050621'

--------------------------------------------VW_EXTRACTOR_FOF_LINE_012-------------------------------------------------------------------------


select 'VW_EXTRACTOR_FOF_LINE_012' ,MIN(transactionnumber) Original_MINIMO ,MAX(transactionnumber) Original_MAXIMO , count(*) from VW_EXTRACTOR_FOF_LINE_012 where INVOICEDATE  >=  '2014-10-26'  and INVOICEDATE <=   '2014-10-27' 
union
select 'VW_EXTRACTOR_FOF_LINE_012_MM', MIN(transactionnumber) COPIA_MINIMO ,MAX(transactionnumber)COPIA_MAXIMO , count(*) from  VW_EXTRACTOR_FOF_LINE_012_MM where INVOICEDATE  >=  '2014-10-26'  and INVOICEDATE <=   '2014-10-27' 


----------------------------------------------VW_EXTRACTOR_FOF_LINE_013------------------------------------------------------

select 'VW_EXTRACTOR_FOF_LINE_013' ,MIN(transactionnumber) Original_MINIMO ,MAX(transactionnumber) Original_MAXIMO , count(*) from VW_EXTRACTOR_FOF_LINE_013 where TRANSACTIONNUMBER >= '010010010004' and TRANSACTIONNUMBER <=  '010010010100'
union
select 'VW_EXTRACTOR_FOF_LINE_032_MM', MIN(transactionnumber) COPIA_MINIMO ,MAX(transactionnumber)COPIA_MAXIMO , count(*) from VW_EXTRACTOR_FOF_LINE_013 where TRANSACTIONNUMBER >= '010010010004' and TRANSACTIONNUMBER <=  '010010010100'



------------------------------VW_EXTRACTOR_FOF_LINE_014-------------------------------------------------------------------

select 'VW_EXTRACTOR_FOF_LINE_014' ,MIN(transactionnumber) Original_MINIMO ,MAX(transactionnumber) Original_MAXIMO , count(*) from VW_EXTRACTOR_FOF_LINE_014 where INVOICEDATE  >=  '2014-10-26'  and INVOICEDATE <=   '2014-10-27' 
union
select 'VW_EXTRACTOR_FOF_LINE_014_MM' ,MIN(transactionnumber) Original_MINIMO ,MAX(transactionnumber) Original_MAXIMO , count(*) from VW_EXTRACTOR_FOF_LINE_014_MM where INVOICEDATE  >=  '2014-10-26'  and INVOICEDATE <=   '2014-10-27' 


----------------------------------------- VW_EXTRACTOR_FOF_LINE_015--------------------------------------------------------------

select 'VW_EXTRACTOR_FOF_LINE_015' ,MIN(transactionnumber) Original_MINIMO ,MAX(transactionnumber) Original_MAXIMO , count(*) from VW_EXTRACTOR_FOF_LINE_015 where INVOICEDATE  >=  '2014-10-26'  and INVOICEDATE <=   '2014-10-27' 
UNION
select 'VW_EXTRACTOR_FOF_LINE_015_MM' ,MIN(transactionnumber) Original_MINIMO ,MAX(transactionnumber) Original_MAXIMO , count(*) from VW_EXTRACTOR_FOF_LINE_015_MM where INVOICEDATE  >=  '2014-10-26'  and INVOICEDATE <=   '2014-10-27' 


---------------------------------------------------VW_EXTRACTOR_FOF_LINE_016-----------------------------------------------------------------
select 'VW_EXTRACTOR_FOF_LINE_016' ,MIN(transactionnumber) Original_MINIMO ,MAX(transactionnumber) Original_MAXIMO , count(*) from VW_EXTRACTOR_FOF_LINE_016 where TRANSACTIONNUMBER  >=  '010010010887'  and TRANSACTIONNUMBER <=   '010020010887' 
UNION
select 'VW_EXTRACTOR_FOF_LINE_016_MM' ,MIN(transactionnumber) Original_MINIMO ,MAX(transactionnumber) Original_MAXIMO , count(*) from VW_EXTRACTOR_FOF_LINE_016_MM where TRANSACTIONNUMBER  >=  '010010010887'  and TRANSACTIONNUMBER <=   '010020010887' 



-----------------------------------------------VW_EXTRACTOR_FOF_LINE_022-------------------------------------------------------------

select 'VW_EXTRACTOR_FOF_LINE_022' ,MIN(transactionnumber) Original_MINIMO ,MAX(transactionnumber) Original_MAXIMO , count(*) from VW_EXTRACTOR_FOF_LINE_022 where INVOICEDATE  >=  '2014-10-26'  and INVOICEDATE <=   '2014-10-27'
union
select 'VW_EXTRACTOR_FOF_LINE_022_MM' ,MIN(transactionnumber) Original_MINIMO ,MAX(transactionnumber) Original_MAXIMO , count(*) from VW_EXTRACTOR_FOF_LINE_022_MM where INVOICEDATE  >=  '2014-10-26'  and INVOICEDATE <=   '2014-10-27'  


---------------------------------------------VW_EXTRACTOR_FOF_LINE_023 -----------------------------------------------------

select 'VW_EXTRACTOR_FOF_LINE_023' ,MIN(transactionnumber) Original_MINIMO ,MAX(transactionnumber) Original_MAXIMO , count(*) from VW_EXTRACTOR_FOF_LINE_023 
where TRANSACTIONNUMBER >= '010010010093' and TRANSACTIONNUMBER <=  '010020010093'
UNION
select 'VW_EXTRACTOR_FOF_LINE_023_MM' ,MIN(transactionnumber) Original_MINIMO ,MAX(transactionnumber) Original_MAXIMO , count(*) from VW_EXTRACTOR_FOF_LINE_023_MM 
where TRANSACTIONNUMBER >= '010010010093' and TRANSACTIONNUMBER <=  '010020010093'



NOta : VW_EXTRACTOR_FOF_LINE_023_MM  tiene una columna de Mas  


-------------------------------------------------------------VW_EXTRACTOR_FOF_LINE_025-----------------------------------------



select 'VW_EXTRACTOR_FOF_LINE_025' ,MIN(transactionnumber) Original_MINIMO ,MAX(transactionnumber) Original_MAXIMO , count(*) from VW_EXTRACTOR_FOF_LINE_025 where INVOICEDATE  >=  '2014-10-26'  and INVOICEDATE <=   '2014-11-28' 
UNION
select 'VW_EXTRACTOR_FOF_LINE_025_MM' ,MIN(transactionnumber) Original_MINIMO ,MAX(transactionnumber) Original_MAXIMO , count(*) from VW_EXTRACTOR_FOF_LINE_025_MM where INVOICEDATE  >=  '2014-10-26'  and INVOICEDATE <=   '2014-11-28'

---------------------------------------------------VW_EXTRACTOR_FOF_LINE_026 -------------------------------------------------

select 'VW_EXTRACTOR_FOF_LINE_026' ,MIN(transactionnumber) Original_MINIMO ,MAX(transactionnumber) Original_MAXIMO , count(*) from VW_EXTRACTOR_FOF_LINE_026 
where TRANSACTIONNUMBER >= '010020050621' and TRANSACTIONNUMBER <=  '010030050621'
UNION
select 'VW_EXTRACTOR_FOF_LINE_026_MM' ,MIN(transactionnumber) Original_MINIMO ,MAX(transactionnumber) Original_MAXIMO , count(*) from VW_EXTRACTOR_FOF_LINE_026_MM
where TRANSACTIONNUMBER >= '010020050621' and TRANSACTIONNUMBER <=  '010030050621'


--------------------------------------------------------------------------------------------------------------