SELECT Categories.CategoryName AS 'Kategoria produktu', AVG(Products.UnitPrice) AS '�rednie ceny' FROM Products 
INNER JOIN Categories ON Products.CategoryID=Categories.CategoryID
GROUP BY Categories.CategoryName