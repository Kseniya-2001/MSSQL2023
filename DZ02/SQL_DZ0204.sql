/*4. Написать MERGE, который вставит запись в клиенты, если ее там нет, 
и изменит если она уже есть*/

merge into  [Sales].[CustomerCategories] as target 
     using (select '17' as [CustomerCategoryID], 'Anna Smirnova' as [CustomerCategoryName], '7' as [LastEditedBy]) as source
	 on (target.[CustomerCategoryID] = source.[CustomerCategoryID])
	 when matched then 
	 update set [CustomerCategoryName] =Source.[CustomerCategoryName]
when not matched by target then 
     insert ([CustomerCategoryName], [LastEditedBy])
	 values (source.[CustomerCategoryName], source.[LastEditedBy]);


