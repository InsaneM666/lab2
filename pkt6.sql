SELECT ProductName AS 'Produkt', UnitPrice AS 'Cena' FROM Products WHERE UnitPrice=(SELECT MIN(UnitPrice) FROM Products) 
UNION 
SELECT ProductName, UnitPrice FROM Products WHERE UnitPrice=(SELECT MAX(UnitPrice) FROM Products)