DROP TABLE [PC_Staging].[dbo].[Dim_Customer];
CREATE TABLE [PC_Staging].[dbo].[Dim_Customer](
    [CustomerID] INT IDENTITY(1,1) PRIMARY KEY,
	[Customer_Name] [nvarchar](50) NOT NULL,
	[Customer_Surname] [nvarchar](50) NOT NULL,
	[Customer_Contact_Number] [nvarchar](50) NOT NULL,
	[Customer_Email_Address] [nvarchar](50) NOT NULL,
	)

	INSERT INTO [PC_Staging].[dbo].[Dim_Customer] (Customer_Name, Customer_Surname ,Customer_Contact_Number ,Customer_Email_Address)
	SELECT DISTINCT Customer_Name, Customer_Surname ,Customer_Contact_Number ,Customer_Email_Address
	FROM [PC_Staging].[dbo].[pc_data];

	---Confirming data on the created table

	SELECT * FROM [PC_Staging].[dbo].[Dim_Customer];