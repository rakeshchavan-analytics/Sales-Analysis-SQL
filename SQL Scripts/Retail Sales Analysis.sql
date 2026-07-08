Create database SQL_Project1
use SQL_Project1

CREATE TABLE retail_sales
(
    transactions_id INT PRIMARY KEY,
    sale_date DATE,	
    sale_time TIME,
    customer_id INT,	
    gender VARCHAR(10),
    age INT,
    category VARCHAR(35),
    quantity INT,
    price_per_unit FLOAT,	
    cogs FLOAT,
    total_sale FLOAT
);

-- checking Null-- (Here deleting all null records)
select * from retail_sales
where transactions_id is null

select * from retail_sales
where sale_date is null

SELECT * FROM retail_sales
WHERE 
    sale_date IS NULL OR 
	sale_time IS NULL OR 
	customer_id IS NULL OR 
    gender IS NULL OR 
	age IS NULL OR 
	category IS NULL OR 
    quantity IS NULL OR 
	price_per_unit IS NULL OR 
	cogs IS NULL;

delete from retail_sales
WHERE 
    sale_date IS NULL OR 
	sale_time IS NULL OR 
	customer_id IS NULL OR 
    gender IS NULL OR 
	age IS NULL OR 
	category IS NULL OR 
    quantity IS NULL OR 
	price_per_unit IS NULL OR 
	cogs IS NULL;

-- Project Exploration
--how many sales we have
select COUNT(*) from retail_sales

--how many unique customer we have

select count(distinct customer_id) from retail_sales

-- how many categories we have
select count(distinct category) from retail_sales

select distinct category from retail_sales

-- Data analysis & buiseness Key problems

--1.Write a SQL query to retrieve all columns for sales made on '2022-11-05:

select * from retail_sales
where sale_date='2022-11-05'

--2. Write a SQL query to retrieve all transactions where the category 
--is 'Clothing' and the quantity sold is more than 4 in the month of Nov-2022:

select * from retail_sales
where
category='Clothing' and
quantity>=4 and 
MONTH(sale_date)=11

--3.Write a SQL query to calculate the total sales (total_sale) for each category

select category,
sum(total_sale) as TotalSales
from retail_sales
group by category

--4. Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.:

select customer_id,
AVG(age) as Avg_age
from retail_sales
WHERE category = 'Beauty'
group by customer_id
order by customer_id

--5. Write a SQL query to find all transactions where the total_sale is greater than 1000.:

select * from 
retail_sales
where total_sale>1000

--6. Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.

select category,gender,
COUNT(transactions_id) as Total_count
from retail_sales
group by gender, category
order by category

--7. Write a SQL query to calculate the average sale for each month. Find out best selling month in each year:

with cte as(
select YEAR(sale_date) as Yr,
month(sale_date) as mon,
round(AVG(total_sale),2) as AvgSales
from retail_sales
group by YEAR(sale_date),month(sale_date)
)
select yr,max(AvgSales) as MaxAVgSales
from cte
group by yr

--8.Write a SQL query to find the top 5 customers based on the highest total sales 

select top 5 customer_id,
SUM(total_sale) as totalSales
from retail_sales
group by customer_id
order by SUM(total_sale) desc

--9. Write a SQL query to find the number of unique customers who purchased items from each category

select  category,
COUNT(distinct customer_id) as CustomerCount
from retail_sales
group by category

--10. Write a SQL query to create each shift and number of orders 
--(Example Morning <12, Afternoon Between 12 & 17, Evening >17):

with cte as (
select *,
DATEPART(HOUR,sale_time) as hrs,
case
	when DATEPART(HOUR,sale_time) <12 then 'Shift1'
	when DATEPART(HOUR,sale_time) >=12 and DATEPART(HOUR,sale_time)<17 then 'Shift2'
	else 'Shift3'
	end as Shift_timings
from retail_sales)

select Shift_timings,
COUNT(*) as Total_orders
from cte
group by Shift_timings
order by Shift_timings
