# 🛍️ Retail Sales Analysis using SQL

## 📌 Project Overview

This project demonstrates how SQL can be used to solve real-world retail business problems and generate actionable business insights from transactional sales data.

The project simulates the responsibilities of a **Data Analyst** working in the **Retail and E-commerce industry**, focusing on customer behavior, sales trends, category performance, and operational analytics.

---

## 🎯 Business Objective

Retail companies generate thousands of transactions every day and require timely insights to support business decisions.

This project helps answer questions such as:

* 📈 Which product categories generate the highest revenue?
* 👥 Who are the highest-value customers?
* 📅 Which months perform best in terms of sales?
* 🛒 How do customers behave across categories and genders?
* ⏰ What are the busiest business hours?

---

## 🗂️ Dataset Information

The dataset contains transactional retail sales data with the following fields:

| Column Name       | Description                   |
| ----------------- | ----------------------------- |
| `transactions_id` | Unique transaction identifier |
| `sale_date`       | Date of transaction           |
| `sale_time`       | Time of transaction           |
| `customer_id`     | Unique customer identifier    |
| `gender`          | Customer gender               |
| `age`             | Customer age                  |
| `category`        | Product category              |
| `quantity`        | Quantity sold                 |
| `total_sale`      | Total transaction value       |

---

## 🧩 Business Problems Solved

### ✅ 1. Retrieve sales for a specific business date

* Extracted all transactions made on `2022-11-05`.

### ✅ 2. Identify high-volume clothing transactions

* Retrieved Clothing transactions where quantity sold was greater than 4 during November 2022.

### ✅ 3. Calculate total sales by category

* Measured category-wise revenue contribution.

### ✅ 4. Analyze customer demographics

* Calculated the average age of customers purchasing Beauty products.

### ✅ 5. Identify high-value transactions

* Retrieved transactions with sales value greater than `1000`.

### ✅ 6. Gender-wise purchase analysis

* Calculated transaction counts by gender and category.

### ✅ 7. Find the best-selling month in each year

* Determined the highest-performing sales month using average monthly sales.

### ✅ 8. Identify top customers

* Retrieved the top 5 customers based on total revenue contribution.

### ✅ 9. Customer reach analysis

* Calculated unique customers purchasing from each category.

### ✅ 10. Shift-wise operational analysis

Classified orders into:

* 🌅 Morning Shift (< 12 PM)
* 🌞 Afternoon Shift (12 PM - 5 PM)
* 🌙 Evening Shift (> 5 PM)

---

## 📊 KPIs Delivered

This project generates several important business KPIs:

* 💰 Total Revenue by Category
* 📈 Average Monthly Sales
* 🏆 Top Revenue Contributing Customers
* 👥 Unique Customer Count by Category
* 🚻 Gender-wise Transaction Distribution
* 🎯 Average Customer Age by Category
* 💎 High Value Transaction Count
* ⏰ Shift-wise Order Volume
* 📅 Sales Trend Analysis
* 🛒 Customer Purchase Behavior

---

## 🚀 Project Impact

This analysis enables businesses to:

* 📌 Identify profitable product categories
* 📌 Recognize high-value customers
* 📌 Improve staffing through shift analysis
* 📌 Optimize inventory planning
* 📌 Support targeted marketing campaigns
* 📌 Improve customer segmentation strategies

---

## 🛠️ SQL Concepts Used

### 🔹 Core SQL

* SELECT
* WHERE
* ORDER BY
* GROUP BY
* DISTINCT

### 🔹 Aggregate Functions

* SUM()
* AVG()
* COUNT()

### 🔹 Advanced SQL

* Common Table Expressions (CTEs)
* CASE Statements
* Date Functions
* Conditional Logic
* Business Rule Implementation

---

## 💻 Technology Stack

| Technology | Usage                       |
| ---------- | --------------------------- |
| SQL Server | Database Platform           |
| T-SQL      | Query Development           |
| SSMS       | Query Execution and Testing |

---

## 📁 Repository Structure

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

## 💼 Resume Bullet Points

* Developed an end-to-end SQL analytics project using retail transaction data to solve 10+ business problems.
* Designed SQL solutions for customer segmentation, revenue analysis, sales trends, and operational reporting.
* Utilized CTEs, aggregate functions, CASE statements, and date functions to build analytical solutions.
* Delivered business KPIs including category revenue, customer contribution, and shift-level operational insights.
* Demonstrated practical SQL problem-solving skills using SQL Server and T-SQL.

---

## 🧠 Skills Demonstrated

* SQL
* T-SQL
* Data Analysis
* Business Analytics
* KPI Development
* Retail Analytics
* Customer Analytics
* Sales Analytics
* Problem Solving
* Data Storytelling

---

## 👨‍💻 Author

**Rakesh Chavan**

Senior Data Analyst | Power BI | SQL | Python | Microsoft Fabric | PL-300 Certified | DP-600 Certified

---

