/*
=======================================================
Create Database and Schemas
=======================================================
Script Purpose
  This script creates a new database named 'DataWarehouse' after checking if it already exists if the databas exists,
  It is dropped and recreated. Additionally, the script sets up three schemass within the database: 'bronze', 'silver', 'gold'.


WARNING:
  Running this script will drop the entire 'DataWarehouse' database if it exists. all data in the DB will be permanently deleted
  Proceed with caution and ensure you have proper backups before running this script
*/

use master;
GO

-- drop and recreate the 'DW' database
if exists( select 1 from sys.database where name = 'DataWarehouse')
begin
  alter database Datawarehouse set single_user with rollback immediate;
  drop database Datawarehouse;
end;
go


create database Datawarehouse;
go
use Datawarehouse;
go
create schema bronze;
go
create schema silver;
go
create schema gold;

