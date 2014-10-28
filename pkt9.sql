SELECT Customers.CompanyName AS 'Klienci', ROUND(SUM([Order Details].UnitPrice*[Order Details].Quantity-[Order Details].Discount),2) AS 'Suma dokonanych transakcji'
FROM Orders 
INNER JOIN Customers ON Orders.CustomerID =Customers.CustomerID
INNER JOIN [Order Details] ON [Order Details].OrderID =Orders.OrderID 
GROUP BY Customers.CompanyName
