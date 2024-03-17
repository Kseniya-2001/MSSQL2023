/*5. Напишите запрос, который выгрузит данные через bcp out и загрузить
через bulk insert*/

select *
from [dbo].[Student]

bulk insert [dbo].[Student]
from 'D:\SQL\Class a.csv'
with (rowterminator = '\n',
      fieldterminator = ';',
	  firstrow = 2) 