USE [WideWorldImporters]
GO

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
           (CustomerName, nvarchar(100),>Lakshmi Benipal
           ,<BillToCustomerID, int,>401
           ,<CustomerCategoryID, int,>3
           ,<BuyingGroupID, int,>2
           ,<PrimaryContactPersonID, int,>2225
           ,<AlternateContactPersonID, int,>2226
           ,<DeliveryMethodID, int,>3
           ,<DeliveryCityID, int,>3673
           ,<PostalCityID, int,>3081
           ,<CreditLimit, decimal(18,2),> is NULL
           ,<AccountOpenedDate, date,>2013-07-18
           ,<StandardDiscountPercentage, decimal(18,3),>0.000
           ,<IsStatementSent, bit,>0
           ,<IsOnCreditHold, bit,>0
           ,<PaymentDays, int,>7
           ,<PhoneNumber, nvarchar(20),>(405) 278-0112
           ,<FaxNumber, nvarchar(20),>(252) 555-2708
           ,<DeliveryRun, nvarchar(5),>
           ,<RunPosition, nvarchar(5),>
           ,<WebsiteURL, nvarchar(256),>http://www.microsoft.com/AnnaGyarmathi/
           ,<DeliveryAddressLine1, nvarchar(60),>Suite 27
           ,<DeliveryAddressLine2, nvarchar(60),>1466 Deilami Road
           ,<DeliveryPostalCode, nvarchar(10),>90005
           ,<DeliveryLocation, geography,>0xE6100000010CCA80FD2147114440B27790E8AF355AC0
           ,<PostalAddressLine1, nvarchar(60),>PO Box 9499
           ,<PostalAddressLine2, nvarchar(60),>Eddenville
           ,<PostalPostalCode, nvarchar(10),>90423
           ,<LastEditedBy, int,>8)
GO


