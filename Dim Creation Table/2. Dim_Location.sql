DROP TABLE [PC_Staging].[dbo].[Dim_Location]
CREATE TABLE [PC_Staging].[dbo].[Dim_Location](
    [LocationID] INT IDENTITY(1,1) PRIMARY KEY,
	[Continent] [nvarchar](50) NOT NULL,
	[Country_or_State] [nvarchar](50) NOT NULL,
	[Province_or_City] [nvarchar](100) NOT NULL
	)

	INSERT INTO [PC_Staging].[dbo].[Dim_Location](Continent, Country_or_State, Province_or_City)
	SELECT DISTINCT Continent, Country_or_state, Province_or_City
	FROM [PC_Staging].[dbo].[pc_data];

	----Checking the table 
	SELECT * FROM [PC_Staging].[dbo].[Dim_Location] 

