-- 1. Dim_customer 
CREATE OR ALTER PROCEDURE SP_load_dim_customer
AS
BEGIN
    INSERT INTO [PC_Staging].[dbo].[dim_customer]
    (Customer_Name, Customer_Surname, Customer_Contact_Number, Customer_Email_Address)
    SELECT DISTINCT
        Customer_Name,
        Customer_Surname,
        Customer_Contact_Number,
        Customer_Email_Address
    FROM [PC_Staging].[dbo].[pc_data];
END;
GO
