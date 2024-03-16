/*3. изменить одну запись, из добавленных через UPDATE*/

update [Sales].[CustomerCategories]
set CustomerCategoryName = 'Kseniya Zhumaeva'
where CustomerCategoryName = 'Kseniya Haduskina'