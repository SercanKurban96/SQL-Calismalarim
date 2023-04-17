--Clustered Index(Kümelenmiþ Ýndex)
--Ýndexlerin belirli bir düzene ve sýraya sahip olduðu durumda clustered indexten bahsedilir. Tablodaki alana Primary key atandýðý anda clustered 
--index oluþturulmuþ olur. Örneðin dýþarýdan sisteme yeni bir kayýt girildiðinde en son bilgiler ona göre index deðeri alýr. Veriler farklý farklý 
--kümelerde tutulmuþtur ve bir kümenin bitiþ sýrasýnda diðer küme index sýrasýna göre düzenlenmiþtir. Clustered index’e sahip olduðumuzda sistem 
--Clustered index taramasý yapabilir, bu tarama yöntem page okuma sayýsýný azaltmaya yardýmcý olur yani performans saðlar. Her tablo sadece bir 
--clustered index’e sahip olabilir.

--Non-Clustered Index
--Bu tip indexi yukarýda da bahsettiðimiz kitap örneðinden devam ettirelim. Non-clustered index kitap sayfa sayýlarýna benzer. Bu index türü olduðu 
--zaman, sistem tüm sayfalarý tek tek aramakla vakit geçirmez. Ýndex numarasýna göre istenilen kitap sayfasýna gider ve istenilen veriyi bulur. 
--Burada Ýndex verinin bir kopyasýdýr ve index’in sahip olduðu veri çekilir. Clustered indexe göre daha yavaþtýr. Tablolarda çok sayýda 
--oluþturulabilir.

----KAYNAK: https://www.datasciencearth.com/mssql-server-index-kavrami/#:~:text=Clustered%20Index(Kümelenmiþ%20Ýndex),ona%20göre%20index%20deðeri%20alýr.

--250 BÝN DATALI TABLO OLUÞTURMA
--CREATE TABLE TABLO1
--(
--ID INT IDENTITY(1,1),
--AD VARCHAR(20)
--)

--DECLARE @SAYAC INT=1
--WHILE @SAYAC < 250001
--BEGIN
--INSERT TABLO1
--SELECT 'KÝTAP' + CAST(@SAYAC AS varchar(20))
--SET @SAYAC = @SAYAC + 1
--END
--SELECT COUNT(*) FROM TABLO1

--210 BÝNÝNCÝ DATAYI SORGULAMA
--SELECT * FROM TABLO1 WHERE ID=210387

--SET STATISTICS IO ON
--SET STATISTICS TIME ON
--SELECT * FROM TABLO1 WHERE ID=210387

--CLUSTERED INDEX ÝLE 210 BÝNÝNCÝ DATAYI SORGULAMA
--CREATE CLUSTERED INDEX TABLOKAYITGETIR
--ON TABLO1(ID)
SELECT * FROM TABLO1 WHERE ID=210387

