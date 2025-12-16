/*
===============================================================================
create Database and schemas
===============================================================================
script purpose:
        This script creates a newdatabase named 'DataWarehouse' after checking if it already exists.
        If the database exists, it is dropped andrecreated, Additionally, the script sets up three schemas
        within the database: 'bronze', 'silver', and 'gold',

WARNING:
      Running this script will drop the entire 'DataWarehouse' database if it exists.
      All data in the database will be permanently deleted, proceed with caution 
      and ensure you have proper backups before running this scripts.
*/
USE master;
GO

 --DROP and recreate the 'DataWarehouse' datbase
IF EXISTS (Select 1 FROM sys.database WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO

--Create the 'DataWarehouse' database
CREATE DataBase DataWarehouse;
GO

USE DataWarehouse;
Go

--create schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
