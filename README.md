# retail-sales-sql-analysis
End-to-end Retail Sales Analysis using SQL with real-world business queries.

# Retail Sales Analysis using SQL

## Project Overview
This project analyzes retail sales data using SQL to extract meaningful business insights related to customer behavior, sales performance, and profitability.

##  Tools Used
- MySQL
- MySQL Workbench
- Excel (CSV import)
- GitHub

##  Dataset
The dataset includes transaction-level sales data with customer demographics, product categories, pricing, and cost details.

##  SQL Concepts Used
- Data Definition Language (DDL)
- Data Manipulation Language (DML)
- WHERE, ORDER BY
- GROUP BY, HAVING
- Aggregate functions
- Date & Time functions
- CASE statements
- Subqueries
- Window functions

##  Business Questions Answered
- What are the total and category-wise sales?
- Who are the top customers by revenue?
- Which categories are most profitable?
- What are the monthly sales trends?

## Outcome
This project demonstrates practical SQL skills for real-world data analysis and reporting.
'''SQL
CREATE DATABASE project1;
USE project1;

CREATE TABLE sales (
    transactions_id INT PRIMARY KEY,
    sale_date DATE,
    sale_time TIME,
    customer_id INT,
    gender VARCHAR(10),
    age INT,
    category VARCHAR(50),
    quantiy INT,
    price_per_unit DECIMAL(10,2),
    cogs DECIMAL(10,2),
    total_sale DECIMAL(10,2)
);
'''

-- Total number of transactions
SELECT COUNT(*) AS total_transactions
FROM sales;

-- Total sales by category
SELECT category, SUM(total_sale) AS category_sales
FROM sales
GROUP BY category;

-- Average age by gender
SELECT gender, AVG(age) AS avg_age
FROM sales
GROUP BY gender;

-- Monthly sales trend
SELECT MONTH(sale_date) AS month,
       SUM(total_sale) AS monthly_sales
FROM sales
GROUP BY month
ORDER BY month;

-- Profit per transaction
SELECT transactions_id,
       total_sale - cogs AS profit
FROM sales;

-- Rank customers by total sales
SELECT customer_id,
       SUM(total_sale) AS total_spent,
       RANK() OVER (ORDER BY SUM(total_sale) DESC) AS sales_rank
FROM sales
GROUP BY customer_id;

