 /*1. Все товары, в которых в название есть пометка urgent или название начинается с Animal*/
     
select [StockItemID],[StockItemName] 
from [Warehouse].[StockItems]
where [StockItemName]  like '%urgent%' or
 [StockItemName]  like 'Animal%'
