--NORTHWIND VER� TABANI SORGU �RNEKLER�
--SELECT * FROM Products

--SELECT * FROM Products WHERE CategoryID = 
--(SELECT CategoryID FROM Categories WHERE CategoryName = 'SeaFood') AND UnitsInStock > 20
--AND SupplierID = (SELECT SupplierID FROM Suppliers WHERE City = 'Osaka')

--CREATE PROCEDURE TEST1
--AS
--SELECT * FROM Orders WHERE EmployeeID IN (SELECT EmployeeID FROM Employees WHERE City = 'London')
--AND ShipVia = 3 AND ShipCountry = 'France'

--EXEC TEST1

--NORTHWIND VER� TABANI B�RLE�T�RME ��LEMLER�
--CREATE VIEW VIEW1
--AS
--SELECT OrderID,CompanyName,FirstName + ' ' + LastName AS 'Employee',OrderDate,ShipName,ShipCity,ShipCountry 
--FROM Orders INNER JOIN Customers 
--ON Orders.CustomerID = Customers.CustomerID
--INNER JOIN Employees
--ON Orders.EmployeeID = Employees.EmployeeID

--SELECT * FROM VIEW1
--SELECT * FROM Invoices

--NORTHWIND VER� TABANI VIEW S�H�RBAZI
--SELECT * FROM VIEW2

--EXEC CustOrderHist ANATR