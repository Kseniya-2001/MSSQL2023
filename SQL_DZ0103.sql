/*3. Продажи с названием месяца, в котором была продажа, номером квартала,
к которому относится продажа, включите также к какой трети года относится 
дата - каждая треть по 4 месяца, дата забора заказа должна быть задана, с ценой 
товара более 100$ либо количество единиц товара более 20. Добавьте вариант этого 
запроса с постраничной выборкой пропустив первую 1000 и отобразив следующие 100 записей. 
Соритровка должна быть по номеру квартала, трети года, дате продажи.*/ 

SELECT o.OrderID,
       DATENAME(month, OrderDate) as MonthName,
	   DATEPART(QUARTER, OrderDate) AS quarter,
	   (MONTH(OrderDate)-1)/4+1 as Third, 
	   OrderDate,
	   UnitPrice,
	   Quantity
FROM Sales.Orders as o
INNER JOIN Sales.OrderLines as l ON o.OrderID=l.OrderID
where UnitPrice>100 or
      Quantity>20 
ORDER BY 3,4,OrderDate -- 1 вариант

SELECT o.OrderID,
       DATENAME(month, OrderDate) as MonthName,
	   DATEPART(QUARTER, OrderDate) AS quarter,
	   (MONTH(OrderDate)-1)/4+1 as Third, 
	   OrderDate,
	   UnitPrice,
	   Quantity
FROM Sales.Orders as o
INNER JOIN Sales.OrderLines as l ON o.OrderID=l.OrderID
where UnitPrice>100 or
      Quantity>20 
ORDER BY 3,4,OrderDate 
OFFSET 1000 ROWS FETCH NEXT 100 ROWS ONLY -- 2 вариант (с добавлением выборки строк и сортировки)