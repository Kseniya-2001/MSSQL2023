/*1. Посчитать среднюю цену товара, общую сумму продажи по месяцам*/

select YEAR(so.OrderDate) as YearOfSale, MONTH(so.OrderDate) as MonthOfSale,
avg(sol.UnitPrice) as AveragePrice, sum (sol.Quantity) as SalesAmount
from [Sales].[OrderLines] as sol
inner join [Sales].[Orders] as so on so.OrderID = sol.OrderID
group by  YEAR(so.OrderDate), MONTH(so.OrderDate)
order by  YEAR(so.OrderDate), MONTH(so.OrderDate)