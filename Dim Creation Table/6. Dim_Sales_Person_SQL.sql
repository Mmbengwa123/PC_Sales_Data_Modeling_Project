DROP TABLE [PC_Staging].[dbo].[Dim_SalePerson]
CREATE TABLE [PC_Staging].[dbo].[Dim_SalePerson](
    [SalePersonID] INT IDENTITY(1,1) PRIMARY KEY,
    [Sales_Person_Name] [nvarchar](50) NOT NULL,
	[Sales_Person_Department] [nvarchar](50) NOT NULL,
    )

    ---Insring column into the table

    INSERT INTO [PC_Staging].[dbo].[Dim_SalePerson] (Sales_Person_Name, Sales_Person_Department)
    SELECT DISTINCT Sales_Person_Name, Sales_Person_Department
    FROM [PC_Staging].[dbo].[pc_data];

    SELECT * FROM [PC_Staging].[dbo].[Dim_SalePerson];