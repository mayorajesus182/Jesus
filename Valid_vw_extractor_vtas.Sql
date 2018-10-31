---------------------------------------------------------------------------------------------------------------
SELECT 'vw_extractor_fof_line_011',
    SUM(PHARMACYID)PHARMACYID ,
    SUM(ITEMS) ITEMS ,
    SUM(NUMBERCOUPONS)NUMBERCOUPONS,
    SUM(CLIENTTYPE)CLIENTTYPE,
    SUM(INVOICEAMOUNT)INVOICEAMOUNT,
    SUM(DISCOUNTAMOUNT)DISCOUNTAMOUNT,
    SUM(DISCOUNTPERCENT)DISCOUNTPERCENT,
    SUM(IVA)IVA,
    SUM(CANCELLEDAMOUNT)CANCELLEDAMOUNT,
    SUM(BASEEXENTA)BASEEXENTA,
    SUM(BASEIMPGRAV)BASEIMPGRAV,
     COUNT (*)
    FROM
    vw_extractor_fof_line_011
WHERE to_date(INVOICEDATE, 'rrrr-mm-dd') >= add_months(trunc(sysdate),-6) 
    UNION
SELECT'vw_extractor_fof_line_011_MM',
    SUM(PHARMACYID)PHARMACYID ,
    SUM(ITEMS) ITEMS ,
    SUM(NUMBERCOUPONS)NUMBERCOUPONS,
    SUM(CLIENTTYPE)CLIENTTYPE,
    SUM(INVOICEAMOUNT)INVOICEAMOUNT,
    SUM(DISCOUNTAMOUNT)DISCOUNTAMOUNT,
    SUM(DISCOUNTPERCENT)DISCOUNTPERCENT,
    SUM(IVA)IVA,
    SUM(CANCELLEDAMOUNT)CANCELLEDAMOUNT,
    SUM(BASEEXENTA)BASEEXENTA,
    SUM(BASEIMPGRAV)BASEIMPGRAV,
     COUNT (*)
      FROM
      vw_extractor_fof_line_011_MM
      WHERE to_date(INVOICEDATE, 'rrrr-mm-dd') >= add_months(trunc(sysdate),-6) 
---------------------------------------------------------------------------------------------------------------
	  
     
SELECT 'VW_EXTRACTOR_FOF_LINE_012', Sum(Pharmacyid) Pharmacyid,
       Sum(QUANTITY) QUANTITY,
       Sum(PRICE ) PRICE,
       Sum(DISCOUNTPERCENTAGE) DISCOUNTPERCENTAGE,
       Sum(DISCOUNTAMOUNT) DISCOUNTAMOUNT,
       Sum(VAT) VAT,
       Sum(ITEMNUMBER) ITEMNUMBER,
       Count(*)
      FROM VW_EXTRACTOR_FOF_LINE_012
WHERE to_date(invoicedate, 'rrrr-mm-dd') >= add_months(TRUNC(sysdate),-6)
       UNION
SELECT 'VW_EXTRACTOR_FOF_LINE_012_MM', Sum(Pharmacyid) Pharmacyid,
       Sum(QUANTITY) QUANTITY,
       Sum(PRICE ) PRICE,
       Sum(DISCOUNTPERCENTAGE) DISCOUNTPERCENTAGE,
       Sum(DISCOUNTAMOUNT) DISCOUNTAMOUNT,
       Sum(VAT) VAT,
       Sum(ITEMNUMBER) ITEMNUMBER,
       Count(*)
       FROM VW_EXTRACTOR_FOF_LINE_012_MM
      ---------------------------------------------------------------------------------------------------------------
	  
	  
SELECT 'VW_EXTRACTOR_FOF_LINE_013' , SUM (PHARMACYID)PHARMACYID ,
       SUM (INVOICEAMOUNT)INVOICEAMOUNT,
       SUM (PROVIDER_ID)PROVIDER_ID,
       SUM (DATA1),
       COUNT (*)
       FROM VW_EXTRACTOR_FOF_LINE_013
       WHERE to_date(AVGPAYSALESDATE, 'rrrr-mm-dd') >= add_months(trunc(sysdate),-6) 
       UNION
SELECT 'VW_EXTRACTOR_FOF_LINE_013_MM' ,SUM (PHARMACYID)PHARMACYID ,
       SUM (INVOICEAMOUNT)INVOICEAMOUNT,
       SUM (PROVIDER_ID)PROVIDER_ID,
       SUM (DATA1),
       COUNT (*)
       FROM VW_EXTRACTOR_FOF_LINE_013_MM
 ---------------------------------------------------------------------------------------------------------------
 
SELECT 'VW_EXTRACTOR_FOF_LINE_014',
       Sum(Pharmacyid) Pharmacyid,
       Sum(DISCOUNTPERCENT) DISCOUNTPERCENT,
       Sum(DISCOUNTAMOUNT) DISCOUNTAMOUNT,
       Sum(ITEMS) ITEMS,
       Sum(IVA) IVA,
       Sum(BASEIMPGRAV) BASEIMPGRAV,
       Sum(BASEEXENTA) BASEEXENTA,
       Sum(NUMBERCOUPONS) NUMBERCOUPONS,
       Sum(CLIENTTYPE) CLIENTTYPE,
       COUNT(*)
       FROM VW_EXTRACTOR_FOF_LINE_014
where to_date(invoicedate, 'rrrr-mm-dd') >= add_months(TRUNC(sysdate),-6)
      UNION
SELECT 'VW_EXTRACTOR_FOF_LINE_014_MM', Sum(Pharmacyid) Pharmacyid,
       Sum(DISCOUNTPERCENT) DISCOUNTPERCENT,
       Sum(DISCOUNTAMOUNT) DISCOUNTAMOUNT,
       Sum(ITEMS) ITEMS,
       Sum(IVA) IVA,
       Sum(BASEIMPGRAV) BASEIMPGRAV,
       Sum(BASEEXENTA) BASEEXENTA,
       Sum(NUMBERCOUPONS) NUMBERCOUPONS,
       Sum(CLIENTTYPE) CLIENTTYPE,
       COUNT(*)
       FROM VW_EXTRACTOR_FOF_LINE_014_MM
---------------------------------------------------------------------------------------------------------------

SELECT 'VW_EXTRACTOR_FOF_LINE_015', Sum(Pharmacyid) Pharmacyid,
       Sum(QUANTITY) QUANTITY,
       Sum(PRICE ) PRICE,
       Sum(DISCOUNTPERCENTAGE) DISCOUNTPERCENTAGE,
       Sum(DISCOUNTAMOUNT) DISCOUNTAMOUNT,
       Sum(VAT) VAT,
       Sum(ITEMNUMBER) ITEMNUMBER,
       Count(*)
       FROM VW_EXTRACTOR_FOF_LINE_015
where to_date(invoicedate, 'rrrr-mm-dd') >= add_months(TRUNC(sysdate),-6)
        UNION
SELECT 'VW_EXTRACTOR_FOF_LINE_015_MM', Sum(Pharmacyid) Pharmacyid,
       Sum(QUANTITY) QUANTITY,
       Sum(PRICE ) PRICE,
       Sum(DISCOUNTPERCENTAGE) DISCOUNTPERCENTAGE,
       Sum(DISCOUNTAMOUNT) DISCOUNTAMOUNT,
       Sum(VAT) VAT,
       Sum(ITEMNUMBER) ITEMNUMBER,
       Count(*)
       FROM VW_EXTRACTOR_FOF_LINE_015_MM;
---------------------------------------------------------------------------------------------------------------
SELECT 'VW_EXTRACTOR_FOF_LINE_016', 
        SUM (PHARMACYID)PHARMACYID ,
        SUM (PROVIDER_ID)PROVIDER_ID,
        SUM (INVOICEAMOUNT) INVOICEAMOUNT,
        SUM (DATA1)DATA1, 
        COUNT (*)
        FROM VW_EXTRACTOR_FOF_LINE_016
        WHERE to_date(AVGPAYSALESDATE, 'rrrr-mm-dd') >= add_months(trunc(sysdate),-6)
        UNION   
SELECT  'VW_EXTRACTOR_FOF_LINE_016_MM' ,
        SUM(PHARMACYID)PHARMACYID ,
        SUM (PROVIDER_ID)PROVIDER_ID,
        SUM (INVOICEAMOUNT) INVOICEAMOUNT,
        SUM (DATA1)DATA1 ,
        COUNT (*)
        FROM VW_EXTRACTOR_FOF_LINE_016_MM 
---------------------------------------------------------------------------------------------------------------

SELECT 'vw_extractor_fof_line_021',
    SUM(PHARMACYID)PHARMACYID ,
    SUM(ITEMS) ITEMS ,
    SUM(NUMBERCOUPONS)NUMBERCOUPONS,
    SUM(CLIENTTYPE)CLIENTTYPE,
    SUM(INVOICEAMOUNT)INVOICEAMOUNT,
    SUM(DISCOUNTAMOUNT)DISCOUNTAMOUNT,
    SUM(DISCOUNTPERCENT)DISCOUNTPERCENT,
    SUM(IVA)IVA,
    SUM(CANCELLEDAMOUNT)CANCELLEDAMOUNT,
    SUM(BASEEXENTA)BASEEXENTA,
    SUM(BASEIMPGRAV)BASEIMPGRAV,
    COUNT (*)
    FROM
    vw_extractor_fof_line_021
    WHERE to_date(INVOICEDATE, 'rrrr-mm-dd') >= add_months(trunc(sysdate),-6) 
    UNION
SELECT'vw_extractor_fof_line_021_MM',
    SUM(PHARMACYID)PHARMACYID ,
    SUM(ITEMS) ITEMS ,
    SUM(NUMBERCOUPONS)NUMBERCOUPONS,
    SUM(CLIENTTYPE)CLIENTTYPE,
    SUM(INVOICEAMOUNT)INVOICEAMOUNT,
    SUM(DISCOUNTAMOUNT)DISCOUNTAMOUNT,
    SUM(DISCOUNTPERCENT)DISCOUNTPERCENT,
    SUM(IVA)IVA,
    SUM(CANCELLEDAMOUNT)CANCELLEDAMOUNT,
    SUM(BASEEXENTA)BASEEXENTA,
    SUM(BASEIMPGRAV)BASEIMPGRAV,
     COUNT (*)
     FROM
     vw_extractor_fof_line_021_MM
WHERE to_date(INVOICEDATE, 'rrrr-mm-dd') >= add_months(trunc(sysdate),-6) 

 ---------------------------------------------------------------------------------------------------------------
 
select 'VW_EXTRACTOR_FOF_LINE_022', Sum(Pharmacyid) Pharmacyid,
       Sum(QUANTITY) QUANTITY,
       Sum(PRICE ) PRICE,
       Sum(DISCOUNTPERCENTAGE) DISCOUNTPERCENTAGE,
       Sum(DISCOUNTAMOUNT) DISCOUNTAMOUNT,
       Sum(VAT) VAT,
       Sum(ITEMNUMBER) ITEMNUMBER,
       Count(*)
       from VW_EXTRACTOR_FOF_LINE_022
where to_date(invoicedate, 'rrrr-mm-dd') >= add_months(TRUNC(sysdate),-6)
        union
select 'VW_EXTRACTOR_FOF_LINE_022_MM', Sum(Pharmacyid) Pharmacyid,
       Sum(QUANTITY) QUANTITY,
       Sum(PRICE ) PRICE,
       Sum(DISCOUNTPERCENTAGE) DISCOUNTPERCENTAGE,
       Sum(DISCOUNTAMOUNT) DISCOUNTAMOUNT,
       Sum(VAT) VAT,
       Sum(ITEMNUMBER) ITEMNUMBER,
       Count(*)
       from VW_EXTRACTOR_FOF_LINE_022_MM;
---------------------------------------------------------------------------------------------------------------
	 
SELECT 'VW_EXTRACTOR_FOF_LINE_023' , SUM (PHARMACYID)PHARMACYID ,
       SUM (INVOICEAMOUNT)INVOICEAMOUNT,
       SUM (PROVIDER_ID)PROVIDER_ID,
       SUM (DATA1),
       COUNT (*)
       FROM VW_EXTRACTOR_FOF_LINE_023
       WHERE to_date(AVGPAYSALESDATE, 'rrrr-mm-dd') >= add_months(trunc(sysdate),-6) 
       UNION
SELECT 'VW_EXTRACTOR_FOF_LINE_023_MM' ,SUM (PHARMACYID)PHARMACYID ,
       SUM (INVOICEAMOUNT)INVOICEAMOUNT,
       SUM (PROVIDER_ID)PROVIDER_ID,
       SUM (DATA1),
       COUNT (*)
       FROM VW_EXTRACTOR_FOF_LINE_023_MM
---------------------------------------------------------------------------------------------------------------

select 'VW_EXTRACTOR_FOF_LINE_024',
       Sum(Pharmacyid) Pharmacyid,
       Sum(DISCOUNTPERCENT) DISCOUNTPERCENT,
       Sum(DISCOUNTAMOUNT) DISCOUNTAMOUNT,
       Sum(INVOICEAMOUNT) INVOICEAMOUNT,
       Sum(ITEMS) ITEMS,
       Sum(IVA) IVA,
       Sum(BASEIMPGRAV) BASEIMPGRAV,
       Sum(BASEEXENTA) BASEEXENTA,
       Sum(NUMBERCOUPONS) NUMBERCOUPONS,
       COUNT(*)
       from VW_EXTRACTOR_FOF_LINE_024
       where to_date(invoicedate, 'rrrr-mm-dd') >= add_months(TRUNC(sysdate),-6)
       UNION
  select 'VW_EXTRACTOR_FOF_LINE_024_MM',
       Sum(Pharmacyid) Pharmacyid,
       Sum(DISCOUNTPERCENT) DISCOUNTPERCENT,
       Sum(DISCOUNTAMOUNT) DISCOUNTAMOUNT,
       Sum(INVOICEAMOUNT) INVOICEAMOUNT,
       Sum(ITEMS) ITEMS,
       Sum(IVA) IVA,
       Sum(BASEIMPGRAV) BASEIMPGRAV,
       Sum(BASEEXENTA) BASEEXENTA,
       Sum(NUMBERCOUPONS) NUMBERCOUPONS,
       COUNT(*)
from VW_EXTRACTOR_FOF_LINE_024_MM;


---------------------------------------------------------------------------------------------------------------

	   select 'VW_EXTRACTOR_FOF_LINE_025', Sum(Pharmacyid) Pharmacyid,
       Sum(QUANTITY) QUANTITY,
       Sum(PRICE ) PRICE,
       Sum(DISCOUNTPERCENTAGE) DISCOUNTPERCENTAGE,
       Sum(DISCOUNTAMOUNT) DISCOUNTAMOUNT,
       Sum(VAT) VAT,
       Sum(ITEMNUMBER) ITEMNUMBER,
       Count(*)
       from VW_EXTRACTOR_FOF_LINE_025
where to_date(invoicedate, 'rrrr-mm-dd') >= add_months(TRUNC(sysdate),-6)
       UNION
select 'VW_EXTRACTOR_FOF_LINE_025_MM', Sum(Pharmacyid) Pharmacyid,
       Sum(QUANTITY) QUANTITY,
       Sum(PRICE ) PRICE,
       Sum(DISCOUNTPERCENTAGE) DISCOUNTPERCENTAGE,
       Sum(DISCOUNTAMOUNT) DISCOUNTAMOUNT,
       Sum(VAT) VAT,
       Sum(ITEMNUMBER) ITEMNUMBER,
       Count(*)
       from VW_EXTRACTOR_FOF_LINE_025_MM;
---------------------------------------------------------------------------------------------------------------

SELECT 'VW_EXTRACTOR_FOF_LINE_026', 
        SUM (PHARMACYID)PHARMACYID ,
        SUM (PROVIDER_ID)PROVIDER_ID,
        SUM (INVOICEAMOUNT) INVOICEAMOUNT,
        SUM (DATA1)DATA1, 
        COUNT (*)
        FROM VW_EXTRACTOR_FOF_LINE_026
        WHERE to_date(AVGPAYSALESDATE, 'rrrr-mm-dd') >= add_months(trunc(sysdate),-6)
        UNION   
SELECT  'VW_EXTRACTOR_FOF_LINE_026_MM' ,
        SUM(PHARMACYID)PHARMACYID ,
        SUM (PROVIDER_ID)PROVIDER_ID,
        SUM (INVOICEAMOUNT) INVOICEAMOUNT,
        SUM (DATA1)DATA1 ,
        COUNT (*)
        FROM VW_EXTRACTOR_FOF_LINE_026_MM ;
---------------------------------------------------------------------------------------------------------------  
	   
	   
	   
	   
	   
	   

