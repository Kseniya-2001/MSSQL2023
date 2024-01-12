/*2. ѕоставщиков, у которых не было сделано ни одного заказа 
(потом покажем как это делать через подзапрос, сейчас сделайте через JOIN)*/

select *
from [Purchasing].[Suppliers] as s
left join [Purchasing].[SupplierTransactions] as st on st.SupplierID = s.SupplierID
where st.SupplierID is null --1 вариант

select *
from [Purchasing].[Suppliers] 
where SupplierID not in (select SupplierID
                     from [Purchasing].[SupplierTransactions]) --2 вариант