Select * from CUSTOMERS where CITY='�STANBUL' AND DISTRICT='BEYL�KD�Z�' 
OR DISTRICT='ESENLER' and GENDER='E'
-----------------------------------------------------------------------------------------------
Select * from CUSTOMERS where CITY='�STANBUL' AND BIRTHDATE BETWEEN '19500101' and '20000101' 
AND GENDER='E'
-----------------------------------------------------------------------------------------------
Select * from CUSTOMERS where CITY='�STANBUL' OR CITY='�ZM�R'
-----------------------------------------------------------------------------------------------
SELECT * FROM CUSTOMERS WHERE BIRTHDATE BETWEEN '19900101' AND '19981231'
SELECT * FROM CUSTOMERS WHERE BIRTHDATE>='19900101' AND BIRTHDATE<='19981231'
-----------------------------------------------------------------------------------------------
SELECT * FROM CUSTOMERS WHERE NOT BIRTHDATE BETWEEN '19900101' AND '19981231'
SELECT * FROM CUSTOMERS WHERE BIRTHDATE<='19900101' OR BIRTHDATE>='19981231'
-----------------------------------------------------------------------------------------------
SELECT * FROM CUSTOMERS
SELECT DISTINCT CITY FROM CUSTOMERS --81 ili geitirir!
select DISTINCT CITY,DISTRICT FROM CUSTOMERS WHERE CITY='�STANBUL'
-----------------------------------------------------------------------------------------------
SELECT DISTINCT GENDER FROM CUSTOMERS
-----------------------------------------------------------------------------------------------
--ASC->ASCENDING(K���KTEN B�Y��E SIRALAMA)(DEFAULT OLARAK)
--DESC->DESCENDING(B�Y�KTEN K����E SIRALAMA)
-----------------------------------------------------------------------------------------------
SELECT * FROM CUSTOMERS -->DEFAULT SIRALAMA PRIMARY KEY'E G�RE!
ORDER BY CUSTOMERNAME --ORDER BY CUSTOMERNAME ASC �LE AYNI �ALI�MA �EKL�
-----------------------------------------------------------------------------------------------
SELECT * FROM CUSTOMERS 
ORDER BY BIRTHDATE DESC
-----------------------------------------------------------------------------------------------
SELECT * FROM CUSTOMERS 
ORDER BY CITY -- �EH�RE G�RE SIRALADI ADANALARI KEND� ���NDE ID S�N� K���KTEN B�Y��E OLARAK EKRANA VERD�!
-----------------------------------------------------------------------------------------------
SELECT * FROM CUSTOMERS
ORDER BY CITY ASC,CUSTOMERNAME DESC
-----------------------------------------------------------------------------------------------
SELECT * FROM CUSTOMERS
WHERE CITY='�STANBUL'
ORDER BY CITY,DISTRICT,CUSTOMERNAME
-----------------------------------------------------------------------------------------------
SELECT * FROM CUSTOMERS
WHERE CITY='�STANBUL'
ORDER BY 1 -->1.kolona(�d)'ye g�re s�rala!
-----------------------------------------------------------------------------------------------
SELECT * FROM CUSTOMERS
WHERE CITY='�STANBUL'
ORDER BY 4,2 -->�nce il�e sonra isime g�re s�ralar!
-----------------------------------------------------------------------------------------------
SELECT TOP 100 -->�LK 100 SATIRI �SME G�RE SIRALAYIP GET�R!
* FROM CUSTOMERS
ORDER BY CUSTOMERNAME
-----------------------------------------------------------------------------------------------
SELECT TOP 50 PERCENT -->�LK 500 SATIRI(%50S�)N� �SME G�RE SIRALAYIP GET�R!
* FROM CUSTOMERS
ORDER BY CUSTOMERNAME
-----------------------------------------------------------------------------------------------
