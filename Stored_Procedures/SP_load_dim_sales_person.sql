---6. Dim_Sales person

CREATE OR ALTER PROCEDURE SP_load_dim_sales_person
AS
BEGIN
	INSERT INTO [PC_Staging].[dbo].[dim_sales_person]
	(Sales_Person_Name, Sales_Person_Department)
	SELECT DISTINCT
		Sales_Person_Name,
		Sales_Person_Department
	FROM [PC_Staging].[dbo].[pc_data];
END;
GO
