--T-SQL DEÐÝÞKENLER
--Declare @Sayi int
--set @Sayi = 24
--SELECT @Sayi as 'Sonuç'

--Declare @Kisi1 varchar(20)
--set @Kisi1 = 'Sercan'
--SELECT @Kisi1

--Declare @Sayi1 int,	@Sayi2 int, @toplam int
--set @Sayi1 = 20
--set @Sayi2 = 30
--set @toplam = @Sayi1 + @Sayi2
--select @toplam

--Ödev: 3 tane sýnav notu girilen öðrencinin ortalamasýný hesaplayan sorgu
--Declare @sinav1 float, @sinav2 float, @sinav3 float, @ortalama decimal(5,2)
--set @sinav1 = 55
--set @sinav2 = 58
--set @sinav3 = 76
--set @ortalama = (@sinav1+@sinav2+@sinav3) / 3
--select @ortalama as 'Ortalama'

--T-SQL DEÐÝÞKENLER ÖRNEK ALGORÝTMA SORUSU
--Sorgu kýsmýndan gönderilen 3 basamaklý sayýyý basamaklarýna ayýran sorguyu getiren ifadeyi yazýnýz ve bu basamaklarý toplayýnýz.
--Declare @sayi int, @yuzler int, @onlar int, @birler int, @toplam int
--set @sayi = 123
--set @yuzler = @sayi / 100
--set @onlar = (@sayi / 10) % 10
--set @birler = @sayi % 10
--set @toplam = @yuzler + @onlar + @birler
--select @yuzler as 'Yüzler', @onlar as 'Onlar', @birler as 'Birler'
--select @toplam as 'Basamaklarý Toplamý'

--T-SQL TABLO ÝÇÝ DEÐÝÞKENLER
--use SatisVT
--select * from TBLMUSTERI
--Declare @Bakiye int
--set @Bakiye = (select max(MUSTERIBAKIYE) from TBLMUSTERI)
--select @Bakiye

--select * from TBLURUNLER
--Declare @Stok int
--set @Stok = (select max(URUNSTOK) from TBLURUNLER)
--select @Stok
--select * from TBLURUNLER where URUNSTOK = @Stok

--SÝSTEM FONKSÝYONLARI
--select @@SERVERNAME, @@ERROR, @@DEFAULT_LANGID, @@LANGUAGE, @@MAX_CONNECTIONS, @@MICROSOFTVERSION, @@IDENTITY, @@TEXTSIZE, @@VERSION
--Use SatisVT

--PRINT KULLANIMI
--Print 'Merhaba'

--Declare	@s1 int, @s2 int, @sonuc int
--set @s1 = 4
--set @s2 = 8
--set @sonuc = @s1 * @s2
--print '4 ile 8 sayýlarýnýn çarpýmý'
--print '***************************'
--print @sonuc

--TABLO TÝPÝ DEÐÝÞKENLER
--Declare @Kisiler table
--(
--KisiID int identity(1,1),
--KisiAd varchar(10),
--KisiSehir varchar(15)
--)
--insert into @Kisiler (KisiAd,KisiSehir) values ('Sercan','Ýstanbul')
--insert into @Kisiler (KisiAd,KisiSehir) values ('Elif','Ýstanbul')
--select * from @Kisiler where KisiSehir like '%s%'

--IF ELSE KULLANIMI
--if(1<5)
--print 'Merhaba'
--else
--print 'Selam'

--select * from TBLURUNLER
--if(select SUM(URUNSTOK) from TBLURUNLER) > 100
--print 'Toplam Ürün Sayýsý 100 den Büyük'
--else
--print 'Toplam Ürün Sayýsý 100 den Küçük'

--if(select COUNT(*) from TBLURUNLER) > 20
--print '20 den fazla çeþit ürün var'
--else
--print '20 den az çeþit ürün var'

--Declare @urun varchar(10)
--set @urun = (select SUM(URUNSTOK) from TBLURUNLER)
--if @urun > 100
--print 'Toplam Ürün Sayýsý: ' + @urun + ' 100 den büyük'
--else
--print 'Toplam Ürün Sayýsý: ' + @urun + ' 100 den küçük'

--CASE KULLANIMI
--select URUNAD, URUNMARKA, URUNDURUM =
--CASE URUNDURUM
--WHEN '1' THEN 'ÜRÜN VAR'
--WHEN '0' THEN 'ÜRÜN YOK'
--END
--from TBLURUNLER

--select URUNAD, URUNMARKA, KATEGORI =
--CASE KATEGORI
--WHEN '1' THEN 'LAPTOP'
--WHEN '2' THEN 'BEYAZ EÞYA'
--WHEN '3' THEN 'KÜÇÜK EV ALETÝ'
--END
--from TBLURUNLER

--CASE ÝLE KRÝTÝK SEVÝYE BULMAK
--CREATE PROCEDURE TEST4
--AS
--select URUNAD,URUNMARKA,URUNSTOK,URUNSTOK =
--CASE
--WHEN URUNSTOK >= 1 AND URUNSTOK <= 5 THEN 'KRÝTÝK SEVÝYE'
--WHEN URUNSTOK >= 6 AND URUNSTOK <= 10 THEN 'TAKVÝYE YAPILMALI'
--WHEN URUNSTOK > 10 THEN 'ÜRÜN STOK SAYISI YETERLÝ'
--END
--from TBLURUNLER

--WHILE DÖNGÜSÜ
--Declare @sayac int
--set @sayac = 1
--while @sayac <= 5
--begin
--print 'Merhaba SQL Dersleri'
--set @sayac = @sayac + 1
--end

--Declare @sayi int
--set @sayi = 1
--while @sayi <= 10
--begin
--print @sayi
--set @sayi += 1
--end

--Declare @sayac int, @toplam int
--set @sayac = 1
--set @toplam = 0
--while (@sayac <= 10)
--begin
--set @toplam += @sayac
--set @sayac+=1
--end
--print '1 ile 10 Arasýndaki Sayýlarýn Toplamý'
--print '-------------------------------------'
--print @toplam

--select avg(URUNSATISFIYAT - URUNALISFIYAT) from TBLURUNLER

--while (select avg(URUNSATISFIYAT - URUNALISFIYAT) from TBLURUNLER where KATEGORI = 2) <= 450
--begin
--UPDATE TBLURUNLER set URUNSATISFIYAT += URUNSATISFIYAT * 10 / 100
--end
--select * from TBLURUNLER

--Toplam ürün sayýsý (ürün stok) 200'ü geçene kadar her birine birer tane ürün ekleyen sorgu
--while (select SUM(URUNSTOK) from TBLURUNLER) <= 200
--begin
--update TBLURUNLER set URUNSTOK += 1
--end

--WAITFOR KULLANIMI
--waitfor delay '00:00:05'
--select * from TBLURUNLER

--waitfor delay '00:00:05'
--insert into TBLKATEGORI (KATEGORIAD) values ('DÝÐER')
--select * from TBLKATEGORI