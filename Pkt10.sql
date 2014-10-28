SELECT Products.ProductName AS 'Produkt' , SUM([Order Details].ProductID) AS 'Liczba zamówionych produktów' FROM Products 
INNER JOIN [Order Details] ON Products.ProductID=[Order Details].ProductID 
GROUP BY Products.ProductName