---9. Dim_shop
CREATE OR ALTER PROCEDURE SP_load_dim_shop
AS
BEGIN
	INSERT INTO [PC_Staging].[dbo].[dim_shop]
	(Shop_Name, Shop_Age)
	SELECT DISTINCT
		Shop_Name,
		Shop_Age
	FROM [PC_Staging].[dbo].[pc_data];
END;
GO	