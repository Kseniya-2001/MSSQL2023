/*3. �������� ���������� �� ��������, ������� �������� �������� 5 ������������ �������� 
�� [Sales].[CustomerTransactions] ����������� 3 ������� (� ��� ����� � CTE)*/

select  TOP(5) *  
from [Sales].[CustomerTransactions]
having MAX(TransactionAmount) 
