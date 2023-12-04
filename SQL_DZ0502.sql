/* Выберите товары с минимальной ценой (подзапросом), 2 варианта подзапроса.*/ 

select *
from [Warehouse].[StockItems_Archive]


select [StockItemName]
from [Warehouse].[StockItems_Archive]
where [UnitPrice] in (select min([UnitPrice])
                      from [Warehouse].[StockItems_Archive]) --1 вариант

select [StockItemName]
from [Warehouse].[StockItems_Archive]
where [UnitPrice] = (select min([UnitPrice])
                      from [Warehouse].[StockItems_Archive]) --2 вариант


