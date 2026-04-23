---2. Dim-location
CREATE OR ALTER PROCEDURE SP_load_dim_location
AS
BEGIN
    INSERT INTO [PC_Staging].[dbo].[dim_location]
    (Continent, Country_or_State, Province_or_City)
    SELECT DISTINCT
        Continent,
        Country_or_State,
        Province_or_City
    FROM [PC_Staging].[dbo].[pc_data];
END;
GO