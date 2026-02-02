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


