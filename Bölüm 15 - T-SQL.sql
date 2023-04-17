--T-SQL DE���KENLER
--Declare @Sayi int
--set @Sayi = 24
--SELECT @Sayi as 'Sonu�'

--Declare @Kisi1 varchar(20)
--set @Kisi1 = 'Sercan'
--SELECT @Kisi1

--Declare @Sayi1 int,	@Sayi2 int, @toplam int
--set @Sayi1 = 20
--set @Sayi2 = 30
--set @toplam = @Sayi1 + @Sayi2
--select @toplam

--�dev: 3 tane s�nav notu girilen ��rencinin ortalamas�n� hesaplayan sorgu
--Declare @sinav1 float, @sinav2 float, @sinav3 float, @ortalama decimal(5,2)
--set @sinav1 = 55
--set @sinav2 = 58
--set @sinav3 = 76
--set @ortalama = (@sinav1+@sinav2+@sinav3) / 3
--select @ortalama as 'Ortalama'

--T-SQL DE���KENLER �RNEK ALGOR�TMA SORUSU
--Sorgu k�sm�ndan g�nderilen 3 basamakl� say�y� basamaklar�na ay�ran sorguyu getiren ifadeyi yaz�n�z ve bu basamaklar� toplay�n�z.
--Declare @sayi int, @yuzler int, @onlar int, @birler int, @toplam int
--set @sayi = 123
--set @yuzler = @sayi / 100
--set @onlar = (@sayi / 10) % 10
--set @birler = @sayi % 10
--set @toplam = @yuzler + @onlar + @birler
--select @yuzler as 'Y�zler', @onlar as 'Onlar', @birler as 'Birler'
--select @toplam as 'Basamaklar� Toplam�'

--T-SQL TABLO ��� DE���KENLER
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

--S�STEM FONKS�YONLARI
--select @@SERVERNAME, @@ERROR, @@DEFAULT_LANGID, @@LANGUAGE, @@MAX_CONNECTIONS, @@MICROSOFTVERSION, @@IDENTITY, @@TEXTSIZE, @@VERSION
--Use SatisVT

--PRINT KULLANIMI
--Print 'Merhaba'

--Declare	@s1 int, @s2 int, @sonuc int
--set @s1 = 4
--set @s2 = 8
--set @sonuc = @s1 * @s2
--print '4 ile 8 say�lar�n�n �arp�m�'
--print '***************************'
--print @sonuc

--TABLO T�P� DE���KENLER
--Declare @Kisiler table
--(
--KisiID int identity(1,1),
--KisiAd varchar(10),
--KisiSehir varchar(15)
--)
--insert into @Kisiler (KisiAd,KisiSehir) values ('Sercan','�stanbul')
--insert into @Kisiler (KisiAd,KisiSehir) values ('Elif','�stanbul')
--select * from @Kisiler where KisiSehir like '%s%'

--IF ELSE KULLANIMI
--if(1<5)
--print 'Merhaba'
--else
--print 'Selam'

--select * from TBLURUNLER
--if(select SUM(URUNSTOK) from TBLURUNLER) > 100
--print 'Toplam �r�n Say�s� 100 den B�y�k'
--else
--print 'Toplam �r�n Say�s� 100 den K���k'

--if(select COUNT(*) from TBLURUNLER) > 20
--print '20 den fazla �e�it �r�n var'
--else
--print '20 den az �e�it �r�n var'

--Declare @urun varchar(10)
--set @urun = (select SUM(URUNSTOK) from TBLURUNLER)
--if @urun > 100
--print 'Toplam �r�n Say�s�: ' + @urun + ' 100 den b�y�k'
--else
--print 'Toplam �r�n Say�s�: ' + @urun + ' 100 den k���k'

--CASE KULLANIMI
--select URUNAD, URUNMARKA, URUNDURUM =
--CASE URUNDURUM
--WHEN '1' THEN '�R�N VAR'
--WHEN '0' THEN '�R�N YOK'
--END
--from TBLURUNLER

--select URUNAD, URUNMARKA, KATEGORI =
--CASE KATEGORI
--WHEN '1' THEN 'LAPTOP'
--WHEN '2' THEN 'BEYAZ E�YA'
--WHEN '3' THEN 'K���K EV ALET�'
--END
--from TBLURUNLER

--CASE �LE KR�T�K SEV�YE BULMAK
--CREATE PROCEDURE TEST4
--AS
--select URUNAD,URUNMARKA,URUNSTOK,URUNSTOK =
--CASE
--WHEN URUNSTOK >= 1 AND URUNSTOK <= 5 THEN 'KR�T�K SEV�YE'
--WHEN URUNSTOK >= 6 AND URUNSTOK <= 10 THEN 'TAKV�YE YAPILMALI'
--WHEN URUNSTOK > 10 THEN '�R�N STOK SAYISI YETERL�'
--END
--from TBLURUNLER

--WHILE D�NG�S�
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
--print '1 ile 10 Aras�ndaki Say�lar�n Toplam�'
--print '-------------------------------------'
--print @toplam

--select avg(URUNSATISFIYAT - URUNALISFIYAT) from TBLURUNLER

--while (select avg(URUNSATISFIYAT - URUNALISFIYAT) from TBLURUNLER where KATEGORI = 2) <= 450
--begin
--UPDATE TBLURUNLER set URUNSATISFIYAT += URUNSATISFIYAT * 10 / 100
--end
--select * from TBLURUNLER

--Toplam �r�n say�s� (�r�n stok) 200'� ge�ene kadar her birine birer tane �r�n ekleyen sorgu
--while (select SUM(URUNSTOK) from TBLURUNLER) <= 200
--begin
--update TBLURUNLER set URUNSTOK += 1
--end

--WAITFOR KULLANIMI
--waitfor delay '00:00:05'
--select * from TBLURUNLER

--waitfor delay '00:00:05'
--insert into TBLKATEGORI (KATEGORIAD) values ('D��ER')
--select * from TBLKATEGORI