/* �������� ������ � ����������� ����� (�����������), 2 �������� ����������.*/ 

select *
from [Warehouse].[StockItems_Archive]


select [StockItemName]
from [Warehouse].[StockItems_Archive]
where [UnitPrice] in (select min([UnitPrice])
                      from [Warehouse].[StockItems_Archive]) --1 �������

select [StockItemName]
from [Warehouse].[StockItems_Archive]
where [UnitPrice] = (select min([UnitPrice])
                      from [Warehouse].[StockItems_Archive]) --2 �������


