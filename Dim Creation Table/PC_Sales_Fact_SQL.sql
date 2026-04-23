CREATE TABLE [PC_Staging].[dbo].[PC_Sales_Fact](
[SalesID] INT IDENTITY(1,1) PRIMARY KEY,
[Customer_id] INT NOT NULL,
[Product_id] INT NOT NULL,
[Sales Person_id] INT NOT NULL,
[Location_id] INT NOT NULL,
[Date_id] INT NOT NULL,
[Priority_id] INT NOT NULL,
[Payment_id] INT NOT NULL,
[Channel_id] INT NOT NULL,
[Shop_id] INT NOT NULL,
[Ship_Date] nvarchar(50) NOT NULL,
[Total_Sales_per_Employee] INT NOT NULL,
[PC_Market_Price] INT NOT NULL,
[Cost_of_Repairs] nvarchar(50) NOT NULL,
[Sales_Price] INT NOT NULL,
[Cost_Price] INT NOT NULL,
[Finance_Amount] nvarchar(50) NOT NULL,
[Payment_Method] nvarchar(50) NOT NULL,
[Purchase_Date] datetime2(7) NOT NULL,
[Credit_Score] INT NOT NULL,
[LOAD DATE ] DATETIME DEFAULT GETDATE(),
);



---Insert Data into Fact Table

INSERT INTO [PC_Staging].[dbo].[PC_Sales_Fact] (
    Customer_id, Product_id, [Sales Person_id], Location_id, Date_id,
    Priority_id, Payment_id, Channel_id, Shop_id,
    Ship_Date, Total_Sales_per_Employee, PC_Market_Price, Cost_of_Repairs,
    Sales_Price, Cost_Price, Finance_Amount, Payment_Method,
    Purchase_Date, Credit_Score
    

-- default surrogate key if not found
SELECT
    ISNULL(c.CustomerID, -1) AS CustomerID,
    ISNULL(p.ProductID, -1) AS ProductID,
    ISNULL(s.SalesPersonID, -1) AS SalesPersonID,
    ISNULL(l.LocationID, -1) AS LocationID,
    ISNULL(d.DateID, -1) AS DateID,
    ISNULL(pr.PriorityID, -1) AS PriorityID,
    ISNULL(pay.PaymentID, -1) AS PaymentID,
    ISNULL(ch.ChannelID, -1) AS ChannelID,
    ISNULL(sh.ShopID, -1) AS ShopID,
    r.Ship_Date,
    r.Total_Sales_per_Employee,
    r.PC_Market_Price,
    r.Cost_of_Repairs,
    r.Sales_Price,
    r.Cost_Price,
    r.Finance_Amount,
    r.Payment_Method,
    r.Purchase_Date,
    r.Credit_Score
FROM [PC_Staging].[dbo].[PC_sales_Fact] r
LEFT JOIN [PC_Staging].[dbo].[Dim_Customer] c ON r.Customer_id = c.CustomerID
LEFT JOIN [PC_Staging].[dbo].[Dim_Product] p ON r.Product_id = p.ProductID
LEFT JOIN [PC_Staging].[dbo].[Dim_SalesPerson] s ON r.[Sales Person_id] = s.SalesPersonID
LEFT JOIN [PC_Staging].[dbo].[Dim_Location] l ON r.Location_id = l.LocationID
LEFT JOIN [PC_Staging].[dbo].[Dim_Date] d ON r.Date_id = d.DateID
LEFT JOIN [PC_Staging].[dbo].[Dim_Priority] pr ON r.Priority_id = pr.PriorityID
LEFT JOIN [PC_Staging].[dbo].[Dim_Payment] pay ON r.Payment_id = pay.PaymentID
LEFT JOIN [PC_Staging].[dbo].[Dim_Channel] ch ON r.Channel_id = ch.ChannelID
LEFT JOIN [PC_Staging].[dbo].[Dim_Shop] sh ON r.Shop_id = sh.ShopID;

-------------------------------------------------------



INSERT INTO [PC_Staging].[dbo].[PC_Sales_Fact] (
    Customer_id, Product_id, [Sales Person_id], Location_id, Date_id,
    Priority_id, Payment_id, Channel_id, Shop_id,
    Ship_Date, Total_Sales_per_Employee, PC_Market_Price, Cost_of_Repairs,
    Sales_Price, Cost_Price, Finance_Amount, Payment_Method,
    Purchase_Date, Credit_Score
)
SELECT
    ISNULL(c.CustomerID, -1),
    ISNULL(p.ProductID, -1),
    ISNULL(s.SalesPersonID, -1),
    ISNULL(l.LocationID, -1),
    ISNULL(d.DateID, -1),
    ISNULL(pr.PriorityID, -1),
    ISNULL(pay.PaymentID, -1),
    ISNULL(ch.ChannelID, -1),
    ISNULL(sh.ShopID, -1),
    r.Ship_Date,
    r.Total_Sales_per_Employee,
    r.PC_Market_Price,
    r.Cost_of_Repairs,
    r.Sales_Price,
    r.Cost_Price,
    r.Finance_Amount,
    r.Payment_Method,
    r.Purchase_Date,
    r.Credit_Score
FROM [PC_Staging].[dbo].[PC_sales_Fact] r
LEFT JOIN [PC_Staging].[dbo].[Dim_Customer] c ON r.Customer_id = c.CustomerID
LEFT JOIN [PC_Staging].[dbo].[Dim_Product] p ON r.Product_id = p.ProductID
LEFT JOIN [PC_Staging].[dbo].[Dim_SalesPerson] s ON r.[Sales Person_id] = s.SalesPersonID
LEFT JOIN [PC_Staging].[dbo].[Dim_Location] l ON r.Location_id = l.LocationID
LEFT JOIN [PC_Staging].[dbo].[Dim_Date] d ON r.Date_id = d.DateID
LEFT JOIN [PC_Staging].[dbo].[Dim_Priority] pr ON r.Priority_id = pr.PriorityID
LEFT JOIN [PC_Staging].[dbo].[Dim_Payment] pay ON r.Payment_id = pay.PaymentID
LEFT JOIN [PC_Staging].[dbo].[Dim_Channel] ch ON r.Channel_id = ch.ChannelID
LEFT JOIN [PC_Staging].[dbo].[Dim_Shop] sh ON r.Shop_id = sh.ShopID;


SELECT COUNT(*) from [PC_Staging].[dbo].[PC_Sales_Fact];

