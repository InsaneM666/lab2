SELECT Orders.OrderDate AS 'Data zam�wienia', Products.ProductName AS 'Produkt' FROM [Order Details]
inner join Orders ON Orders.OrderID =[Order Details].OrderID 
inner join Products ON Products.ProductID =[Order Details].ProductID 
WHERE DATENAME(WEEKDAY, Orders.OrderDate) <> 'Saturday' 
AND DATENAME(WEEKDAY, Orders.OrderDate) <> 'Sunday'