--UPPER VE LOWER FONKS�YONLARI

--SELECT UPPER('merhaba') AS 'S�tun'

--SELECT UPPER(OGRAD) AS '��RENC� ADI', upper(OGRSOYAD) as '��RENC� SOYADI', LOWER(OGRSEHIR) AS '�EH�R' FROM TBLOGRENCILER

--�ehri Adana olan ve bili�im kul�b�nde bulunan ��rencilerin ad�n� b�y�k soyad�n� k���k harf getiren sorguyu yaz�n�z.
--SELECT UPPER(OGRAD) + ' ' + LOWER(OGRSOYAD) AS 'Ad� Soyad�',OGRSEHIR AS '�ehir',KULUPAD AS 'Kul�p' FROM TBLOGRENCILER
--INNER JOIN TBLKULUPLER ON TBLOGRENCILER.OGRKULUP = TBLKULUPLER.KULUPID
--WHERE OGRSEHIR = 'Adana' AND KULUPAD = 'Bili�im'

--SUBSTRING KOMUTU
--SELECT SUBSTRING(OGRAD,1,2) FROM TBLOGRENCILER
--SELECT SUBSTRING(OGRAD,3,2) FROM TBLOGRENCILER
--SELECT SUBSTRING(OGRAD,1,1) + '. ' + OGRSOYAD AS 'AD SOYAD', OGRKULUP FROM TBLOGRENCILER

--��rencinin kul�b�n�n ilk 3 harfini getiren sorguyu yaz�n�z.
--SELECT SUBSTRING(OGRAD,1,1) + '. ' + OGRSOYAD AS 'Ad� Soyad�', SUBSTRING(KULUPAD,1,3) AS 'Kul�pler' FROM TBLOGRENCILER
--INNER JOIN TBLKULUPLER ON TBLOGRENCILER.OGRKULUP = TBLKULUPLER.KULUPID

--LEFT RIGHT FONKS�YONLARI
--SELECT LEFT('MERHABA D�NYA',9), RIGHT('MERHABA �STANBUL',2)
--SELECT LEFT(OGRAD,1) + '. ' + OGRSOYAD AS 'Ad Soyad' FROM TBLOGRENCILER

--SELECT LEFT(DERSAD,3),AVG(ORTALAMA) FROM TBLNOTLAR 
--INNER JOIN TBLDERSLER ON TBLDERSLER.DERSID = TBLNOTLAR.DERS
--GROUP BY DERSAD

----Ortalama k�sm�ndaki virg�lden sonraki 2 basama�� g�steren sorgu
--SELECT CAST(AVG(ORTALAMA) AS decimal(5,2)) FROM TBLNOTLAR

--LEN KULLANIMI
--SELECT LEN('Merhaba')
--SELECT OGRAD,LEN(OGRAD),OGRKULUP FROM TBLOGRENCILER WHERE OGRSEHIR = 'Adana'
--AND OGRKULUP = (SELECT KULUPID FROM TBLKULUPLER WHERE KULUPAD = 'Bili�im')

--SELECT * FROM TBLOGRENCILER WHERE LEN(OGRAD) = 4 OR LEN(OGRAD) = 3

--�sim + soyismin toplam� 3 ile 7 karakter aras�nda olan ��rencileri getiren sorguyu yaz�n.
--1. yol
--SELECT * FROM TBLOGRENCILER WHERE LEN(OGRAD) + LEN(OGRSOYAD) IN (3,7)
--2. yol
--SELECT * FROM TBLOGRENCILER WHERE (LEN(OGRAD + OGRSOYAD)) BETWEEN 3 AND 7

--LTRIM RTRIM REPLACE KOMUTLARI
--SELECT LTRIM('          Korkma S�nmez Bu �afaklarda Y�zen Al Sancak          ')
--SELECT RTRIM('          Korkma S�nmez Bu �afaklarda Y�zen Al Sancak          ')
--SELECT REPLACE('Sercan KURBAN','KURBAN','K.BAN')
--SELECT REPLACE('Merhaba bug�n hava so�uk','a','e')
--1. Parametre Ana Kelime C�mle
--2. Parametre Bulunacak De�er
--3. Parametre Yeni De�er

--Birden fazla de�eri de�i�tirmek i�in kullan�lan sorgu
--SELECT REPLACE(REPLACE(REPLACE('Merhaba Bug�n Hava So�uk', '�', 'u'), '�', 'g'), 'Soguk', 'S�cak')

--CHARINDEX VE REVERSE KOMUTLARI
--SELECT CHARINDEX('a','SQL Derslerine Devam Ediyoruz')
--SELECT CHARINDEX('x','SQL Derslerine Devam Ediyoruz')
--SELECT CHARINDEX('e','SQL Derslerine Devam Ediyoruz')
--SELECT CHARINDEX('a','SQL Derslerine Devam Ediyoruz',15)
--SELECT LEN('SQL Derslerine Devam Ediyoruz')

--SELECT CHARINDEX('a',OGRAD) FROM TBLOGRENCILER
--SELECT REVERSE('Sercan')

--SELECT REVERSE(DERSAD) FROM TBLDERSLER