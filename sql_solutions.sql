USE RegionalSalesDB;

-- Q1. Total Sales by Region
SELECT
    Region,
    SUM(Sales) AS Total_Sales
FROM RegionalProductSales
GROUP BY Region
ORDER BY Total_Sales DESC;


-- Q2. Total Sales by Product
SELECT
    Product,
    SUM(Sales) AS Total_Sales
FROM RegionalProductSales
GROUP BY Product
ORDER BY Total_Sales DESC;


-- Q3. Product Sales Within Each Region
SELECT
    Region,
    Product,
    SUM(Sales) AS Total_Sales
FROM RegionalProductSales
GROUP BY Region, Product
ORDER BY Region, Total_Sales DESC;


-- Q4. Top-Selling Product in Each Region
WITH ProductSales AS (
    SELECT
        Region,
        Product,
        SUM(Sales) AS Total_Sales
    FROM RegionalProductSales
    GROUP BY Region, Product
),
RankedProducts AS (
    SELECT
        Region,
        Product,
        Total_Sales,
        DENSE_RANK() OVER (
            PARTITION BY Region
            ORDER BY Total_Sales DESC
        ) AS Sales_Rank
    FROM ProductSales
)
SELECT
    Region,
    Product,
    Total_Sales
FROM RankedProducts
WHERE Sales_Rank = 1
ORDER BY Region;


-- Q5. Product Contribution Within Each Region
WITH ProductSales AS (
    SELECT
        Region,
        Product,
        SUM(Sales) AS Total_Sales
    FROM RegionalProductSales
    GROUP BY Region, Product
)
SELECT
    Region,
    Product,
    Total_Sales,
    ROUND(
        Total_Sales * 100.0 /
        SUM(Total_Sales) OVER (PARTITION BY Region),
        2
    ) AS Regional_Sales_Percentage
FROM ProductSales
ORDER BY Region, Total_Sales DESC;
