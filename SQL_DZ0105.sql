/*10 последних по дате продаж с именем клиента и именем 
сотрудника, который оформил заказ.*/

select top(10) po.PurchaseOrderID, s.SupplierName, p.FullName 
from [Purchasing].[PurchaseOrders] as po
inner join [Application].[People] as p on po.LastEditedBy = p.PersonID
inner join [Purchasing].[Suppliers] as s on s.SupplierID = po.SupplierID
order by po.PurchaseOrderID desc