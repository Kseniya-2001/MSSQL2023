/*1. ƒовставл€ть в базу 5 записей использу€ insert в таблицу Customers или Suppliers*/

INSERT INTO [Sales].[Customers]
           ([CustomerName]
           ,[BillToCustomerID]
           ,[CustomerCategoryID]
           ,[BuyingGroupID]
           ,[PrimaryContactPersonID]
           ,[AlternateContactPersonID]
           ,[DeliveryMethodID]
           ,[DeliveryCityID]
           ,[PostalCityID]
           ,[CreditLimit]
           ,[AccountOpenedDate]
           ,[StandardDiscountPercentage]
           ,[IsStatementSent]
           ,[IsOnCreditHold]
           ,[PaymentDays]
           ,[PhoneNumber]
           ,[FaxNumber]
           ,[DeliveryRun]
           ,[RunPosition]
           ,[WebsiteURL]
           ,[DeliveryAddressLine1]
           ,[DeliveryAddressLine2]
           ,[DeliveryPostalCode]
           ,[DeliveryLocation]
           ,[PostalAddressLine1]
           ,[PostalAddressLine2]
           ,[PostalPostalCode]
           ,[LastEditedBy])
     VALUES
           ('Lakshmi Benipal',
		   401,
           3,
           2,
           2225,
           2226,
           3,
           3673,
           3081,
           NULL,
           2013-07-18,
           0.000,
           0,
           0,
           7,
           '(405) 278-0112',
           '(252) 555-2708',
           NULL,
           NULL,
           'http://www.microsoft.com/AnnaGyarmathi/',
           'Suite 27',
           '1466 Deilami Road',
           90005,
           '0xE6100000010CCA80FD2147114440B27790E8AF355AC0',
           'PO Box 9499',
           'Eddenville',
           90423,
           8)
GO