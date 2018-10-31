  SELECT 'vw_extractor_fof_line_011',
    PHARMACYID,
    INVOICEDATE,
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
WHERE INVOICEDATE='2018-07-25' and PHARMACYID='01025'
GROUP BY PHARMACYID,INVOICEDATE 
    UNION
SELECT 'vw_extractor_fof_line_011_MM',
    PHARMACYID,
    INVOICEDATE,
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
WHERE INVOICEDATE='2018-07-25' and PHARMACYID='01025'
GROUP BY PHARMACYID,INVOICEDATE 





SELECT
    pharmacyid,
    transactionnumber,
    cashregister,
    invoicedate,
    invoicetime,
    cashier,
    invoicenumber,
    fiscalserial,
    clientid,
    clientname,
    address,
    phoneclient,
    discountpercent,
    discountamount,
    invoiceamount,
    items,
    iva,
    baseimpgrav,
    baseexenta,
    cancelledamount,
    numbercoupons,
    clienttype
FROM
    vw_extractor_fof_line_011
WHERE INVOICEDATE='2018-07-25' and PHARMACYID='01025'
UNION
SELECT
    pharmacyid,
    transactionnumber,
    cashregister,
    invoicedate,
    invoicetime,
    cashier,
    invoicenumber,
    fiscalserial,
    clientid,
    clientname,
    address,
    phoneclient,
    discountpercent,
    discountamount,
    invoiceamount,
    items,
    iva,
    baseimpgrav,
    baseexenta,
    cancelledamount,
    numbercoupons,
    clienttype
FROM
    vw_extractor_fof_line_011_MM
WHERE INVOICEDATE='2018-07-25' and PHARMACYID='01025'



--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT 'vw_extractor_fof_line_021',
    PHARMACYID,
    INVOICEDATE,
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
    WHERE INVOICEDATE='2018-07-25' and PHARMACYID='01025'
    GROUP BY PHARMACYID,INVOICEDATE 
    UNION
    SELECT 'vw_extractor_fof_line_021_MM',
    PHARMACYID,
    INVOICEDATE,
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
    WHERE INVOICEDATE='2018-07-25' and PHARMACYID='01025'
    GROUP BY PHARMACYID,INVOICEDATE 
	
	
	
	
	
	
	
	
	
	SELECT
    pharmacyid,
    transactionnumber,
    cashregister,
    invoicedate,
    invoicetime,
    cashier,
    invoicenumber,
    fiscalserial,
    clienttype,
    clientid,
    clientname,
    address,
    phoneclient,
    discountpercent,
    discountamount,
    invoiceamount,
    items,
    iva,
    baseimpgrav,
    baseexenta,
    cancelledamount,
    numbercoupons,
    relationship,
    coverpercentaje,
    amountdeduct,
    agreementverify,
    holderid,
    "AgreementAmount"
FROM
    vw_extractor_fof_line_021
 WHERE INVOICEDATE='2018-07-25' and PHARMACYID='01025'
union
 SELECT
    pharmacyid,
    transactionnumber,
    cashregister,
    invoicedate,
    invoicetime,
    cashier,
    invoicenumber,
    fiscalserial,
    clienttype,
    clientid,
    clientname,
    address,
    phoneclient,
    discountpercent,
    discountamount,
    invoiceamount,
    items,
    iva,
    baseimpgrav,
    baseexenta,
    cancelledamount,
    numbercoupons,
    relationship,
    coverpercentaje,
    amountdeduct,
    agreementverify,
    holderid,
    "AgreementAmount"
FROM
    vw_extractor_fof_line_021
 WHERE INVOICEDATE='2018-07-25' and PHARMACYID='01025'


	
	
	
	
-----------------------------------------------------------------------------------------------------------------------------------------------	
	
SELECT 'VW_EXTRACTOR_FOF_LINE_023' ,
	   PHARMACYID,
       AVGPAYSALESDATE,
	   SUM (PHARMACYID)PHARMACYID ,
       SUM (INVOICEAMOUNT)INVOICEAMOUNT,
       SUM (PROVIDER_ID)PROVIDER_ID,
       SUM (DATA1),
       COUNT (*)
       FROM VW_EXTRACTOR_FOF_LINE_023
       WHERE AVGPAYSALESDATE='2018-07-25' and PHARMACYID='01025'
       GROUP BY PHARMACYID,AVGPAYSALESDATE
       UNION
SELECT 'VW_EXTRACTOR_FOF_LINE_023_MM' ,
       PHARMACYID,
       AVGPAYSALESDATE,
	   SUM (PHARMACYID)PHARMACYID ,
       SUM (INVOICEAMOUNT)INVOICEAMOUNT,
       SUM (PROVIDER_ID)PROVIDER_ID,
       SUM (DATA1),
       COUNT (*)
       FROM VW_EXTRACTOR_FOF_LINE_023_MM
	   WHERE AVGPAYSALESDATE='2018-07-25' and PHARMACYID='01025'
       GROUP BY PHARMACYID,AVGPAYSALESDATE
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
SELECT
    pharmacyid,
    transactionnumber,
    id,
    invoiceamount,
    data1,
    invoicenumber,
    avgpaysalesdate,
    provider_id
FROM
    vw_extractor_fof_line_023
    WHERE AVGPAYSALESDATE='2018-07-25' and PHARMACYID='01025'
      union
SELECT
    pharmacyid,
    transactionnumber,
    id,
    invoiceamount,
    data1,
    invoicenumber,
    avgpaysalesdate,
    provider_id
FROM
    vw_extractor_fof_line_023_MM
    WHERE AVGPAYSALESDATE='2018-07-25' and PHARMACYID='01025'
      

	   
	   
	   
	   
	   
------------------------------------------------------------------------------------------------------------------------------------------	   
	     
	
SELECT 'VW_EXTRACTOR_FOF_LINE_016', 
        PHARMACYID,
        AVGPAYSALESDATE,
        SUM (PHARMACYID)PHARMACYID ,
        SUM (PROVIDER_ID)PROVIDER_ID,
        SUM (INVOICEAMOUNT) INVOICEAMOUNT,
        SUM (DATA1)DATA1, 
        COUNT (*)
        FROM VW_EXTRACTOR_FOF_LINE_016
        WHERE AVGPAYSALESDATE='2018-07-25' and PHARMACYID='01025'
        GROUP BY PHARMACYID,AVGPAYSALESDATE
        UNION   
SELECT  'VW_EXTRACTOR_FOF_LINE_016_MM' ,
        PHARMACYID,
        AVGPAYSALESDATE,
        SUM(PHARMACYID)PHARMACYID ,
        SUM (PROVIDER_ID)PROVIDER_ID,
        SUM (INVOICEAMOUNT) INVOICEAMOUNT,
        SUM (DATA1)DATA1 ,
        COUNT (*)
        FROM VW_EXTRACTOR_FOF_LINE_016_MM 
		WHERE AVGPAYSALESDATE='2018-07-25' and PHARMACYID='01025'
        GROUP BY PHARMACYID,AVGPAYSALESDATE
		
		
SELECT
    pharmacyid,
    transactionnumber,
    id,
    invoiceamount,
    invoicenumber,
    data1,
    avgpaysalesdate,
    provider_id
FROM
    vw_extractor_fof_line_016
    WHERE AVGPAYSALESDATE='2018-07-25' and PHARMACYID='01025'
    union
    SELECT
    pharmacyid,
    transactionnumber,
    id,
    invoiceamount,
    invoicenumber,
    data1,
    avgpaysalesdate,
    provider_id
FROM
    vw_extractor_fof_line_016_MM
    WHERE AVGPAYSALESDATE='2018-07-25' and PHARMACYID='01025'

		
		
		
		
		
		
		
		
		
		
		
		
		
  ----------------------------------------------------------------------------------------------------------------------------------------------------
  
  
  SELECT 'VW_EXTRACTOR_FOF_LINE_026', 
        PHARMACYID,
        AVGPAYSALESDATE,
        SUM (PHARMACYID)PHARMACYID ,
        SUM (PROVIDER_ID)PROVIDER_ID,
        SUM (INVOICEAMOUNT) INVOICEAMOUNT,
        SUM (DATA1)DATA1, 
        COUNT (*)
        FROM VW_EXTRACTOR_FOF_LINE_026
        WHERE AVGPAYSALESDATE='2018-07-25' and PHARMACYID='01025'
        GROUP BY PHARMACYID,AVGPAYSALESDATE
        UNION   
SELECT  'VW_EXTRACTOR_FOF_LINE_026_MM' ,
        PHARMACYID,
        AVGPAYSALESDATE,
        SUM(PHARMACYID)PHARMACYID ,
        SUM (PROVIDER_ID)PROVIDER_ID,
        SUM (INVOICEAMOUNT) INVOICEAMOUNT,
        SUM (DATA1)DATA1 ,
        COUNT (*)
        FROM VW_EXTRACTOR_FOF_LINE_026_MM
        WHERE AVGPAYSALESDATE='2018-07-25' and PHARMACYID='01025'
        GROUP BY PHARMACYID,AVGPAYSALESDATE
		
		
		
SELECT
    pharmacyid,
    transactionnumber,
    id,
    invoiceamount,
    data1,
    invoicenumber,
    avgpaysalesdate,
    provider_id
FROM
    vw_extractor_fof_line_026
WHERE AVGPAYSALESDATE='2018-07-25' and PHARMACYID='01025'
union
SELECT
    pharmacyid,
    transactionnumber,
    id,
    invoiceamount,
    data1,
    invoicenumber,
    avgpaysalesdate,
    provider_id
FROM
    vw_extractor_fof_line_026_MM
WHERE AVGPAYSALESDATE='2018-07-25' and PHARMACYID='01025'



	  
	  
-----------------------------------------------------------------------------------------------------------------------	  
	  
select 'VW_EXTRACTOR_FOF_LINE_012',
       pharmacyid,
       invoicedate,
       Sum(Pharmacyid) Pharmacyid,
       Sum(QUANTITY) QUANTITY,
       Sum(PRICE ) PRICE,
       Sum(DISCOUNTPERCENTAGE) DISCOUNTPERCENTAGE,
       Sum(DISCOUNTAMOUNT) DISCOUNTAMOUNT,
       Sum(VAT) VAT,
       Sum(ITEMNUMBER) ITEMNUMBER,
       Count(*)
       from VW_EXTRACTOR_FOF_LINE_012
       where pharmacyid='01025' and invoicedate='2018-07-25'
       GROUP by pharmacyid,
       invoicedate
       union
      select 'VW_EXTRACTOR_FOF_LINE_012_mm',
       pharmacyid,
       invoicedate,
Sum(Pharmacyid) Pharmacyid,
       Sum(QUANTITY) QUANTITY,
       Sum(PRICE ) PRICE,
       Sum(DISCOUNTPERCENTAGE) DISCOUNTPERCENTAGE,
       Sum(DISCOUNTAMOUNT) DISCOUNTAMOUNT,
       Sum(VAT) VAT,
       Sum(ITEMNUMBER) ITEMNUMBER,
       Count(*)
       from VW_EXTRACTOR_FOF_LINE_012_mm
       where  pharmacyid='01025' and invoicedate='2018-07-25'
       GROUP by pharmacyid,
       invoicedate;
--
SELECT PHARMACYID,
       TRANSACTIONNUMBER,
       INVOICEDATE,
       PRODUCTID,
       QUANTITY,
       PRICE,
       DISCOUNTPERCENTAGE,
       DISCOUNTAMOUNT,
       VAT,
       ITEMNUMBER,
       UPC
       FROM VW_EXTRACTOR_FOF_LINE_012 
       where  pharmacyid='01025'and invoicedate='2018-07-25'
       union
SELECT PHARMACYID,
       TRANSACTIONNUMBER,
       INVOICEDATE,
       PRODUCTID,
       QUANTITY,
       PRICE,
       DISCOUNTPERCENTAGE,
       DISCOUNTAMOUNT,
       VAT,
       ITEMNUMBER,
       UPC
       FROM VW_EXTRACTOR_FOF_LINE_012 
       where  pharmacyid='01025' and invoicedate='2018-07-25'
;
--------------------------------------------------------------------------------
select 'VW_EXTRACTOR_FOF_LINE_022', 
       pharmacyid,
       invoicedate,
       Sum(Pharmacyid) Pharmacyid,
       Sum(QUANTITY) QUANTITY,
       Sum(PRICE ) PRICE,
       Sum(DISCOUNTPERCENTAGE) DISCOUNTPERCENTAGE,
       Sum(DISCOUNTAMOUNT) DISCOUNTAMOUNT,
       Sum(VAT) VAT,
       Sum(ITEMNUMBER) ITEMNUMBER,
       Count(*)
       from VW_EXTRACTOR_FOF_LINE_022
       where pharmacyid='01025'
       and invoicedate='2018-07-25'
       GROUP by pharmacyid,
       invoicedate
        union
select 'VW_EXTRACTOR_FOF_LINE_022_MM', pharmacyid,
         invoicedate,
       Sum(Pharmacyid) Pharmacyid,
       Sum(QUANTITY) QUANTITY,
       Sum(PRICE ) PRICE,
       Sum(DISCOUNTPERCENTAGE) DISCOUNTPERCENTAGE,
       Sum(DISCOUNTAMOUNT) DISCOUNTAMOUNT,
       Sum(VAT) VAT,
       Sum(ITEMNUMBER) ITEMNUMBER,
       Count(*)
       from VW_EXTRACTOR_FOF_LINE_022_MM
       where  pharmacyid='01025'and invoicedate='2018-07-25'
       GROUP by pharmacyid,
       invoicedate
       ;
----

SELECT PHARMACYID,
       TRANSACTIONNUMBER,
       INVOICEDATE,
       PRODUCTID,
       QUANTITY,
       PRICE,
       DISCOUNTPERCENTAGE,
       DISCOUNTAMOUNT,
       VAT,
       ITEMNUMBER,
       UPC
       FROM VW_EXTRACTOR_FOF_LINE_022
       where  pharmacyid='01025' and invoicedate='2018-07-25'
       union
SELECT PHARMACYID,
       TRANSACTIONNUMBER,
       INVOICEDATE,
       PRODUCTID,
       QUANTITY,
       PRICE,
       DISCOUNTPERCENTAGE,
       DISCOUNTAMOUNT,
       VAT,
       ITEMNUMBER,
       UPC
       FROM VW_EXTRACTOR_FOF_LINE_022_mm
       where  pharmacyid='01025' and invoicedate='2018-07-25';
--------------------------------------------------------------------------------
select 'VW_EXTRACTOR_FOF_LINE_015',
       pharmacyid,
       invoicedate,
       Sum(Pharmacyid) Pharmacyid,
       Sum(QUANTITY) QUANTITY,
       Sum(PRICE ) PRICE,
       Sum(DISCOUNTPERCENTAGE) DISCOUNTPERCENTAGE,
       Sum(DISCOUNTAMOUNT) DISCOUNTAMOUNT,
       Sum(VAT) VAT,
       Sum(ITEMNUMBER) ITEMNUMBER,
       Count(*)
       from VW_EXTRACTOR_FOF_LINE_015
       where  pharmacyid='01025' and invoicedate='2018-07-25'
       GROUP by pharmacyid,
       invoicedate
       union
select 'VW_EXTRACTOR_FOF_LINE_015_mm',
       pharmacyid,
       invoicedate,
       Sum(Pharmacyid) Pharmacyid,
       Sum(QUANTITY) QUANTITY,
       Sum(PRICE ) PRICE,
       Sum(DISCOUNTPERCENTAGE) DISCOUNTPERCENTAGE,
       Sum(DISCOUNTAMOUNT) DISCOUNTAMOUNT,
       Sum(VAT) VAT,
       Sum(ITEMNUMBER) ITEMNUMBER,
       Count(*)
       from VW_EXTRACTOR_FOF_LINE_015_mm
       where  pharmacyid='01025' and invoicedate='2018-07-25'
       GROUP by pharmacyid,invoicedate;
--

SELECT PHARMACYID,
       TRANSACTIONNUMBER,
       INVOICEDATE,
       PRODUCTID,
       QUANTITY,
       PRICE,
       DISCOUNTPERCENTAGE,
       DISCOUNTAMOUNT,
       VAT,
       ITEMNUMBER,
       UPC,
       CARDNUMBER
       FROM VW_EXTRACTOR_FOF_LINE_015
       where  pharmacyid='01025' and invoicedate='2018-07-25'
       GROUP by pharmacyid,invoicedate
       union
SELECT PHARMACYID,
       TRANSACTIONNUMBER,
       INVOICEDATE,
       PRODUCTID,
       QUANTITY,
       PRICE,
       DISCOUNTPERCENTAGE,
       DISCOUNTAMOUNT,
       VAT,
       ITEMNUMBER,
       UPC,
       CARDNUMBER
       FROM VW_EXTRACTOR_FOF_LINE_015_mm
       where  pharmacyid='01025'and invoicedate='2018-07-25'
       GROUP by pharmacyid,invoicedate
;
--------------------------------------------------------------------------------
select 'VW_EXTRACTOR_FOF_LINE_025', 
        pharmacyid,
       invoicedate,
       Sum(Pharmacyid) Pharmacyid,
       Sum(QUANTITY) QUANTITY,
       Sum(PRICE ) PRICE,
       Sum(DISCOUNTPERCENTAGE) DISCOUNTPERCENTAGE,
       Sum(DISCOUNTAMOUNT) DISCOUNTAMOUNT,
       Sum(VAT) VAT,
       Sum(ITEMNUMBER) ITEMNUMBER,
       Count(*)
       from VW_EXTRACTOR_FOF_LINE_025
       where pharmacyid='01025'
       and invoicedate='2018-07-25'
       GROUP by pharmacyid,invoicedate

UNION

SELECT 'VW_EXTRACTOR_FOF_LINE_025_MM', 
           pharmacyid,
         invoicedate,
       Sum(Pharmacyid) Pharmacyid,
       Sum(QUANTITY) QUANTITY,
       Sum(PRICE ) PRICE,
       Sum(DISCOUNTPERCENTAGE) DISCOUNTPERCENTAGE,
       Sum(DISCOUNTAMOUNT) DISCOUNTAMOUNT,
       Sum(VAT) VAT,
       Sum(ITEMNUMBER) ITEMNUMBER,
       Count(*)
       from VW_EXTRACTOR_FOF_LINE_025_MM
where pharmacyid='01025'
and invoicedate='2018-07-25'
GROUP by pharmacyid,invoicedate;


SELECT PHARMACYID,
  TRANSACTIONNUMBER,
  INVOICEDATE,
  PRODUCTID,
  QUANTITY,
  PRICE,
  DISCOUNTPERCENTAGE,
  DISCOUNTAMOUNT,
  VAT,
  ITEMNUMBER,
  UPC,
  CARDNUMBER
FROM VW_EXTRACTOR_FOF_LINE_025
where pharmacyid='01025'
and invoicedate='2018-07-25'
union
SELECT PHARMACYID,
  TRANSACTIONNUMBER,
  INVOICEDATE,
  PRODUCTID,
  QUANTITY,
  PRICE,
  DISCOUNTPERCENTAGE,
  DISCOUNTAMOUNT,
  VAT,
  ITEMNUMBER,
  UPC,
  CARDNUMBER
FROM VW_EXTRACTOR_FOF_LINE_025_mm
where pharmacyid='01025'
and invoicedate='2018-07-25';

--------------------------------------------------------------------------------
select 'VW_EXTRACTOR_FOF_LINE_014',
Pharmacyid,
Invoicedate,
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
 from VW_EXTRACTOR_FOF_LINE_014
 where pharmacyid='01025'
and invoicedate='2018-07-25'
GROUP by pharmacyid,invoicedate
 union 
select 'VW_EXTRACTOR_FOF_LINE_014_mm',
Pharmacyid,
Invoicedate,
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
 from VW_EXTRACTOR_FOF_LINE_014_mm
 where pharmacyid='01025'
and invoicedate='2018-07-25'
GROUP by pharmacyid,invoicedate;

------

SELECT 'VW_EXTRACTOR_FOF_LINE_014',PHARMACYID,
  TRANSACTIONNUMBER,
  CASHREGISTER,
  INVOICENUMBERFISCAL,
  INVOICEDATE,
  INVOICETIME,
  CASHIER,
  INVOICENUMBER,
  FISCALSERIAL,
  CLIENTID,
  CLIENTNAME,
  ADDRESS,
  PHONECLIENT,
  DISCOUNTPERCENT,
  DISCOUNTAMOUNT,
  INVOICEAMOUNT,
  ITEMS,
  IVA,
  BASEIMPGRAV,
  BASEEXENTA,
  CARDNUMBER,
  NUMBERCOUPONS,
  UNIQUEID,
  CLIENTTYPE
FROM VW_EXTRACTOR_FOF_LINE_014 
 where pharmacyid='01025'
and invoicedate='2018-07-25'
--GROUP by pharmacyid,TRANSACTIONNUMBER
UNION
SELECT 'VW_EXTRACTOR_FOF_LINE_014_mm', PHARMACYID,
  TRANSACTIONNUMBER,
  CASHREGISTER,
  INVOICENUMBERFISCAL,
  INVOICEDATE,
  INVOICETIME,
  CASHIER,
  INVOICENUMBER,
  FISCALSERIAL,
  CLIENTID,
  CLIENTNAME,
  ADDRESS,
  PHONECLIENT,
  DISCOUNTPERCENT,
  DISCOUNTAMOUNT,
  INVOICEAMOUNT,
  ITEMS,
  IVA,
  BASEIMPGRAV,
  BASEEXENTA,
  CARDNUMBER,
  NUMBERCOUPONS,
  UNIQUEID,
  CLIENTTYPE
FROM VW_EXTRACTOR_FOF_LINE_014_mm 
 where pharmacyid='01025'
and invoicedate='2018-07-25'
--GROUP by pharmacyid,TRANSACTIONNUMBER
;
--------------------------------------------------------------------------------
select 'VW_EXTRACTOR_FOF_LINE_024',
Pharmacyid,
Invoicedate,
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
 where pharmacyid='01025'
 and invoicedate='2018-07-25'
 GROUP by pharmacyid,invoicedate
 UNION
 select 'VW_EXTRACTOR_FOF_LINE_024',
Pharmacyid,
Invoicedate,
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
 from VW_EXTRACTOR_FOF_LINE_024_mm
 where pharmacyid='01025'
 and invoicedate='2018-07-25'
  GROUP by pharmacyid,invoicedate;
	  
----------------------------------------------------------------------------------------------------------------------------------------	  
	  
	  
SELECT 'VW_EXTRACTOR_FOF_LINE_013' ,
	   PHARMACYID,
       AVGPAYSALESDATE,
	   SUM (PHARMACYID)PHARMACYID ,
       SUM (INVOICEAMOUNT)INVOICEAMOUNT,
       SUM (PROVIDER_ID)PROVIDER_ID,
       SUM (DATA1),
       COUNT (*)
       FROM VW_EXTRACTOR_FOF_LINE_013
       WHERE AVGPAYSALESDATE='2018-07-25' and PHARMACYID='01025'
       GROUP BY PHARMACYID,AVGPAYSALESDATE
       UNION
SELECT 'VW_EXTRACTOR_FOF_LINE_013_MM' ,
	   PHARMACYID,
       AVGPAYSALESDATE,
	   SUM (PHARMACYID)PHARMACYID ,
       SUM (INVOICEAMOUNT)INVOICEAMOUNT,
       SUM (PROVIDER_ID)PROVIDER_ID,
       SUM (DATA1),
       COUNT (*)
       FROM VW_EXTRACTOR_FOF_LINE_013_MM
       WHERE AVGPAYSALESDATE='2018-07-25' and PHARMACYID='01025'
       GROUP BY PHARMACYID,AVGPAYSALESDATE
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
      
       
    
		
		

