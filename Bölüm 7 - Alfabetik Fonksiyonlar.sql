--UPPER VE LOWER FONKSÝYONLARI

--SELECT UPPER('merhaba') AS 'Sütun'

--SELECT UPPER(OGRAD) AS 'ÖÐRENCÝ ADI', upper(OGRSOYAD) as 'ÖÐRENCÝ SOYADI', LOWER(OGRSEHIR) AS 'ÞEHÝR' FROM TBLOGRENCILER

--Þehri Adana olan ve biliþim kulübünde bulunan öðrencilerin adýný büyük soyadýný küçük harf getiren sorguyu yazýnýz.
--SELECT UPPER(OGRAD) + ' ' + LOWER(OGRSOYAD) AS 'Adý Soyadý',OGRSEHIR AS 'Þehir',KULUPAD AS 'Kulüp' FROM TBLOGRENCILER
--INNER JOIN TBLKULUPLER ON TBLOGRENCILER.OGRKULUP = TBLKULUPLER.KULUPID
--WHERE OGRSEHIR = 'Adana' AND KULUPAD = 'Biliþim'

--SUBSTRING KOMUTU
--SELECT SUBSTRING(OGRAD,1,2) FROM TBLOGRENCILER
--SELECT SUBSTRING(OGRAD,3,2) FROM TBLOGRENCILER
--SELECT SUBSTRING(OGRAD,1,1) + '. ' + OGRSOYAD AS 'AD SOYAD', OGRKULUP FROM TBLOGRENCILER

--Öðrencinin kulübünün ilk 3 harfini getiren sorguyu yazýnýz.
--SELECT SUBSTRING(OGRAD,1,1) + '. ' + OGRSOYAD AS 'Adý Soyadý', SUBSTRING(KULUPAD,1,3) AS 'Kulüpler' FROM TBLOGRENCILER
--INNER JOIN TBLKULUPLER ON TBLOGRENCILER.OGRKULUP = TBLKULUPLER.KULUPID

--LEFT RIGHT FONKSÝYONLARI
--SELECT LEFT('MERHABA DÜNYA',9), RIGHT('MERHABA ÝSTANBUL',2)
--SELECT LEFT(OGRAD,1) + '. ' + OGRSOYAD AS 'Ad Soyad' FROM TBLOGRENCILER

--SELECT LEFT(DERSAD,3),AVG(ORTALAMA) FROM TBLNOTLAR 
--INNER JOIN TBLDERSLER ON TBLDERSLER.DERSID = TBLNOTLAR.DERS
--GROUP BY DERSAD

----Ortalama kýsmýndaki virgülden sonraki 2 basamaðý gösteren sorgu
--SELECT CAST(AVG(ORTALAMA) AS decimal(5,2)) FROM TBLNOTLAR

--LEN KULLANIMI
--SELECT LEN('Merhaba')
--SELECT OGRAD,LEN(OGRAD),OGRKULUP FROM TBLOGRENCILER WHERE OGRSEHIR = 'Adana'
--AND OGRKULUP = (SELECT KULUPID FROM TBLKULUPLER WHERE KULUPAD = 'Biliþim')

--SELECT * FROM TBLOGRENCILER WHERE LEN(OGRAD) = 4 OR LEN(OGRAD) = 3

--Ýsim + soyismin toplamý 3 ile 7 karakter arasýnda olan öðrencileri getiren sorguyu yazýn.
--1. yol
--SELECT * FROM TBLOGRENCILER WHERE LEN(OGRAD) + LEN(OGRSOYAD) IN (3,7)
--2. yol
--SELECT * FROM TBLOGRENCILER WHERE (LEN(OGRAD + OGRSOYAD)) BETWEEN 3 AND 7

--LTRIM RTRIM REPLACE KOMUTLARI
--SELECT LTRIM('          Korkma Sönmez Bu Þafaklarda Yüzen Al Sancak          ')
--SELECT RTRIM('          Korkma Sönmez Bu Þafaklarda Yüzen Al Sancak          ')
--SELECT REPLACE('Sercan KURBAN','KURBAN','K.BAN')
--SELECT REPLACE('Merhaba bugün hava soðuk','a','e')
--1. Parametre Ana Kelime Cümle
--2. Parametre Bulunacak Deðer
--3. Parametre Yeni Deðer

--Birden fazla deðeri deðiþtirmek için kullanýlan sorgu
--SELECT REPLACE(REPLACE(REPLACE('Merhaba Bugün Hava Soðuk', 'ü', 'u'), 'ð', 'g'), 'Soguk', 'Sýcak')

--CHARINDEX VE REVERSE KOMUTLARI
--SELECT CHARINDEX('a','SQL Derslerine Devam Ediyoruz')
--SELECT CHARINDEX('x','SQL Derslerine Devam Ediyoruz')
--SELECT CHARINDEX('e','SQL Derslerine Devam Ediyoruz')
--SELECT CHARINDEX('a','SQL Derslerine Devam Ediyoruz',15)
--SELECT LEN('SQL Derslerine Devam Ediyoruz')

--SELECT CHARINDEX('a',OGRAD) FROM TBLOGRENCILER
--SELECT REVERSE('Sercan')

--SELECT REVERSE(DERSAD) FROM TBLDERSLER