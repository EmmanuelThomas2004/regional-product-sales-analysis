# Regional Product Sales Analysis

## 📊 Overview

This project analyzes **product sales performance across different regions** using SQL.

The goal is to understand not only which products generate the most sales, but also how product performance varies across regions.

The same business question can also be explored using **Power BI/DAX and Python/Pandas**.

---

## 🎯 Business Problem

A business wants to answer:

> **Which products are driving sales, and how does their performance differ across regions?**

The analysis focuses on:

* Total sales by region
* Total sales by product
* Product sales within each region
* Top-selling product in each region
* Product contribution to regional sales

---

## 🗂️ Dataset

The dataset contains sales transactions with the following columns:

| Column        | Description             |
| ------------- | ----------------------- |
| `OrderID`     | Unique order identifier |
| `OrderDate`   | Date of the order       |
| `Region`      | Sales region            |
| `Product`     | Product purchased       |
| `Sales`       | Revenue generated       |
| `Profit`      | Profit generated        |
| `TargetSales` | Sales target            |

---

## 🛠️ Tools & Technologies

* **SQL**
* **Power BI / DAX**
* **Python / Pandas**

### SQL Concepts Used

* `SUM()`
* `GROUP BY`
* `ORDER BY`
* CTEs
* `DENSE_RANK()`
* Window Functions
* `PARTITION BY`
* Percentage calculations

---

## 📌 SQL Analysis

The project answers five business questions:

### 1. Total Sales by Region

Which region generates the highest total sales?

### 2. Total Sales by Product

Which product generates the highest total sales?

### 3. Product Sales Within Each Region

How much does each product contribute to each region's sales?

### 4. Top-Selling Product in Each Region

Which product is the best seller in each region?

### 5. Product Contribution Within Each Region

What percentage of a region's total sales comes from each product?

---

## 📁 Project Structure

```text
regional-product-sales-analysis/
│
├── README.md
├── regional_product_sales_setup.sql
├── sql_questions.sql
└── sql_solutions.sql
```

---

## 💡 Key Learning

A total sales number provides only part of the story.

Breaking sales down by **region and product** provides additional business context and helps identify where sales performance is actually coming from.

The same analytical question can be approached differently:

**SQL** → Queries and aggregation
**DAX** → Measures and filter context
**Python** → Data manipulation and transformation

---

## 🚀 Objective

This project demonstrates how a data analyst can take a business question and translate it into practical analysis using multiple analytics technologies.

**Same business question. Different tools. Same analytical thinking.**
