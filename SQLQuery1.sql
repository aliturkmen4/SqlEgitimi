---STORED PROCEDURE: Server taraf�ndan tutulan bir kez derlendikten sonra bir daha derlenmeyen Sorgudur.
--Parametre i�erebilir. 
--Sadece ilk �al��t�klar�nda derlenir.
--ba��ml�l�klara kar�� parametreli yaz�l�r b�ylece sistem g�venli�i sa�lan�r. 
--kurulum �ekli view gibidir. 
create proc p_KargoFirmaEkle2 as
insert into Shippers(CompanyName,Phone) values ('Grup165','45778541')
exec p_KargoFirmaEkle2
delete from Shippers where ShipperID between 4 and 35
select*from Shippers
-----------------------
go
alter proc p_KargoFirmaEkle2
@cn nvarchar(40),
@ph nvarchar(24)
as
insert Shippers(CompanyName,Phone)values(@cn,@ph)
exec p_KargoFirmaEkle2 'Grup165-','123456789'
-----------------------
--Soru: Category isimlerine g�re bir prosed�r yaz�n�z. yaz�n�z prosed�rde execte categorisi beverages olanlar� �a���r�n�z. 
go
create proc CategoryNameList 
@CN nvarchar(50)
as
select * from Products where CategoryID=
(select CategoryID from Categories where CategoryName=@CN)
exec CategoryNameList 'Condiments'

