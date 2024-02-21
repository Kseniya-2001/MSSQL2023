/*2. поставщиков, у которых не было сделано ни одного заказа 
(потом покажем как это делать через подзапрос, сейчас сделайте через JOIN)*/

select s.SupplierID, s.[SupplierName] 
from [Purchasing].[Suppliers] as s
left join [Purchasing].[SupplierTransactions] as st on st.SupplierID = s.SupplierID
where st.SupplierID is null --1 вариант

select SupplierID, SupplierName 
from [Purchasing].[Suppliers] 
where SupplierID not in (select SupplierID
                     from [Purchasing].[SupplierTransactions]) --2 вариант

select s.SupplierID, s.[SupplierName] 
from [Purchasing].[Suppliers] as s
left join [Purchasing].[PurchaseOrders] as po on po.SupplierID = s.SupplierID
where po.SupplierID is null --1 вариант(исправленный)

select SupplierID, SupplierName 
from [Purchasing].[Suppliers] 
where SupplierID not in (select SupplierID
                     from [Purchasing].[PurchaseOrders]) --2 вариант(исправленный)

/*судя по всему, два изначальных запроса тоже работают*/
