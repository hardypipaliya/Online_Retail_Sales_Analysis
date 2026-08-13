-- ============================================================
-- ECOMMERCE SALES ANALYSIS
-- ============================================================


-- ============================================================
-- 1. CREATE DATABASE
-- ============================================================

CREATE DATABASE IF NOT EXISTS ecommerce_sales;

USE ecommerce_sales;


-- ============================================================
-- 2. CREATE TABLE
-- ============================================================

DROP TABLE IF EXISTS online_retail;

CREATE TABLE online_retail (
    InvoiceNo VARCHAR(20),
    StockCode VARCHAR(20),
    Description VARCHAR(255),
    Quantity INT,
    InvoiceDate DATETIME,
    UnitPrice DECIMAL(10,2),
    CustomerID INT NULL,
    Country VARCHAR(100),
    Revenue DECIMAL(12,2)
);


-- ============================================================
-- 3. IMPORT CLEANED CSV
-- ============================================================

LOAD DATA INFILE
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/cleaned_online_retail.csv'

INTO TABLE online_retail

FIELDS TERMINATED BY ','
ENCLOSED BY '"'

LINES TERMINATED BY '\n'

IGNORE 1 ROWS

(
    InvoiceNo,
    StockCode,
    Description,
    Quantity,
    InvoiceDate,
    UnitPrice,
    @CustomerID,
    Country,
    Revenue
)

SET CustomerID = NULLIF(@CustomerID, '');


-- ============================================================
-- 4. VERIFY DATA
-- ============================================================

SELECT COUNT(*) AS total_rows
FROM online_retail;


SELECT *
FROM online_retail
LIMIT 5;


SELECT
    COUNT(*) AS total_rows,
    SUM(CustomerID IS NULL) AS missing_customer_ids
FROM online_retail;


-- ============================================================
-- 5. OVERALL KPIs
-- ============================================================

SELECT 
    COUNT(*) AS total_transactions,
    SUM(Quantity) AS total_units_sold,
    ROUND(SUM(Revenue), 2) AS total_revenue,
    COUNT(DISTINCT InvoiceNo) AS total_orders,
    COUNT(DISTINCT CustomerID) AS total_customers
FROM online_retail;


-- ============================================================
-- 6. MONTHLY SALES
-- ============================================================

SELECT
    DATE_FORMAT(InvoiceDate, '%Y-%m') AS sales_month,
    COUNT(DISTINCT InvoiceNo) AS total_orders,
    SUM(Quantity) AS units_sold,
    ROUND(SUM(Revenue), 2) AS revenue
FROM online_retail
GROUP BY DATE_FORMAT(InvoiceDate, '%Y-%m')
ORDER BY sales_month;


-- ============================================================
-- 7. TOP 10 PRODUCTS BY REVENUE
-- ============================================================

SELECT
    StockCode,
    Description,
    SUM(Quantity) AS units_sold,
    ROUND(SUM(Revenue), 2) AS total_revenue
FROM online_retail
GROUP BY StockCode, Description
ORDER BY total_revenue DESC
LIMIT 10;


-- ============================================================
-- 8. TOP 10 COUNTRIES BY REVENUE
-- ============================================================

SELECT
    Country,
    COUNT(DISTINCT InvoiceNo) AS total_orders,
    SUM(Quantity) AS units_sold,
    ROUND(SUM(Revenue), 2) AS total_revenue
FROM online_retail
GROUP BY Country
ORDER BY total_revenue DESC
LIMIT 10;


-- ============================================================
-- 9. TOP 10 CUSTOMERS BY REVENUE
-- ============================================================

SELECT
    CustomerID,
    COUNT(DISTINCT InvoiceNo) AS total_orders,
    SUM(Quantity) AS units_purchased,
    ROUND(SUM(Revenue), 2) AS total_revenue
FROM online_retail
WHERE CustomerID IS NOT NULL
GROUP BY CustomerID
ORDER BY total_revenue DESC
LIMIT 10;


-- ============================================================
-- 10. AVERAGE ORDER VALUE
-- ============================================================

SELECT
    ROUND(SUM(Revenue), 2) AS total_revenue,
    COUNT(DISTINCT InvoiceNo) AS total_orders,
    ROUND(
        SUM(Revenue) / COUNT(DISTINCT InvoiceNo),
        2
    ) AS average_order_value
FROM online_retail;


-- ============================================================
-- 11. MONTHLY SALES PERFORMANCE
-- ============================================================

SELECT
    DATE_FORMAT(InvoiceDate, '%Y-%m') AS sales_month,
    COUNT(DISTINCT InvoiceNo) AS total_orders,
    ROUND(SUM(Revenue), 2) AS total_revenue,
    ROUND(
        SUM(Revenue) / COUNT(DISTINCT InvoiceNo),
        2
    ) AS average_order_value
FROM online_retail
GROUP BY DATE_FORMAT(InvoiceDate, '%Y-%m')
ORDER BY sales_month;