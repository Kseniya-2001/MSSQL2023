/* ��� �� � ����� �������� � �� ���������� ��������, ������� �������� ����� 
Chocolate frogs 250g*/

select distinct p.PersonID,
p.FullName,
p.PhoneNumber,
ol.Description
from [Sales].[OrderLines] as ol
inner join [Application].[People] as p on ol.LastEditedBy = p.PersonID
where [Description] like '%Chocolate frogs 250g%'
order by p.PersonID

