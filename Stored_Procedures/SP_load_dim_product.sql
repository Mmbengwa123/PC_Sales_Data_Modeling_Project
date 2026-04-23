---5. Dim_Product

CREATE OR ALTER PROCEDURE SP_load_dim_product
AS
BEGIN
	INSERT INTO [PC_Staging].[dbo].[dim_product]
	(PC_Make, PC_Model, Storage_Type, RAM, Storage_Capacity)
	SELECT DISTINCT
		PC_Make,
		PC_Model,
		Storage_Type,
		RAM,
		Storage_Capacity
	FROM [PC_Staging].[dbo].[pc_data];
END;
GO
