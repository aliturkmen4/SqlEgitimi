Select * from CUSTOMERS where CITY='ÝSTANBUL' AND DISTRICT='BEYLÝKDÜZÜ' 
OR DISTRICT='ESENLER' and GENDER='E'
-----------------------------------------------------------------------------------------------
Select * from CUSTOMERS where CITY='ÝSTANBUL' AND BIRTHDATE BETWEEN '19500101' and '20000101' 
AND GENDER='E'
-----------------------------------------------------------------------------------------------
Select * from CUSTOMERS where CITY='ÝSTANBUL' OR CITY='ÝZMÝR'
-----------------------------------------------------------------------------------------------
SELECT * FROM CUSTOMERS WHERE BIRTHDATE BETWEEN '19900101' AND '19981231'
SELECT * FROM CUSTOMERS WHERE BIRTHDATE>='19900101' AND BIRTHDATE<='19981231'
-----------------------------------------------------------------------------------------------
SELECT * FROM CUSTOMERS WHERE NOT BIRTHDATE BETWEEN '19900101' AND '19981231'
SELECT * FROM CUSTOMERS WHERE BIRTHDATE<='19900101' OR BIRTHDATE>='19981231'
-----------------------------------------------------------------------------------------------
SELECT * FROM CUSTOMERS
SELECT DISTINCT CITY FROM CUSTOMERS --81 ili geitirir!
select DISTINCT CITY,DISTRICT FROM CUSTOMERS WHERE CITY='ÝSTANBUL'
-----------------------------------------------------------------------------------------------
SELECT DISTINCT GENDER FROM CUSTOMERS
-----------------------------------------------------------------------------------------------
--ASC->ASCENDING(KÜÇÜKTEN BÜYÜÐE SIRALAMA)(DEFAULT OLARAK)
--DESC->DESCENDING(BÜYÜKTEN KÜÇÜÐE SIRALAMA)
-----------------------------------------------------------------------------------------------
SELECT * FROM CUSTOMERS -->DEFAULT SIRALAMA PRIMARY KEY'E GÖRE!
ORDER BY CUSTOMERNAME --ORDER BY CUSTOMERNAME ASC ÝLE AYNI ÇALIÞMA ÞEKLÝ
-----------------------------------------------------------------------------------------------
SELECT * FROM CUSTOMERS 
ORDER BY BIRTHDATE DESC
-----------------------------------------------------------------------------------------------
SELECT * FROM CUSTOMERS 
ORDER BY CITY -- ÞEHÝRE GÖRE SIRALADI ADANALARI KENDÝ ÝÇÝNDE ID SÝNÝ KÜÇÜKTEN BÜYÜÐE OLARAK EKRANA VERDÝ!
-----------------------------------------------------------------------------------------------
SELECT * FROM CUSTOMERS
ORDER BY CITY ASC,CUSTOMERNAME DESC
-----------------------------------------------------------------------------------------------
SELECT * FROM CUSTOMERS
WHERE CITY='ÝSTANBUL'
ORDER BY CITY,DISTRICT,CUSTOMERNAME
-----------------------------------------------------------------------------------------------
SELECT * FROM CUSTOMERS
WHERE CITY='ÝSTANBUL'
ORDER BY 1 -->1.kolona(ýd)'ye göre sýrala!
-----------------------------------------------------------------------------------------------
SELECT * FROM CUSTOMERS
WHERE CITY='ÝSTANBUL'
ORDER BY 4,2 -->önce ilçe sonra isime göre sýralar!
-----------------------------------------------------------------------------------------------
SELECT TOP 100 -->ÝLK 100 SATIRI ÝSME GÖRE SIRALAYIP GETÝR!
* FROM CUSTOMERS
ORDER BY CUSTOMERNAME
-----------------------------------------------------------------------------------------------
SELECT TOP 50 PERCENT -->ÝLK 500 SATIRI(%50SÝ)NÝ ÝSME GÖRE SIRALAYIP GETÝR!
* FROM CUSTOMERS
ORDER BY CUSTOMERNAME
-----------------------------------------------------------------------------------------------
