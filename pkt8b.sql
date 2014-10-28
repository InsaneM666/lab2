SELECT Categories.CategoryName AS 'Kategoria produktu', AVG(Products.UnitPrice) AS 'Œrednie ceny' FROM Products 
INNER JOIN Categories ON Products.CategoryID=Categories.CategoryID
GROUP BY Categories.CategoryName