---8. Dim_channel
CREATE OR ALTER PROCEDURE SP_load_dim_channel
AS
BEGIN
	INSERT INTO [PC_Staging].[dbo].[dim_channel]
	(Channel)
	SELECT DISTINCT
		Channel
	FROM [PC_Staging].[dbo].[pc_data];
END;
GO
	