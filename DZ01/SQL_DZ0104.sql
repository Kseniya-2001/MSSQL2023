/*4. Заказы поставщикам, которые были исполнены за 2014й год с доставкой 
Road Freight или Post, добавьте название поставщика, имя контактного лица
принимавшего заказ*/

select po.PurchaseOrderID, dm.DeliveryMethodName, s.SupplierName, p.FullName 
from [Purchasing].[PurchaseOrders] as po
inner join [Application].[People] as p on po.LastEditedBy = p.PersonID
inner join [Application].[DeliveryMethods] as dm on dm.DeliveryMethodID = po.DeliveryMethodID
inner join [Purchasing].[Suppliers] as s on s.SupplierID = po.SupplierID
where (dm.DeliveryMethodName in ('Road Freight','Post')) 
and po.OrderDate between '2014-01-01' and '2014-12-31'