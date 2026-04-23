DROP TABLE [PC_Staging].[dbo].[Dim_Shop]
CREATE TABLE [PC_Staging].[dbo].[Dim_Shop] (
    [ShopID] INT IDENTITY(1,1) PRIMARY KEY,
    [Shop_Name] [nvarchar](50) NOT NULL,
	[Shop_Age] [nvarchar](50) NOT NULL,
    )

    
---Insering colums into the table created
INSERT INTO [PC_Staging].[dbo].[Dim_Shop] (Shop_Name, Shop_Age)
SELECT DISTINCT Shop_Name, Shop_Age
FROM [PC_Staging].[dbo].[pc_data];

	---Confirming data on the created table

SELECT * FROM [PC_Staging].[dbo].[Dim_Shop];