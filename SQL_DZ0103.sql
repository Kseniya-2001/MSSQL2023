/*3. ������� � ��������� ������, � ������� ���� �������, ������� ��������,
� �������� ��������� �������, �������� ����� � ����� ����� ���� ��������� 
���� - ������ ����� �� 4 ������, ���� ������ ������ ������ ���� ������, � ����� 
������ ����� 100$ ���� ���������� ������ ������ ����� 20. �������� ������� ����� 
������� � ������������ �������� ��������� ������ 1000 � ��������� ��������� 100 �������. 
���������� ������ ���� �� ������ ��������, ����� ����, ���� �������.*/ 

SELECT o.OrderID,
       DATENAME(month, OrderDate) as MonthName,
	   DATEPART(QUARTER, OrderDate) AS quarter,
	   (MONTH(OrderDate)-1)/4+1 as Third, 
	   OrderDate,
	   UnitPrice,
	   Quantity
FROM Sales.Orders as o
INNER JOIN Sales.OrderLines as l ON o.OrderID=l.OrderID
where UnitPrice>100 or
      Quantity>20 
ORDER BY 3,4,OrderDate -- 1 �������

SELECT o.OrderID,
       DATENAME(month, OrderDate) as MonthName,
	   DATEPART(QUARTER, OrderDate) AS quarter,
	   (MONTH(OrderDate)-1)/4+1 as Third, 
	   OrderDate,
	   UnitPrice,
	   Quantity
FROM Sales.Orders as o
INNER JOIN Sales.OrderLines as l ON o.OrderID=l.OrderID
where UnitPrice>100 or
      Quantity>20 
ORDER BY 3,4,OrderDate 
OFFSET 1000 ROWS FETCH NEXT 100 ROWS ONLY -- 2 ������� (� ����������� ������� ����� � ����������)