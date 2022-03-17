------------STRING VERÝLER--------------
--ASCII ->ÝÇERÝSÝNE ALDIÐI ÝFADENÝN ASCII CÝNSÝNDEN DEÐERÝNÝ VERÝR!
SELECT ASCII('A')
SELECT ASCII('Ö')
SELECT ASCII('1')
--------------------------------------------------------------------------------------------------------------------------------------
--CHAR ->ASCII DEÐERÝ GÝRÝLEN ÝFADENÝN HANGÝ KARAKTER OLDUÐUNU GETÝRÝR!(ASCII'NIN TERS ÝÞLEMÝ)
SELECT CHAR(214)
SELECT ASCII(CHAR(49)) --> 49 DEÐERÝNÝ GÖRÜRÜM!
--------------------------------------------------------------------------------------------------------------------------------------
--SUBSTRING ->BÝR STRÝNG'IN ÝÇERÝSÝNDE BELÝRLÝ BÝR NOKTADAN BELÝRLÝ BÝR NOKTAYA KADAR OLAN ALANI PARÇALAMAYA YARAR!(ÇOK KULLANILIR!)
SELECT SUBSTRING('ALÝ TÜRKMEN',6,3) -->6.KARAKTERDEN BAÞLA 3ÜNÜ BANA GETÝR!(ÜRK)
-------------------------------------------------------------------------------------------------------------------------------------
SELECT * FROM CUSTOMERS WHERE CUSTOMERNAME LIKE 'O%' -->AÞAÐIDAKÝ KODLA AYNI ÝÞÝ YAPAR! ÝLK HARFÝ O OLANLARI GETÝRÝR!
SELECT * FROM CUSTOMERS WHERE SUBSTRING(CUSTOMERNAME,1,1)='O' -->YUKARIDAKÝ KODLA AYNI ÝÞÝ YAPAR!
--------------------------------------------------------------------------------------------------------------------------------------
SELECT * FROM CUSTOMERS WHERE CUSTOMERNAME LIKE '%O' -->SON HARFÝ O OLANLARI GETÝR!
SELECT * FROM CUSTOMERS WHERE SUBSTRING(CUSTOMERNAME,LEN(CUSTOMERNAME),1)='O' -->LEN ÝFADENÝN UZUNLUÐUNU BULUR YANÝ SON HARFÝ BULMAK ÝÇÝN ÝFADENÝN UZUNLUÐUNU BULUP ONU GETÝR DERÝZ! YUKARIDAKÝ KODLA AYNI ÝÞÝ YAPAR!
--------------------------------------------------------------------------------------------------------------------------------------
--LEN ->UZUNLUK BULUR.
SELECT LEN('Ali')
--------------------------------------------------------------------------------------------------------------------------------------
--CHARINDEX -->BÝR STRING'IN ÝÇERÝSÝNDE BAÞKA BÝR STRÝNGÝ BULDURUP POZÝSYONUNU SÖYLER!
SELECT CHARINDEX('F','ÖMER FARUK ÇOLAKOÐLU',1) -->NE ARAMAK ÝSTÝYORSUN? NEYÝN ÝÇÝNDE ARAYACAKSIN? NEREDEN ARAMAYA BAÞLAYALIM?
--------------------------------------------------------------------------------------------------------------------------------------
--CONCAT --> ÝKÝ VEYA DAHA FAZLA STRÝNGIN YAN YANA BÝRLEÞTÝRÝLMESÝNÝ SAÐLAR!
SELECT CONCAT('Ali',' ','Türkmen')
SELECT CONCAT_WS(' ','Ali','Türkmen') --> BURADA ÖNCE KELÝMELERÝN ARASINA HANGÝ SEPERATORU KOYACAGIMI SONRA KELÝMELERÝ GÝRÝYORUM!
--------------------------------------------------------------------------------------------------------------------------------------
SELECT -->AÞAÐIDAKÝ 3 SATIR AYNI ÝÞLEMÝ YAPAR!!!!
--CUSTOMERNAME+' '+ CITY +' '+DISTRICT
--CONCAT(CUSTOMERNAME,' ',CITY,' ',DISTRICT)
CONCAT_WS(' ',CUSTOMERNAME,CITY,DISTRICT)
FROM CUSTOMERS
--------------------------------------------------------------------------------------------------------------------------------------
-->FORMAT -->SAYI YA DA TARÝH TÜRÜNDEKÝ DEÐERLERÝ LOCAL OLARAK ÝSTENÝLEN FORMATTA YAZDIRMAYI SAÐLAR!(CULTURE)
SELECT FORMAT(GETDATE(),'d','en-us') --> NE OLARAK VE HANGÝ FORMATTA GÖRMEK ÝSTÝYORSUN?
--------------------------------------------------------------------------------------------------------------------------------------
--LEFT,RIGHT,LEN --> BÝR TANESÝ SOLDAN BÝR TANESÝ SAÐDAN ÝSTEDÝÐÝMÝZ KADAR KARAKTER ALMAMIZI SAÐLAR!
SELECT LEFT('ALÝ TÜRKMEN',4)--> EN BAÞTAKÝ 4 KARAKTERÝ ALIR!
SELECT RIGHT('ALÝ TÜRKMEN',4)-->EN SONDAN 4 KARAKTERÝ ALIR!
--ADIMI AYRI AYRI YAZDIRMAK ÝSTÝYORUM--
SELECT LEFT('ALÝ TÜRKMEN',3)
SELECT RIGHT('ALÝ TÜRKMEN',7) -->AYNI ÝÞLEMÝ FONKSÝYONLARLA YAPARSAM DAHA SAÐLIKLI!
----------------------------------------
SELECT LEFT('ALÝ TÜRKMEN',CHARINDEX(' ','ALÝ TÜRKMEN')) -->ALÝ TÜRKMEN'IN ÝÇÝNDE BOÞLUÐU BULANA KADAR ARAR VE BOÞLUÐU BULUNCA SOLDA KALANLARI YANÝ ALÝ YÝ GETÝRÝR!
SELECT RIGHT('ALÝ TÜRKMEN',LEN('ALÝ TÜRKMEN')-CHARINDEX(' ','ALÝ TÜRKMEN')) -->ALÝ TÜRKMEN UZUNLUÐUNDAN ALÝ TÜRKMENÝN CHAR ÝNDEXÝNÝ ÇIKARINCA KALAN KISIM SOYADI VERECEK OLAN 7YÝ VERÝR!
---------------------------------------------------------------------------------------------------------------------------------------
--TRIM,LTRIM,RTRIM -->BOÞLUKLARI TEMÝZLEMEK ÝÇÝN KULLANILIR!
SELECT TRIM('  ALÝ TÜRKMEN  ')-->BAÞINDAKÝ VE SONUNDAKÝ BOÞLUKLARI TEMÝZLER!(ORTADAKÝLERÝ TEMÝZLEMEZ DÝKKAT ET!!!)
SELECT LTRIM('      ALÝ TÜRKMEN  ')-->BAÞTAKÝ BOÞLUKLARI TEMÝZLER!
SELECT RTRIM('  ALÝ TÜRKMEN      ')-->SONDAKÝ BOÞLUKLARI TEMÝZLER!
SELECT LTRIM(RTRIM('  ALÝ TÜRKMEN  ')--> TRIM LE AYNI ÝÞÝ YAPAR!!
---------------------------------------------------------------------------------------------------------------------------------------
--LOWER,UPPER,REVERSE,REPLICATE --> LOWER VE UPPER BÜYÜK HARF KÜÇÜK HARF FONKSÝYONLARIDIR--
SELECT LOWER('ALÝ')
SELECT UPPER('ali')
-->REVERSE TERSTEN YAZDIRMA FONSÝYONUDUR!
SELECT REVERSE('ALÝ TÜRKMEN')
-->REPLICATE -->BÝRDEN FAZLA TEKRAR ETMESÝNÝ SAÐLAR!!
SELECT REPLICATE('0',10) -->10 TANE 0I YANYANA YAZAR!
--00000001 --> SAYI 8 HANE OLACAK ÞEKÝLDE BAÞINA 0 KOYMASINI ÝSTÝYORUM, BUNUN ÝÇÝN BURADA 7 SIFIRA ÝHTÝYAÇ VAR!
--00000178 -->BURADA 5 SIFIRA ÝHTÝYAÇ VAR!
--BUNU DÝNAMÝKLEÞTÝRMEK ÝÇÝN->
--REPLICATE('0',8-LEN(SIRANO)) -->BURADA SIRA NO SAYILARIN SIFIRSIZ HALÝ!
---------------------------------------------------------------------------------------------------------------------------------------
--REPLACE -->BÝR ÞEY ÝLE BÝR ÞEYÝ YER DEÐÝÞTÝREN FONKSÝYON!
SELECT ALÝ TÜRKMEN
SELECT REPLACE('ALÝ TÜRKMEN','ALÝ','ALÝ FARUK') -->NEYÝ DEÐÝÞTÝRÝCEM, ÝÇÝNDE NEYÝ ARIYACAÐIM, NE ÝLE DEÐÝÞTÝRECEÐÝM???
