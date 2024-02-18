 /*1. Все товары, в которых в название есть пометка urgent или название начинается с Animal*/

select *
from [Purchasing].[PurchaseOrderLines] 
where [Description] like '%urgent%' or
 [Description] like 'Animal%' 
      

