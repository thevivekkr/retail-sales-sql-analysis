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

SELECT * 
FROM SALES1
WHERE TRANSACTIONS_ID IS NULL;

SELECT * 
FROM SALES1
WHERE QUANTIY IS NULL;

SELECT * 
FROM SALES1
WHERE 
	TOTAL_SALE IS NULL
    or
    sale_date IS NULL
    or
    sale_time IS NULL
    or
    customer_id IS NULL
    or
    gender IS NULL
    or
    age IS NULL
    or
    category IS NULL
    or
    quantiy IS NULL
    or
    price_per_unit IS NULL
    OR
    cogs IS NULL
    or
    total_sale IS NULL;
    
    SELECT COUNT(DISTINCT CUSTOMER_ID) AS TOTAL_SALES FROM SALES1;
    
	SELECT COUNT(DISTINCT CATEGORY) AS ALL_CATEOGRY FROM SALES1;
    
    SELECT DISTINCT CATEGORY AS ALL_CATEOGRY FROM SALES1;
    
    SELECT *
    FROM SALES1
    WHERE SALE_DATE = "2022-11-05";
    
	SELECT *
    FROM SALES1
    WHERE CATEGORY = "CLOTHING" OR QUANTIY >= 5;
    
    SELECT CATEGORY, SUM(QUANTIY)
    FROM SALES1
    where CATEGORY = "Clothing"
    GROUP BY 1;

selecT * FROM SALES1;

SELECT CATEGORY, SUM(TOTAL_SALE) AS TOTAL_SALE,
COUNT(*) AS TOTAL_ORDER
FROM SALES1
GROUP BY 1;

selecT * FROM SALES1;

select round(avg(AGE),2) AS AVG_AGE
FROM SALES1
WHERE CATEGORY = "BEAUTY"; 

SELECT *
FROM SALES1
WHERE TOTAL_SALE >1000;

SELECT CATEGORY, GENDER, COUNT(*) AS NO_OF_TRANS
FROM SALES1
GROUP BY CATEGORY, GENDER; 

selecT * FROM SALES1;

SELECT extract(YEAR FROM SALE_DATE) AS YEAR, extract(MONTH FROM SALE_DATE) AS MONTH,
ROUND(avg(total_sale),2) AS AVG_SALE
FROM SALES1
GROUP BY 1,2
order  BY 1,2;

SELECT CUSTOMER_id, sum(total_sale) as total
from sales1
group by 1
order by 2 desc;

select category, count(distinct customer_id) as cnt_unq_cs
from sales1


group by category;