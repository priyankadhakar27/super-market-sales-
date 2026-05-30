create database Ecommerce_project;
USE Ecommerce_project;

CREATE TABLE sales_data (
    Branch VARCHAR(10),
    City VARCHAR(50),
    Customer_type VARCHAR(50),
    Gender VARCHAR(20),
    Product_line VARCHAR(100),
    Unit_price FLOAT,
    Quantity INT,
    Sales FLOAT,
    Date DATE,
    Time TIME,
    Rating FLOAT
);


select*from sales_data;

#TOTAL SALES
SELECT sum(Sales) as TOTAL_SALES
FROM sales_data;

#TOTAL QUANTITY SOLD
SELECT sum(Quantity) as TOTAL_QUANTITY
FROM sales_data;

#PRODUCT LINE PERFORMANCE
SELECT Product_line,
SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY Product_line
ORDER BY Total_Sales DESC;

#CUSTOMER TYPE
SELECT Customer_type,
SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY Customer_type;


#MONTHLY ANALYSIS
SELECT MONTH(Date) AS Month,
SUM(Sales) AS Monthly_Sales
FROM sales_data
GROUP BY Month
ORDER BY Month;

#TOP 5 SALES
SELECT *
FROM sales_data
ORDER BY Sales DESC
LIMIT 5;





