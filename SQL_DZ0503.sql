/*3. Выберите информацию по клиентам, которые перевели компании 5 максимальных платежей 
из [Sales].[CustomerTransactions] представьте 3 способа (в том числе с CTE)*/

select TOP(5) CustomerID, SUM(TransactionAmount) as SumTransaction 
from [Sales].[CustomerTransactions]
group by CustomerID  
order by SumTransaction desc 