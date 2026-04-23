DROP TABLE [PC_Staging].[dbo].[Dim_Payment]
CREATE TABLE [PC_Staging].[dbo].[Dim_Payment](
[PaymentID] INT IDENTITY (1,1) PRIMARY KEY,
[Payment_Method] [nvarchar](50) NOT NULL,
)

---Insert column into created table

INSERT INTO [PC_Staging].[dbo].[Dim_Payment] (Payment_Method)
SELECT DISTINCT Payment_Method
FROM [PC_Staging].[dbo].[pc_data];

---Confirm if the data has been nserted to te table

SELECT * FROM [PC_Staging].[dbo].[Dim_Payment]