3.-- 1. Dim_Date

CREATE OR ALTER PROCEDURE SP_load_dim_date
AS
BEGIN
	INSERT INTO [PC_Staging].[dbo].[dim_date]
	(Purchase_Date, Ship_Date)
	SELECT DISTINCT
		Purchase_Date,
		Ship_Date
	FROM [PC_Staging].[dbo].[pc_data];
END;
GO
