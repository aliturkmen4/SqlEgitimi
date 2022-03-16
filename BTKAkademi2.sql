--AGGREGATE FUNCTIONS--
SELECT COUNT(*) FROM SALES -->Ka� sat�r oldu�una bakt�m (salesin i�inde)
-----------------------------------------------------------------------------------
SELECT * FROM SALES ORDER BY AMOUNT -->�r�nden ka� tane al�nd���na bakt�m en az 1 en fazla 10 oldu�unu g�rd�m!
SELECT  MIN(AMOUNT), MAX(AMOUNT) FROM SALES
-----------------------------------------------------------------------------------
SELECT COUNT(FICHENO), SUM(AMOUNT) FROM SALES 
-----------------------------------------------------------------------------------
SELECT AVG(AMOUNT) FROM SALES --> Ka� fatura var ve ne kadar satt�m averaj� bulmak i�in amount u f�cheno ya b�lebilirim!
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
