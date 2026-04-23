---7. Dim Payment
CREATE OR ALTER PROCEDURE SP_load_dim_payment
AS
BEGIN
	INSERT INTO [PC_Staging].[dbo].[dim_payment]
	(Payment_Method)
	SELECT DISTINCT
		Payment_Method
	FROM [PC_Staging].[dbo].[pc_data];
END;
GO
