--Clustered Index(K�melenmi� �ndex)
--�ndexlerin belirli bir d�zene ve s�raya sahip oldu�u durumda clustered indexten bahsedilir. Tablodaki alana Primary key atand��� anda clustered 
--index olu�turulmu� olur. �rne�in d��ar�dan sisteme yeni bir kay�t girildi�inde en son bilgiler ona g�re index de�eri al�r. Veriler farkl� farkl� 
--k�melerde tutulmu�tur ve bir k�menin biti� s�ras�nda di�er k�me index s�ras�na g�re d�zenlenmi�tir. Clustered index�e sahip oldu�umuzda sistem 
--Clustered index taramas� yapabilir, bu tarama y�ntem page okuma say�s�n� azaltmaya yard�mc� olur yani performans sa�lar. Her tablo sadece bir 
--clustered index�e sahip olabilir.

--Non-Clustered Index
--Bu tip indexi yukar�da da bahsetti�imiz kitap �rne�inden devam ettirelim. Non-clustered index kitap sayfa say�lar�na benzer. Bu index t�r� oldu�u 
--zaman, sistem t�m sayfalar� tek tek aramakla vakit ge�irmez. �ndex numaras�na g�re istenilen kitap sayfas�na gider ve istenilen veriyi bulur. 
--Burada �ndex verinin bir kopyas�d�r ve index�in sahip oldu�u veri �ekilir. Clustered indexe g�re daha yava�t�r. Tablolarda �ok say�da 
--olu�turulabilir.

----KAYNAK: https://www.datasciencearth.com/mssql-server-index-kavrami/#:~:text=Clustered%20Index(K�melenmi�%20�ndex),ona%20g�re%20index%20de�eri%20al�r.

--250 B�N DATALI TABLO OLU�TURMA
--CREATE TABLE TABLO1
--(
--ID INT IDENTITY(1,1),
--AD VARCHAR(20)
--)

--DECLARE @SAYAC INT=1
--WHILE @SAYAC < 250001
--BEGIN
--INSERT TABLO1
--SELECT 'K�TAP' + CAST(@SAYAC AS varchar(20))
--SET @SAYAC = @SAYAC + 1
--END
--SELECT COUNT(*) FROM TABLO1

--210 B�N�NC� DATAYI SORGULAMA
--SELECT * FROM TABLO1 WHERE ID=210387

--SET STATISTICS IO ON
--SET STATISTICS TIME ON
--SELECT * FROM TABLO1 WHERE ID=210387

--CLUSTERED INDEX �LE 210 B�N�NC� DATAYI SORGULAMA
--CREATE CLUSTERED INDEX TABLOKAYITGETIR
--ON TABLO1(ID)
SELECT * FROM TABLO1 WHERE ID=210387

