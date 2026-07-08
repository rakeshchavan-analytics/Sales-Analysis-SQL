# 🛍️ Retail Sales Analysis using SQL

## 📌 Project Overview

This project demonstrates how SQL can be leveraged to solve real-world retail business problems and generate actionable business insights from transactional sales data.

The project simulates the day-to-day responsibilities of a **Data Analyst** working in the **Retail and E-commerce industry**, focusing on customer behavior, sales trends, category performance, and operational analytics.

---

# 🎯 Business Objective

Retail businesses generate thousands of transactions daily and require timely insights to support business decisions.

This project helps answer key business questions such as:

* 📈 Which product categories generate the highest revenue?
* 👥 Who are the highest-value customers?
* 📅 Which months perform best in terms of sales?
* 🛒 How do customers behave across categories and genders?
* ⏰ What are the busiest business hours?

---

# 🗂️ Dataset Information

| Column Name       | Description                   |
| ----------------- | ----------------------------- |
| `transactions_id` | Unique transaction identifier |
| `sale_date`       | Transaction date              |
| `sale_time`       | Transaction time              |
| `customer_id`     | Unique customer identifier    |
| `gender`          | Customer gender               |
| `age`             | Customer age                  |
| `category`        | Product category              |
| `quantity`        | Quantity sold                 |
| `total_sale`      | Total transaction value       |

---

# 🧩 Business Problems & SQL Solutions

## ✅ Problem 1: Retrieve all sales made on `2022-11-05`

### Business Requirement

Retrieve all transactions performed on a specific business date for operational reporting and reconciliation.

```sql
SELECT *
FROM retail_sales
WHERE sale_date = '2022-11-05';
```

---

## ✅ Problem 2: Find Clothing transactions with quantity greater than 4 during November 2022

### Business Requirement

Identify bulk clothing purchases during seasonal demand periods.

```sql
SELECT *
FROM retail_sales
WHERE category = 'Clothing'
  AND quantity >= 4
  AND MONTH(sale_date) = 11;
```

---

## ✅ Problem 3: Calculate total sales for each category

### Business Requirement

Determine category-wise revenue contribution.

```sql
SELECT category,
SUM(total_sale) AS TotalSales
FROM retail_sales
GROUP BY category;
```

---

## ✅ Problem 4: Find the average age of customers purchasing Beauty products

### Business Requirement

Analyze customer demographics for targeted marketing campaigns.

```sql
SELECT customer_id,
AVG(age) AS Avg_age
FROM retail_sales
WHERE category = 'Beauty'
GROUP BY customer_id
ORDER BY customer_id;
```

---

## ✅ Problem 5: Retrieve transactions where total sales exceed 1000

### Business Requirement

Identify premium purchases and high-value transactions.

```sql
SELECT *
FROM retail_sales
WHERE total_sale > 1000;
```

---

## ✅ Problem 6: Find total number of transactions by gender and category

### Business Requirement

Analyze purchasing patterns across customer segments.

```sql
SELECT category,
gender,
COUNT(transactions_id) AS Total_count
FROM retail_sales
GROUP BY gender, category
ORDER BY category;
```

---

## ✅ Problem 7: Find the best-selling month in each year

### Business Requirement

Identify seasonal trends and support inventory planning.

```sql
WITH cte AS (
    SELECT YEAR(sale_date) AS Yr,
    MONTH(sale_date) AS mon,
    ROUND(AVG(total_sale),2) AS AvgSales
    FROM retail_sales
    GROUP BY YEAR(sale_date),
    MONTH(sale_date)
)

SELECT Yr,
MAX(AvgSales) AS MaxAvgSales
FROM cte
GROUP BY Yr;
```

---

## ✅ Problem 8: Find Top 5 customers based on total sales

### Business Requirement

Identify loyal and high-value customers.

```sql
SELECT TOP 5 customer_id,
SUM(total_sale) AS TotalSales
FROM retail_sales
GROUP BY customer_id
ORDER BY SUM(total_sale) DESC;
```

---

## ✅ Problem 9: Find unique customers purchasing from each category

### Business Requirement

Measure customer penetration by product category.

```sql
SELECT category,
COUNT(DISTINCT customer_id) AS CustomerCount
FROM retail_sales
GROUP BY category;
```

---

## ✅ Problem 10: Create shift-wise order distribution

### Business Requirement

Understand peak business hours for staffing and operational planning.

### Shift Definitions

* 🌅 Morning Shift → Before 12 PM
* 🌞 Afternoon Shift → 12 PM to 5 PM
* 🌙 Evening Shift → After 5 PM

```sql
WITH cte AS (
    SELECT *,
    DATEPART(HOUR, sale_time) AS hrs,
    CASE
        WHEN DATEPART(HOUR, sale_time) < 12 THEN 'Shift1'
        WHEN DATEPART(HOUR, sale_time) >= 12 AND DATEPART(HOUR, sale_time) < 17 THEN 'Shift2'
        ELSE 'Shift3'
    END AS Shift_timings
    FROM retail_sales
)

SELECT Shift_timings,
COUNT(*) AS Total_orders
FROM cte
GROUP BY Shift_timings
ORDER BY Shift_timings;
```

---

# 📊 KPIs Delivered

This project delivers several business KPIs commonly used by Retail Analytics teams:

* 💰 Total Revenue by Category
* 📈 Average Monthly Sales
* 🏆 Top Revenue Contributing Customers
* 👥 Unique Customer Count by Category
* 🚻 Gender-wise Transaction Distribution
* 🎯 Average Customer Age by Category
* 💎 High Value Transaction Count
* ⏰ Shift-wise Order Volume
* 📅 Sales Trend Analysis
* 🛒 Customer Purchase Behavior Metrics

---

# 🚀 Project Impact

This project demonstrates how SQL can drive business decisions by:

* 📌 Identifying high-performing product categories
* 📌 Recognizing top customers for retention programs
* 📌 Improving staffing decisions through shift analysis
* 📌 Supporting inventory planning using monthly trends
* 📌 Enabling targeted marketing through demographic analysis
* 📌 Providing visibility into customer purchasing behavior

---

# 🛠️ SQL Concepts Demonstrated

### Core SQL

* SELECT
* WHERE
* GROUP BY
* ORDER BY
* DISTINCT

### Aggregate Functions

* SUM()
* AVG()
* COUNT()

### Advanced SQL

* Common Table Expressions (CTEs)
* CASE Statements
* Date Functions
* Conditional Aggregation
* Business Rule Implementation

---

# 💻 Technology Stack

| Technology | Usage                       |
| ---------- | --------------------------- |
| SQL Server | Database Platform           |
| T-SQL      | Query Development           |
| SSMS       | Query Execution and Testing |

---

# 📁 Repository Structure

```text
Retail-Sales-SQL-Analysis/
│
├── Dataset/
│   └── retail_sales.csv
│
├── SQL Scripts/
│   └── Retail_Sales_Analysis.sql
│
├── Query Outputs/
│   └── Screenshots/
│
└── README.md
```

---

# 🧠 Skills Demonstrated

* SQL
* T-SQL
* Data Analysis
* Business Analytics
* Retail Analytics
* Sales Analytics
* KPI Development
* Customer Analytics
* Problem Solving
* Data Storytelling

---

# 👨‍💻 Author

**Rakesh Chavan** 

Data Analyst | Power BI • SQL • Python • Microsoft Fabric • Excel  

📧 Email: chavanrakesh666@gmail.com  
🔗 LinkedIn: [Rakesh Chavan](https://www.linkedin.com/in/rakesh-chavan-data/)  
💻 GitHub: [rakeshchavan-analytics](https://github.com/rakeshchavan-analytics)  
🌐 Portfolio: [Explore My Work](https://sites.google.com/view/rakeshchavan09/home)

---
