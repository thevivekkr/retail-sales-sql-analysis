create database project1;
use project1;
create table sales1(
transactions_id	int,
sale_date date,
sale_time time,
customer_id int,
gender varchar(15),
age	int,
category varchar(20),
quantiy	int,
price_per_unit float,
cogs float,
total_sale float
);

select count(*) as total_count 
from sales1;

select * from sales1;

SELECT * 
FROM SALES1
WHERE GENDER = "FEMALE";

SELECT distinct CATEGORY
FROM SALES1;

SELECT * 
FROM SALES1
WHERE TOTAL_SALE > 900;

SELECT CATEGORY, SUM(TOTAL_SALE) AS CATEGORY_SALE
FROM SALES1
GROUP BY CATEGORY;

SELECT category, SUM(total_sale) AS total_sales
FROM sales
GROUP BY category
HAVING SUM(total_sale) > 5000;

SELECT gender, AVG(age) AS avg_age
FROM sales
GROUP BY gender;

SELECT customer_id, COUNT(*) AS transaction_count
FROM sales
GROUP BY customer_id;


