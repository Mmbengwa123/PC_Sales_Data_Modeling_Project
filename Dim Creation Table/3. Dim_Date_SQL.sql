DROP TABLE [PC_Staging].[dbo].[Dim_Date]
CREATE TABLE [PC_Staging].[dbo].[Dim_Date](
[DateID] INT IDENTITY(1,1) PRIMARY KEY,
[Purchase_Date] [datetime2](7) NOT NULL,
[Ship_Date] [nvarchar](50) NOT NULL
)

---Insring column into our table

INSERT INTO [PC_Staging].[dbo].[Dim_Date] (Purchase_Date, Ship_Date) 
SELECT DISTINCT Purchase_Date,Ship_Date
FROM [PC_Staging].[dbo].[pc_data];

---Confirming data on the created table
SELECT * FROM [PC_Staging].[dbo].[Dim_Date];