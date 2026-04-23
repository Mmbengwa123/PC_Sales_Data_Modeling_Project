# PC_Sales_Data_Modeling_Project
PC_Sales_Data_Modeling/Nomalisation


 PC Sale Project

Overview
The PC Sale Project is an end-to-end ETL (Extract, Transform, Load) pipeline designed to process and analyze sales data. The project leverages SQL Server Management Studio (SSMS) for database operations, GitHub for version control, and draw.io for data modeling and architecture visualization.

 Features
- Data Modeling 
  - Designed conceptual and logical models using draw.io.  
  - Created Dimensional Tables (Dim Tables) for analytical reporting.  

- Database Layers 
  - Staging Database: Used for cleaning and preprocessing raw data.  
  -Warehouse Database: Structured for analytics and reporting.  

- ETL Components 
  - Developed Stored Procedures to automate data transformations.  
  - Implemented data cleaning and preparation in the Staging DB.  

- Version Control  
  - Managed code and workflow using Git and pushed to GitHub.  

 📂 Project Structure
```
PC-Sale-Project/
│
├── /data_modeling        # draw.io diagrams
├── /sql_scripts          # stored procedures, table creation scripts
├── /staging_db           # scripts for staging database
├── /warehouse_db         # scripts for warehouse database
├── README.md             # project documentation
```

--Next Steps (Data Engineer Roadmap)
As a data engineer building this ETL pipeline, here’s what comes next:

1. **Data Loading into Warehouse**  
   - Move cleaned data from Staging DB into **Warehouse DB** using stored procedures or ETL jobs.
2. Fact Tables Creation  
   - Build **Fact Tables (e.g., `FactSales`) that connect to your Dim Tables for star schema design.

3. Automation & Scheduling  
   - Set up ETL workflows with **SQL Server Agent** or an orchestration tool (e.g., Airflow, Azure Data Factory) to automate data refresh.

4. Data Quality & Validation
   - Implement checks to ensure data accuracy, completeness, and consistency.

5. Performance Optimization  
   - Add indexes, partitioning, and optimize queries for faster reporting.

6. Analytics & Reporting Layer  
   - Connect the Warehouse DB to BI tools (e.g., Power BI, **Tableau) for dashboards and insights.

7. Documentation & CI/CD  
   - Expand documentation for each ETL step.  
   - Integrate CI/CD pipelines for automated testing and deployment of SQL scripts.

 Tech Stack
- SQL Server Management Studio (SSMS)
- Git & GitHub
- draw.io
- SQL Stored Procedures
- Staging & Warehouse Databases

Would you like me to also add a **sample star schema diagram** (Fact + Dim tables) into the README so that your GitHub page looks more visually engaging?
