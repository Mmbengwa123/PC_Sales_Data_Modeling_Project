DROP TABLE [PC_Staging].[dbo].[Dim_Channel]
CREATE TABLE [PC_Staging].[dbo].[Dim_Channel] (
[ChannelID] INT IDENTITY(1,1) PRIMARY KEY,
[Channel] [nvarchar](50) NOT NULL,
)

---Insering colums into the table created
INSERT INTO [PC_Staging].[dbo].[Dim_Channel](Channel)
SELECT DISTINCT Channel
FROM [PC_Staging].[dbo].[pc_data];

---Confirming data on the created table

	SELECT * FROM [PC_Staging].[dbo].[Dim_Channel];