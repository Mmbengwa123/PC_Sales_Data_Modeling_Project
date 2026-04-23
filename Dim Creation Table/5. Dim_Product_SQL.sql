DROP TABLE [PC_Staging].[dbo].[Dim_Product]
CREATE TABLE [PC_Staging].[dbo].[Dim_Product](
    [ProductID] INT IDENTITY(1,1) PRIMARY KEY, 
    [PC_Make] [nvarchar](50) NOT NULL,
	[PC_Model] [nvarchar](50) NOT NULL,
	[Storage_Type] [nvarchar](50) NOT NULL,
	[RAM] [nvarchar](50) NOT NULL,
	[Storage_Capacity] [nvarchar](50) NOT NULL,
	)

	---Insert column into the table 
	INSERT INTO [PC_Staging].[dbo].[Dim_Product](PC_Make, PC_Model,Storage_Type, RAM,Storage_Capacity)
	SELECT DISTINCT PC_Make, PC_Model, Storage_Type, RAM,Storage_Capacity
	FROM [PC_Staging].[dbo].[pc_data];

	---Confirming data on the created table
SELECT * FROM [PC_Staging].[dbo].[Dim_Product];