---STORED PROCEDURE: Server tarafýndan tutulan bir kez derlendikten sonra bir daha derlenmeyen Sorgudur.
--Parametre içerebilir. 
--Sadece ilk çalýþtýklarýnda derlenir.
--baðýmlýlýklara karþý parametreli yazýlýr böylece sistem güvenliði saðlanýr. 
--kurulum þekli view gibidir. 
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
--Soru: Category isimlerine göre bir prosedür yazýnýz. yazýnýz prosedürde execte categorisi beverages olanlarý çaðýýrýnýz. 
go
create proc CategoryNameList 
@CN nvarchar(50)
as
select * from Products where CategoryID=
(select CategoryID from Categories where CategoryName=@CN)
exec CategoryNameList 'Condiments'

