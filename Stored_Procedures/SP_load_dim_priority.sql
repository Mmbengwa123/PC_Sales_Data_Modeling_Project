---4. Dim_Priority
CREATE OR ALTER PROCEDURE SP_load_dim_priority
AS
BEGIN
	INSERT INTO [PC_Staging].[dbo].[dim_priority]
	(Priority)
	SELECT DISTINCT
		Priority
	FROM [PC_Staging].[dbo].[pc_data];
END;
GO
