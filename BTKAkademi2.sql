--AGGREGATE FUNCTIONS--
SELECT COUNT(*) FROM SALES -->Kaç satýr olduðuna baktým (salesin içinde)
-----------------------------------------------------------------------------------
SELECT * FROM SALES ORDER BY AMOUNT -->Üründen kaç tane alýndýðýna baktým en az 1 en fazla 10 olduðunu gördüm!
SELECT  MIN(AMOUNT), MAX(AMOUNT) FROM SALES
-----------------------------------------------------------------------------------
SELECT COUNT(FICHENO), SUM(AMOUNT) FROM SALES 
-----------------------------------------------------------------------------------
SELECT AVG(AMOUNT) FROM SALES --> Kaç fatura var ve ne kadar sattým averajý bulmak için amount u fýcheno ya bölebilirim!
-----------------------------------------------------------------------------------
SELECT MIN(TOTALPRICE),MAX(TOTALPRICE),COUNT(FICHENO),SUM(TOTALPRICE),AVG(TOTALPRICE)
FROM SALES WHERE CITY='ADANA'
SELECT MIN(TOTALPRICE),MAX(TOTALPRICE),COUNT(FICHENO),SUM(TOTALPRICE),AVG(TOTALPRICE)
FROM SALES WHERE CITY='ANKARA'
-----------------------------------------------------------------------------------
--GROUP BY--
SELECT
CITY,
MIN(TOTALPRICE) AS MINPRICE,
MAX(TOTALPRICE) AS MAXPRICE,
COUNT(FICHENO) AS ROWCOUNT_,
SUM(TOTALPRICE) AS TOTALPRICE ,
AVG(TOTALPRICE) AS AVGPRICE
FROM SALES
GROUP BY CITY
ORDER BY CITY
-----------------------------------------------------------------------------------
SELECT
CITY,SUM(TOTALPRICE) AS TOTALPRICE
FROM SALES
GROUP BY CITY
ORDER BY SUM(TOTALPRICE) DESC
-----------------------------------------------------------------------------------
