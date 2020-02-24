CREATE TABLE [Purchasing].[Suppliers_Archive]
(
[SupplierID] [int] NOT NULL,
[SupplierName] [nvarchar] (100) NOT NULL,
[SupplierCategoryID] [int] NOT NULL,
[PrimaryContactPersonID] [int] NOT NULL,
[AlternateContactPersonID] [int] NOT NULL,
[DeliveryMethodID] [int] NULL,
[DeliveryCityID] [int] NOT NULL,
[PostalCityID] [int] NOT NULL,
[SupplierReference] [nvarchar] (20) NULL,
[BankAccountName] [nvarchar] (50) MASKED WITH (FUNCTION = 'default()') NULL,
[BankAccountBranch] [nvarchar] (50) MASKED WITH (FUNCTION = 'default()') NULL,
[BankAccountCode] [nvarchar] (20) MASKED WITH (FUNCTION = 'default()') NULL,
[BankAccountNumber] [nvarchar] (20) MASKED WITH (FUNCTION = 'default()') NULL,
[BankInternationalCode] [nvarchar] (20) MASKED WITH (FUNCTION = 'default()') NULL,
[PaymentDays] [int] NOT NULL,
[InternalComments] [nvarchar] (max) NULL,
[PhoneNumber] [nvarchar] (20) NOT NULL,
[FaxNumber] [nvarchar] (20) NOT NULL,
[WebsiteURL] [nvarchar] (256) NOT NULL,
[DeliveryAddressLine1] [nvarchar] (60) NOT NULL,
[DeliveryAddressLine2] [nvarchar] (60) NULL,
[DeliveryPostalCode] [nvarchar] (10) NOT NULL,
[DeliveryLocation] [sys].[geography] NULL,
[PostalAddressLine1] [nvarchar] (60) NOT NULL,
[PostalAddressLine2] [nvarchar] (60) NULL,
[PostalPostalCode] [nvarchar] (10) NOT NULL,
[LastEditedBy] [int] NOT NULL,
[ValidFrom] [datetime2] NOT NULL,
[ValidTo] [datetime2] NOT NULL
)
GO
CREATE CLUSTERED INDEX [ix_Suppliers_Archive] ON [Purchasing].[Suppliers_Archive] ([ValidTo], [ValidFrom])
GO
