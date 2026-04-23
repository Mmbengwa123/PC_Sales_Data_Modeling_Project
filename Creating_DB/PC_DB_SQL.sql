--creating staging database
IF DB_ID('PC_Staging') IS NULL
BEGIN
    CREATE DATABASE PC_Staging;
END
GO

--creating warehouse database
IF DB_ID('PC_Warehouse') IS NULL
BEGIN
    CREATE DATABASE PC_Warehouse;
END
GO