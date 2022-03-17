------------STRING VER�LER--------------
--ASCII ->��ER�S�NE ALDI�I �FADEN�N ASCII C�NS�NDEN DE�ER�N� VER�R!
SELECT ASCII('A')
SELECT ASCII('�')
SELECT ASCII('1')
--------------------------------------------------------------------------------------------------------------------------------------
--CHAR ->ASCII DE�ER� G�R�LEN �FADEN�N HANG� KARAKTER OLDU�UNU GET�R�R!(ASCII'NIN TERS ��LEM�)
SELECT CHAR(214)
SELECT ASCII(CHAR(49)) --> 49 DE�ER�N� G�R�R�M!
--------------------------------------------------------------------------------------------------------------------------------------
--SUBSTRING ->B�R STR�NG'IN ��ER�S�NDE BEL�RL� B�R NOKTADAN BEL�RL� B�R NOKTAYA KADAR OLAN ALANI PAR�ALAMAYA YARAR!(�OK KULLANILIR!)
SELECT SUBSTRING('AL� T�RKMEN',6,3) -->6.KARAKTERDEN BA�LA 3�N� BANA GET�R!(�RK)
-------------------------------------------------------------------------------------------------------------------------------------
SELECT * FROM CUSTOMERS WHERE CUSTOMERNAME LIKE 'O%' -->A�A�IDAK� KODLA AYNI ��� YAPAR! �LK HARF� O OLANLARI GET�R�R!
SELECT * FROM CUSTOMERS WHERE SUBSTRING(CUSTOMERNAME,1,1)='O' -->YUKARIDAK� KODLA AYNI ��� YAPAR!
--------------------------------------------------------------------------------------------------------------------------------------
SELECT * FROM CUSTOMERS WHERE CUSTOMERNAME LIKE '%O' -->SON HARF� O OLANLARI GET�R!
SELECT * FROM CUSTOMERS WHERE SUBSTRING(CUSTOMERNAME,LEN(CUSTOMERNAME),1)='O' -->LEN �FADEN�N UZUNLU�UNU BULUR YAN� SON HARF� BULMAK ���N �FADEN�N UZUNLU�UNU BULUP ONU GET�R DER�Z! YUKARIDAK� KODLA AYNI ��� YAPAR!
--------------------------------------------------------------------------------------------------------------------------------------
--LEN ->UZUNLUK BULUR.
SELECT LEN('Ali')
--------------------------------------------------------------------------------------------------------------------------------------
--CHARINDEX -->B�R STRING'IN ��ER�S�NDE BA�KA B�R STR�NG� BULDURUP POZ�SYONUNU S�YLER!
SELECT CHARINDEX('F','�MER FARUK �OLAKO�LU',1) -->NE ARAMAK �ST�YORSUN? NEY�N ���NDE ARAYACAKSIN? NEREDEN ARAMAYA BA�LAYALIM?
--------------------------------------------------------------------------------------------------------------------------------------
--CONCAT --> �K� VEYA DAHA FAZLA STR�NGIN YAN YANA B�RLE�T�R�LMES�N� SA�LAR!
SELECT CONCAT('Ali',' ','T�rkmen')
SELECT CONCAT_WS(' ','Ali','T�rkmen') --> BURADA �NCE KEL�MELER�N ARASINA HANG� SEPERATORU KOYACAGIMI SONRA KEL�MELER� G�R�YORUM!
--------------------------------------------------------------------------------------------------------------------------------------
SELECT -->A�A�IDAK� 3 SATIR AYNI ��LEM� YAPAR!!!!
--CUSTOMERNAME+' '+ CITY +' '+DISTRICT
--CONCAT(CUSTOMERNAME,' ',CITY,' ',DISTRICT)
CONCAT_WS(' ',CUSTOMERNAME,CITY,DISTRICT)
FROM CUSTOMERS
--------------------------------------------------------------------------------------------------------------------------------------
-->FORMAT -->SAYI YA DA TAR�H T�R�NDEK� DE�ERLER� LOCAL OLARAK �STEN�LEN FORMATTA YAZDIRMAYI SA�LAR!(CULTURE)
SELECT FORMAT(GETDATE(),'d','en-us') --> NE OLARAK VE HANG� FORMATTA G�RMEK �ST�YORSUN?
--------------------------------------------------------------------------------------------------------------------------------------
--LEFT,RIGHT,LEN --> B�R TANES� SOLDAN B�R TANES� SA�DAN �STED���M�Z KADAR KARAKTER ALMAMIZI SA�LAR!
SELECT LEFT('AL� T�RKMEN',4)--> EN BA�TAK� 4 KARAKTER� ALIR!
SELECT RIGHT('AL� T�RKMEN',4)-->EN SONDAN 4 KARAKTER� ALIR!
--ADIMI AYRI AYRI YAZDIRMAK �ST�YORUM--
SELECT LEFT('AL� T�RKMEN',3)
SELECT RIGHT('AL� T�RKMEN',7) -->AYNI ��LEM� FONKS�YONLARLA YAPARSAM DAHA SA�LIKLI!
----------------------------------------
SELECT LEFT('AL� T�RKMEN',CHARINDEX(' ','AL� T�RKMEN')) -->AL� T�RKMEN'IN ���NDE BO�LU�U BULANA KADAR ARAR VE BO�LU�U BULUNCA SOLDA KALANLARI YAN� AL� Y� GET�R�R!
SELECT RIGHT('AL� T�RKMEN',LEN('AL� T�RKMEN')-CHARINDEX(' ','AL� T�RKMEN')) -->AL� T�RKMEN UZUNLU�UNDAN AL� T�RKMEN�N CHAR �NDEX�N� �IKARINCA KALAN KISIM SOYADI VERECEK OLAN 7Y� VER�R!
---------------------------------------------------------------------------------------------------------------------------------------
--TRIM,LTRIM,RTRIM -->BO�LUKLARI TEM�ZLEMEK ���N KULLANILIR!
SELECT TRIM('  AL� T�RKMEN  ')-->BA�INDAK� VE SONUNDAK� BO�LUKLARI TEM�ZLER!(ORTADAK�LER� TEM�ZLEMEZ D�KKAT ET!!!)
SELECT LTRIM('      AL� T�RKMEN  ')-->BA�TAK� BO�LUKLARI TEM�ZLER!
SELECT RTRIM('  AL� T�RKMEN      ')-->SONDAK� BO�LUKLARI TEM�ZLER!
SELECT LTRIM(RTRIM('  AL� T�RKMEN  ')--> TRIM LE AYNI ��� YAPAR!!
---------------------------------------------------------------------------------------------------------------------------------------
--LOWER,UPPER,REVERSE,REPLICATE --> LOWER VE UPPER B�Y�K HARF K���K HARF FONKS�YONLARIDIR--
SELECT LOWER('AL�')
SELECT UPPER('ali')
-->REVERSE TERSTEN YAZDIRMA FONS�YONUDUR!
SELECT REVERSE('AL� T�RKMEN')
-->REPLICATE -->B�RDEN FAZLA TEKRAR ETMES�N� SA�LAR!!
SELECT REPLICATE('0',10) -->10 TANE 0I YANYANA YAZAR!
--00000001 --> SAYI 8 HANE OLACAK �EK�LDE BA�INA 0 KOYMASINI �ST�YORUM, BUNUN ���N BURADA 7 SIFIRA �HT�YA� VAR!
--00000178 -->BURADA 5 SIFIRA �HT�YA� VAR!
--BUNU D�NAM�KLE�T�RMEK ���N->
--REPLICATE('0',8-LEN(SIRANO)) -->BURADA SIRA NO SAYILARIN SIFIRSIZ HAL�!
---------------------------------------------------------------------------------------------------------------------------------------
--REPLACE -->B�R �EY �LE B�R �EY� YER DE���T�REN FONKS�YON!
SELECT AL� T�RKMEN
SELECT REPLACE('AL� T�RKMEN','AL�','AL� FARUK') -->NEY� DE���T�R�CEM, ���NDE NEY� ARIYACA�IM, NE �LE DE���T�RECE��M???
