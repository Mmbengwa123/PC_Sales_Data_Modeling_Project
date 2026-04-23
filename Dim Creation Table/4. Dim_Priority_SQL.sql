DROP TABLE [PC_Staging].[dbo].[Dim_Priority]
CREATE TABLE [PC_Staging].[dbo].[Dim_Priority](
    [PriorityID] INT IDENTITY(1,1) PRIMARY KEY,
    [Priority] [nvarchar](50) NOT NULL
    )

    ---Inserting column into the table

    INSERT INTO [PC_Staging].[dbo].[Dim_Priority] (Priority)
    SELECT DISTINCT Priority
    FROM [PC_Staging].[dbo].[pc_data];

    ---Confirming if he data is inserted into the table

    SELECT * FROM [PC_Staging].[dbo].[Dim_Priority];