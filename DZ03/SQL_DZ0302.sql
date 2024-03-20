/*2. отобразить все месяцы, где общая сумма продаж превысила 10 000*/

select datename (yy, o.OrderDate) as YearOfSale, 
       datename (mm, o.OrderDate) MonthOfSale,  
	   sum (sol.Quantity) as SalesAmount
from [Sales].[Orders] as o
inner join [Sales].[OrderLines] as sol on o.OrderID = sol.OrderID
group by datename (mm, o.OrderDate),  datename (yy, o.OrderDate)
having sum (sol.Quantity) > 10000
order by  datename (yy, o.OrderDate),  datename (mm, o.OrderDate)