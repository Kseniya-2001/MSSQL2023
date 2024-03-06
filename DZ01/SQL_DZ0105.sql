/*10 последних по дате продаж с именем клиента и именем 
сотрудника, который оформил заказ.*/

select top(10) so.OrderID, so.OrderDate, sc.CustomerName, ap.FullName
from [Sales].[Orders] as so
left join [Sales].[Customers] as sc on sc.CustomerID = so.CustomerID
left join [Application].[People] as ap on ap.PersonID = so.SalespersonPersonID
order by so.OrderDate desc
