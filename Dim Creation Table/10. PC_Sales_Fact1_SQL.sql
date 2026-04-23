CREATE TABLE [PC_Staging].[dbo].[PC_Sales_Fact1] (
    FactID INT IDENTITY(1,1) PRIMARY KEY,
    Customer_id INT NOT NULL,
    Product_id INT NOT NULL,
    Sales_Person_id INT NOT NULL,
    Location_id INT NOT NULL,
    Date_id INT NOT NULL,
    Priority_id INT NOT NULL,
    Payment_id INT NOT NULL,
    Channel_id INT NOT NULL,
    Shop_id INT NOT NULL,
    Ship_Date DATE,
    Total_Sales_per_Employee DECIMAL(18,2),
    PC_Market_Price DECIMAL(18,2),
    Cost_of_Repairs DECIMAL(18,2),
    Sales_Price DECIMAL(18,2),
    Cost_Price DECIMAL(18,2),
    Finance_Amount DECIMAL(18,2),
    Payment_Method NVARCHAR(50),
    Purchase_Date DATE,
    Credit_Score INT,
    [LOAD_DATE] DATETIME DEFAULT GETDATE()

 --  Foreign Key Constraints

 -- Constraints must be listed here, after all columns

    CONSTRAINT FK_Customer FOREIGN KEY (Customer_id) REFERENCES [PC_Staging].[dbo].[Dim_Customer](CustomerID),
    CONSTRAINT FK_Product FOREIGN KEY (Product_id) REFERENCES [PC_Staging].[dbo].[Dim_Product](ProductID),
    CONSTRAINT FK_SalesPerson FOREIGN KEY (Sales_Person_id) REFERENCES [PC_Staging].[dbo].[Dim_SalesPerson](SalesPersonID),
    CONSTRAINT FK_Location FOREIGN KEY (Location_id) REFERENCES [PC_Staging].[dbo].[Dim_Location](LocationID),
    CONSTRAINT FK_Date FOREIGN KEY (Date_id) REFERENCES [PC_Staging].[dbo].[Dim_Date](DateID),
    CONSTRAINT FK_Priority FOREIGN KEY (Priority_id) REFERENCES [PC_Staging].[dbo].[Dim_Priority](PriorityID),
    CONSTRAINT FK_Payment FOREIGN KEY (Payment_id) REFERENCES [PC_Staging].[dbo].[Dim_Payment](PaymentID),
    CONSTRAINT FK_Channel FOREIGN KEY (Channel_id) REFERENCES [PC_Staging].[dbo].[Dim_Channel](ChannelID),
    CONSTRAINT FK_Shop FOREIGN KEY (Shop_id) REFERENCES [PC_Staging].[dbo].[Dim_Shop](ShopID)
);


INSERT INTO [PC_Staging].[dbo].[PC_Sales_Fact1] (
    Customer_id, Product_id, Sales_Person_id, Location_id, Date_id,
    Priority_id, Payment_id, Channel_id, Shop_id,
    Ship_Date, Total_Sales_per_Employee, PC_Market_Price, Cost_of_Repairs,
    Sales_Price, Cost_Price, Finance_Amount, Payment_Method,
    Purchase_Date, Credit_Score
)
SELECT
    Customer_id,
    Product_id,
    Sales_Person_id,
    Location_id,
    Date_id,
    Priority_id,
    Payment_id,
    Channel_id,
    Shop_id,
    Ship_Date,
    Total_Sales_per_Employee,
    PC_Market_Price,
    Cost_of_Repairs,
    Sales_Price,
    Cost_Price,
    Finance_Amount,
    Payment_Method,
    Purchase_Date,
    Credit_Score
FROM [PC_Staging].[dbo].[pc_data];

---confirming my data on the created table

SELECT COUNT(*) from [PC_Staging].[dbo].[PC_Sales_Fact1];

