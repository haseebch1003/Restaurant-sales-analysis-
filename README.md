# Pizza Sales Analysis | SQL Server and Power BI

## Project Overview

This project is an end to end data analysis case study focused on analyzing pizza sales data to evaluate business performance and identify key trends.

Azure Data Studio was used for data preparation, validation, and metric calculation using SQL Server. Power BI was used to build interactive dashboards for visualization and insight generation.

The project was driven by a defined problem statement with specific KPI and chart requirements. The final solution closely follows those requirements and mirrors real world data analyst workflows.


## Problem Statement

The objective of this project was to analyze key indicators from pizza sales data to gain insights into overall business performance.

The analysis needed to calculate core KPIs and visualize trends related to customer ordering behavior, product performance, and sales distribution.

The solution needed to provide clear answers to management level questions while remaining accurate, transparent, and easy to explore.


## KPI Requirements

The following key performance indicators were required and calculated.

**Total Revenue**  
The sum of the total price of all pizza orders.

**Average Order Value**  
The average amount spent per order, calculated by dividing total revenue by the total number of orders.

**Total Pizzas Sold**  
The total quantity of pizzas sold across all orders.

**Total Orders**  
The total number of unique orders placed.

**Average Pizzas Per Order**  
The average number of pizzas sold per order, calculated by dividing total pizzas sold by total orders.

All KPIs were first calculated and validated using SQL before being recreated as DAX measures in Power BI.


## Dataset Description

The dataset contains approximately 48,000 rows of transactional pizza sales data covering a full calendar year.

Each record includes:

- Order ID  
- Order date and time  
- Pizza name  
- Pizza category  
- Pizza size  
- Quantity sold  
- Unit price  
- Total price  

The raw data is stored as a CSV file and imported into SQL Server for analysis.


## Tools and Technologies Used

- Azure Data Studio  
- SQL Server  
- Power BI Desktop  
- Power Query for data transformation  
- DAX for calculated measures  


## Data Preparation and Validation

The raw CSV file was imported into SQL Server using Azure Data Studio, where a dedicated database and table were created with appropriate data types.

Validation steps included:

- Comparing row counts between the source file and SQL table  
- Checking for null values in critical fields  
- Verifying that order level data was not duplicated  
- Ensuring numeric fields such as quantity and pricing were valid  

These steps ensured that all downstream analysis was based on reliable data.


## SQL Analysis and Metric Calculation

SQL was used as the primary source of truth for all calculations.

Key SQL logic included:

- Aggregations for revenue, quantity, and orders  
- Distinct order counts for accurate KPIs  
- Date based transformations for daily and monthly trends  
- Grouped analysis by pizza category and size  
- Ranking logic to identify top and bottom performing products  

All SQL results were documented and used to validate Power BI outputs.


## Chart Requirements and Visual Analysis

The following visual requirements were identified and implemented in Power BI.

**Daily Trend for Total Orders**  
A bar chart displaying daily order volume to identify patterns and fluctuations in customer demand.

**Monthly Trend for Total Orders**  
A line chart showing monthly order trends to highlight seasonality and long term performance changes.

**Percentage of Sales by Pizza Category**  
A pie or donut chart showing how total sales are distributed across pizza categories.

**Percentage of Sales by Pizza Size**  
A pie or donut chart showing customer preference for different pizza sizes and their contribution to sales.

**Total Pizzas Sold by Pizza Category**  
A funnel chart comparing the total quantity of pizzas sold for each category.

**Top 5 Best Sellers**  
Bar charts highlighting the top 5 pizzas based on revenue, total quantity sold, and total orders.

**Bottom 5 Worst Sellers**  
Bar charts showcasing the bottom 5 pizzas based on revenue, total quantity sold, and total orders.


## Power BI Data Modeling and Transformation

Power BI was connected directly to the SQL Server database.

Transformations included:

- Standardizing pizza size values into readable labels  
- Creating calculated columns for day name and month name  
- Adding numeric sort columns to ensure correct chronological ordering  

The data model was intentionally kept simple to maintain clarity and performance.


## DAX Measures

Reusable DAX measures were created for all KPIs, including:

- Total Revenue  
- Total Orders  
- Total Pizzas Sold  
- Average Order Value  
- Average Pizzas Per Order  

These measures were consistently reused across all visuals to ensure accuracy.


## Dashboard Development

Two interactive dashboards were developed.

**Sales Overview Dashboard**

- KPI cards displaying all core metrics  
- Daily and monthly order trend charts  
- Sales distribution by pizza category and size  
- Funnel chart for pizzas sold by category  
- Date and category slicers  
- Text based insights summarizing trends  

**Best and Worst Sellers Dashboard**

- Top 5 and bottom 5 pizzas by revenue  
- Top 5 and bottom 5 pizzas by quantity sold  
- Top 5 and bottom 5 pizzas by total orders  
- Filters to analyze performance by date and category  
- Insights to support product and menu decisions  

Navigation buttons were added to allow seamless movement between dashboards.


## Validation and Accuracy

All Power BI metrics and visuals were cross checked against SQL query results to ensure complete accuracy.

Any discrepancies were resolved before finalizing the dashboards.

