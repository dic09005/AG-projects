/*
Microsoft SQL Server 2019 Developer

https://go.microsoft.com/fwlink/?linkid=866662
SQL Server Config Manager

https://aka.ms/ssmsfullsetup
SQL Server Management Studio client

sa User:  IF-DESIGN4\AG (AG) 
Password: Password2023*
*/ 

--Create Database

CREATE DATABASE [InvManagement]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'InvManagement', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\InvManagement.mdf' , SIZE = 8192KB , FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'InvManagement_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\InvManagement_log.ldf' , SIZE = 8192KB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [InvManagement] SET COMPATIBILITY_LEVEL = 150
GO
ALTER DATABASE [InvManagement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [InvManagement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [InvManagement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [InvManagement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [InvManagement] SET ARITHABORT OFF 
GO
ALTER DATABASE [InvManagement] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [InvManagement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [InvManagement] SET AUTO_CREATE_STATISTICS ON(INCREMENTAL = OFF)
GO
ALTER DATABASE [InvManagement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [InvManagement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [InvManagement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [InvManagement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [InvManagement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [InvManagement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [InvManagement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [InvManagement] SET  DISABLE_BROKER 
GO
ALTER DATABASE [InvManagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [InvManagement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [InvManagement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [InvManagement] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [InvManagement] SET  READ_WRITE 
GO
ALTER DATABASE [InvManagement] SET RECOVERY FULL 
GO
ALTER DATABASE [InvManagement] SET  MULTI_USER 
GO
ALTER DATABASE [InvManagement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [InvManagement] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [InvManagement] SET DELAYED_DURABILITY = DISABLED 
GO
USE [InvManagement]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = Off;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = Primary;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = On;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = Primary;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = Off;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = Primary;
GO
USE [InvManagement]
GO
IF NOT EXISTS (SELECT name FROM sys.filegroups WHERE is_default=1 AND name = N'PRIMARY') ALTER DATABASE [InvManagement] MODIFY FILEGROUP [PRIMARY] DEFAULT
GO

-- Tables:

-- 	Brands

CREATE TABLE Brands (
	BrandID int NOT NULL DEFAULT 0 ,
	BrandName nvarchar (25) NOT NULL 
);

-- 	Inv_user

CREATE TABLE Inv_user (
	Inv_userID int NOT NULL ,
	Inv_userName nvarchar (25) NULL,
	UserLevel nvarchar (25) NULL
);

-- 	Categories

CREATE TABLE Categories (
	CategoryID int NOT NULL DEFAULT 0 ,
	CategoryDescription nvarchar (75) NULL 
);

-- 	Products

CREATE TABLE Products (
	ProductID int NOT NULL DEFAULT 0,
	ProductName nvarchar (50) NULL ,
	ProductDescription nvarchar (100) NULL ,
	RetailPrice decimal (15, 2) NULL DEFAULT 0 ,
	QuantityOnHand smallint NULL DEFAULT 0 ,
	CategoryID int NULL DEFAULT 0,
	BrandID int NULL DEFAULT 0
);

-- 	Stores

CREATE TABLE Stores (
	StoreID int NOT NULL ,
	Inv_userID nvarchar (25) NULL
) ;

-- 	Providers

CREATE TABLE Providers (
	ProviderID int NOT NULL ,
	ProviderName nvarchar (25) NULL 
) ;

-- 	Customer_cart

CREATE TABLE Customer_cart (
	Customer_cartID int NOT NULL
) ;

-- 	Select_product

CREATE TABLE Select_product (
	Select_productID int NOT NULL,
	ProductNumber int NOT NULL DEFAULT 0
) ;

-- 	Transaction

CREATE TABLE Transactions (
	TransactionNumber int NOT NULL DEFAULT 0 ,
	TransactionDate date NOT NULL,
	ProductNumber int NOT NULL DEFAULT 0,
	CustomerID int NULL DEFAULT 0,
	Inv_userID int NULL DEFAULT 0
);

-- 	Invoice

CREATE TABLE Invoice (
	InvoiceNumber int NOT NULL DEFAULT 0 ,
	ProductNumber int NOT NULL DEFAULT 0 ,
	QuotedPrice decimal (15, 2) NULL DEFAULT 0 ,
	QuantityOrdered smallint NULL DEFAULT 0 
);

/******************Add Data to Database*********************/

USE InvManagement;

INSERT INTO Brands
  (BrandID, BrandName)
  VALUES (1, 'Shino');
INSERT INTO Brands
  (BrandID, BrandName)
  VALUES (2, 'Visc');
INSERT INTO Brands
  (BrandID, BrandName)
  VALUES (3, 'Niko');
INSERT INTO Brands
  (BrandID, BrandName)
  VALUES (4, 'ProFo');
INSERT INTO Brands
  (BrandID, BrandName)
  VALUES (5, 'Big Sky');
INSERT INTO Brands
  (BrandID, BrandName)
  VALUES (6, 'Armada');
 
INSERT INTO Categories
  (CategoryID, CategoryDescription)
  VALUES (1, 'Accessories');
INSERT INTO Categories
  (CategoryID, CategoryDescription)
  VALUES (2, 'Bikes');
INSERT INTO Categories
  (CategoryID, CategoryDescription)
  VALUES (3, 'Clothing');
INSERT INTO Categories
  (CategoryID, CategoryDescription)
  VALUES (4, 'Components');
INSERT INTO Categories
  (CategoryID, CategoryDescription)
  VALUES (5, 'Car racks');
INSERT INTO Categories
  (CategoryID, CategoryDescription)
  VALUES (6, 'Tires');

INSERT INTO Customer_cart
  (Customer_cartID)
  VALUES (1);
INSERT INTO Customer_cart
  (Customer_cartID)
  VALUES (2);
INSERT INTO Customer_cart
  (Customer_cartID)
  VALUES (3);
INSERT INTO Customer_cart
  (Customer_cartID)
  VALUES (4);
INSERT INTO Customer_cart
  (Customer_cartID)
  VALUES (5);
INSERT INTO Customer_cart
  (Customer_cartID)
  VALUES (6);


INSERT INTO Inv_user
  (Inv_userID, Inv_userName, UserLevel)
  VALUES (1, 'Jim', 1);

INSERT INTO Inv_user
  (Inv_userID, Inv_userName, UserLevel)
  VALUES (1, 'Kim', 2);

INSERT INTO Inv_user
  (Inv_userID, Inv_userName, UserLevel)
  VALUES (1, 'Jill', 1);

INSERT INTO Inv_user
  (Inv_userID, Inv_userName, UserLevel)
  VALUES (1, 'Anne', 2);

INSERT INTO Inv_user
  (Inv_userID, Inv_userName, UserLevel)
  VALUES (1, 'Walt', 3);

INSERT INTO Invoice
	(InvoiceNumber, ProductNumber, QuotedPrice, QuantityOrdered)
	VALUES (1001, 1, 50, 2);

INSERT INTO Invoice
	(InvoiceNumber, ProductNumber, QuotedPrice, QuantityOrdered)
	VALUES (1002, 2, 10, 1);

INSERT INTO Invoice
	(InvoiceNumber, ProductNumber, QuotedPrice, QuantityOrdered)
	VALUES (1003, 3, 55, 5);

INSERT INTO Invoice
	(InvoiceNumber, ProductNumber, QuotedPrice, QuantityOrdered)
	VALUES (1004, 1, 50, 7);

INSERT INTO Invoice
	(InvoiceNumber, ProductNumber, QuotedPrice, QuantityOrdered)
	VALUES (1005, 2, 10, 3);

INSERT INTO Invoice
	(InvoiceNumber, ProductNumber, QuotedPrice, QuantityOrdered)
	VALUES (1006, 3, 55, 22);
 
INSERT INTO Products
  (ProductID, ProductName, ProductDescription, 
   RetailPrice, QuantityOnHand, CategoryID, BrandID)
  VALUES (1, 'Trek 9000 Mountain Bike', NULL, 1200, 
   6, 2, '');
INSERT INTO Products
  (ProductID, ProductName, ProductDescription, 
   RetailPrice, QuantityOnHand, CategoryID, BrandID)
  VALUES (2, 'Eagle FS-3 Mountain Bike', NULL, 1800, 
   8, 2, '');
INSERT INTO Products
  (ProductID, ProductName, ProductDescription, 
   RetailPrice, QuantityOnHand, CategoryID, BrandID)
  VALUES (3, 'Dog Ear Cyclecomputer', NULL, 75, 20, 
   1, '');
INSERT INTO Products
  (ProductID, ProductName, ProductDescription, 
   RetailPrice, QuantityOnHand, CategoryID, BrandID)
  VALUES (4, 'Victoria Pro All Weather Tires', NULL, 
   54.95, 20, 4, '');
INSERT INTO Products
  (ProductID, ProductName, ProductDescription, 
   RetailPrice, QuantityOnHand, CategoryID, BrandID)
  VALUES (5, 'Dog Ear Helmet Mount Mirrors', NULL, 
   7.45, 12, 1, '');

INSERT INTO Providers
  (ProviderID, ProviderName)
  VALUES (1, 'Shinoman Incorporated');
INSERT INTO Providers
  (ProviderID, ProviderName)
  VALUES (2, 'Viscount');
INSERT INTO Providers
  (ProviderID, ProviderName)
  VALUES (3, 'Nikoma of America');
INSERT INTO Providers
  (ProviderID, ProviderName)
  VALUES (4, 'ProFormance');
INSERT INTO Providers
  (ProviderID, ProviderName)
  VALUES (5, 'Big Sky Mountain Bikes');
INSERT INTO Providers
  (ProviderID, ProviderName)
  VALUES (6, 'Armadillo Branding');


INSERT INTO Select_product
	(Select_productID, ProductNumber)
	VALUES (1, 1);
INSERT INTO Select_product
	(Select_productID, ProductNumber)
	VALUES (2, 2);
INSERT INTO Select_product
	(Select_productID, ProductNumber)
	VALUES (3, 3);
INSERT INTO Select_product
	(Select_productID, ProductNumber)
	VALUES (4, 1);
INSERT INTO Select_product
	(Select_productID, ProductNumber)
	VALUES (5, 2);
INSERT INTO Select_product
	(Select_productID, ProductNumber)
	VALUES (6, 3);
INSERT INTO Select_product
	(Select_productID, ProductNumber)
	VALUES (7, 1);
INSERT INTO Select_product
	(Select_productID, ProductNumber)
	VALUES (8, 2);
INSERT INTO Select_product
	(Select_productID, ProductNumber)
	VALUES (9, 3);

INSERT INTO Stores 
	(StoreID, Inv_userID)
	VALUES (1, 1);
INSERT INTO Stores 
	(StoreID, Inv_userID)
	VALUES (1, 1);
INSERT INTO Stores 
	(StoreID, Inv_userID)
	VALUES (1, 1);
INSERT INTO Stores 
	(StoreID, Inv_userID)
	VALUES (1, 1);
INSERT INTO Stores 
	(StoreID, Inv_userID)
	VALUES (1, 1);
INSERT INTO Stores 
	(StoreID, Inv_userID)
	VALUES (1, 1);
INSERT INTO Stores 
	(StoreID, Inv_userID)
	VALUES (1, 1);
INSERT INTO Stores 
	(StoreID, Inv_userID)
	VALUES (1, 1);
 
INSERT INTO Transactions
  (TransactionNumber, TransactionDate, ProductNumber, CustomerID, Inv_userID)
  VALUES (1, '2017-09-02', 1, 1, 1);
INSERT INTO Transactions
  (TransactionNumber, TransactionDate, ProductNumber, CustomerID, Inv_userID)
  VALUES (2, '2017-09-02', 2, 1, 1);
INSERT INTO Transactions
  (TransactionNumber, TransactionDate, ProductNumber, CustomerID, Inv_userID)
  VALUES (3, '2017-09-02', 3, 1, 1);
INSERT INTO Transactions
  (TransactionNumber, TransactionDate, ProductNumber, CustomerID, Inv_userID)
  VALUES (4, '2017-09-02', 1, 1, 1);
INSERT INTO Transactions
  (TransactionNumber, TransactionDate, ProductNumber, CustomerID, Inv_userID)
  VALUES (5, '2017-09-02', 2, 1, 1);
INSERT INTO Transactions
  (TransactionNumber, TransactionDate, ProductNumber, CustomerID, Inv_userID)
  VALUES (6, '2017-09-02', 3, 1, 1);
INSERT INTO Transactions
  (TransactionNumber, TransactionDate, ProductNumber, CustomerID, Inv_userID)
  VALUES (7, '2017-09-02', 1, 1, 1);
INSERT INTO Transactions
  (TransactionNumber, TransactionDate, ProductNumber, CustomerID, Inv_userID)
  VALUES (8, '2017-09-02', 2, 1, 1);
INSERT INTO Transactions
  (TransactionNumber, TransactionDate, ProductNumber, CustomerID, Inv_userID)
  VALUES (9, '2017-09-02', 3, 1, 1);
INSERT INTO Transactions
  (TransactionNumber, TransactionDate, ProductNumber, CustomerID, Inv_userID)
  VALUES (10, '2017-09-02', 4, 1, 1);


/*********CREATE [Billing_Counter_Level] Role***************/

USE [InvManagement]
CREATE ROLE [Billing_Counter_Level]

GRANT SELECT ON [DBO].[Products] TO [Billing_Counter_Level]
GRANT INSERT ON [DBO].[Products] TO [Billing_Counter_Level]

GRANT SELECT ON [DBO].[Invoice] TO [Billing_Counter_Level]
GRANT INSERT ON [DBO].[Invoice] TO [Billing_Counter_Level]

/**************CREATE [Manager_Level] Role******************/

USE [InvManagement]
CREATE ROLE [Manager_Level]

GRANT SELECT ON [DBO].[Brands] TO [Manager_Level]
GRANT INSERT ON [DBO].[Brands] TO [Manager_Level]

GRANT SELECT ON [DBO].[Categories] TO [Manager_Level]
GRANT INSERT ON [DBO].[Categories] TO [Manager_Level]

GRANT SELECT ON [DBO].[Invoice] TO [Manager_Level]
GRANT INSERT ON [DBO].[Invoice] TO [Manager_Level]

GRANT SELECT ON [DBO].[Products] TO [Manager_Level]
GRANT INSERT ON [DBO].[Products] TO [Manager_Level]
GRANT DELETE ON [DBO].[Products] TO [Manager_Level]

/**************CREATE [Manager_Level] Role******************/

USE [InvManagement]
CREATE ROLE [Owner_Level]

GRANT SELECT ON [DBO].[Brands] TO [Owner_Level]
GRANT INSERT ON [DBO].[Brands] TO [Owner_Level]
GRANT DELETE ON [DBO].[Brands] TO [Owner_Level]

GRANT SELECT ON [DBO].[Categories] TO [Owner_Level]
GRANT INSERT ON [DBO].[Categories] TO [Owner_Level]
GRANT DELETE ON [DBO].[Categories] TO [Owner_Level]

GRANT SELECT ON [DBO].[Invoice] TO [Owner_Level]
GRANT INSERT ON [DBO].[Invoice] TO [Owner_Level]

GRANT SELECT ON [DBO].[Products] TO [Owner_Level]
GRANT INSERT ON [DBO].[Products] TO [Owner_Level]
GRANT DELETE ON [DBO].[Products] TO [Owner_Level]

GRANT SELECT ON [DBO].[Transactions] TO [Owner_Level]
GRANT INSERT ON [DBO].[Transactions] TO [Owner_Level]

GRANT SELECT ON [DBO].[Stores] TO [Owner_Level]
GRANT INSERT ON [DBO].[Stores] TO [Owner_Level]

GRANT SELECT ON [DBO].[Select_product] TO [Owner_Level]
GRANT INSERT ON [DBO].[Select_product] TO [Owner_Level]


-- Make A User with basic permissions and add to role

USE [master]
GO
CREATE LOGIN [Sam_Billings] WITH PASSWORD=N'Password', DEFAULT_DATABASE=[InvManagement], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
USE [InvManagement]
CREATE USER [Sam_Billings] FOR LOGIN [Sam_Billings]
GO

ALTER ROLE [Billing_Counter_Level] ADD MEMBER [Sam_Billings]

-- Make A User with manager permissions and add to role

USE [master]
GO
CREATE LOGIN [Kim_Manager] WITH PASSWORD=N'Password', DEFAULT_DATABASE=[InvManagement], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
USE [InvManagement]
CREATE USER [Kim_Manager] FOR LOGIN [Kim_Manager]
GO

ALTER ROLE [Manager_Level] ADD MEMBER [Kim_Manager]

-- Make A User with owner permissions and add to role

USE [master]
GO
CREATE LOGIN [Walt_owner] WITH PASSWORD=N'Password', DEFAULT_DATABASE=[InvManagement], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
USE [InvManagement]
CREATE USER [Walt_owner] FOR LOGIN [Walt_owner]
GO

ALTER ROLE [Owner_Level] ADD MEMBER [Walt_owner]

/************Create a Invoice View With all data*************/

USE InvManagement ;   
GO  
CREATE VIEW InvoiceInfo  
AS  
SELECT inv.InvoiceNumber
, inv.QuotedPrice
, inv.QuantityOrdered
, prod.ProductDescription
, prod.ProductName
, prod.RetailPrice
, prod.QuantityOnHand
, br.BrandName
, cat.CategoryDescription
FROM dbo.Invoice inv 
INNER JOIN dbo.Products prod
ON inv.ProductID = prod.ProductID
LEFT JOIN dbo.Brands br
ON br.BrandID = prod.BrandID
LEFT JOIN dbo.Categories cat
ON cat.CategoryID = prod.CategoryID 

/**********Add View to Role************/

GRANT SELECT ON [DBO].[InvoiceInfo] TO [Billing_Counter_Level]

/*

BACKUP DATABASE [InvManagement] TO  DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\Backup\InvManagement.bak' WITH NOFORMAT, NOINIT,  NAME = N'InvManagement-Full Database Backup', SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO
declare @backupSetId as int
select @backupSetId = position from msdb..backupset where database_name=N'InvManagement' and backup_set_id=(select max(backup_set_id) from msdb..backupset where database_name=N'InvManagement' )
if @backupSetId is null begin raiserror(N'Verify failed. Backup information for database ''InvManagement'' not found.', 16, 1) end
RESTORE VERIFYONLY FROM  DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\Backup\InvManagement.bak' WITH  FILE = @backupSetId,  NOUNLOAD,  NOREWIND
GO

*/
























