USE [InvManagment]
GO
CREATE USER [BillingCounter] FOR LOGIN [BillingCounter]
GO
USE [InvManagment]
GO
ALTER ROLE [db_datareader] ADD MEMBER [BillingCounter]
GO
USE [InvManagment]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [BillingCounter]
GO