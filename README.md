# Online Retail Sales Analysis

An end-to-end retail sales analytics project using **Python, SQL/MySQL, and Power BI** to transform raw transaction data into meaningful business insights.

## Project Overview

This project analyzes an online retail sales dataset to identify:

* Sales trends
* Top-performing products
* Customer behavior
* Country-level performance
* Revenue performance
* Order and customer metrics

The project follows an end-to-end analytics workflow from **raw data cleaning to SQL analysis and Power BI visualization**.

## Business Questions

This project aims to answer key business questions such as:

* How does revenue change over time?
* Which products generate the most revenue?
* Which countries contribute the most to sales?
* Who are the highest-value customers?
* What is the average order value?
* How many orders, customers, and units are involved?
* What sales patterns can help support business decisions?

## Objectives

* Clean and prepare the retail sales dataset
* Analyze overall sales performance
* Identify monthly sales trends
* Find top-performing products
* Analyze sales by country
* Identify high-value customers
* Calculate average order value
* Perform SQL-based business analysis
* Build an interactive Power BI dashboard
* Present the findings in a clear and business-focused format

## Tools & Technologies

* **Python**
* **Pandas**
* **MySQL**
* **SQL**
* **Power BI**
* **Microsoft Excel**
* **Git**
* **GitHub**

## Project Workflow

```text
Raw Dataset
    ↓
Python Data Cleaning
    ↓
Cleaned CSV
    ↓
MySQL Database
    ↓
SQL Analysis
    ↓
Power BI Dashboard
    ↓
Business Insights
```

## Dataset

The dataset contains online retail transactions including:

* Invoice Number
* Stock Code
* Product Description
* Quantity
* Invoice Date
* Unit Price
* Customer ID
* Country

A **Revenue** column was created using:

```text
Revenue = Quantity × UnitPrice
```

## Data Cleaning

The Python script performs the following cleaning steps:

* Removes duplicate rows
* Removes rows with missing product descriptions
* Removes invalid quantities
* Removes invalid unit prices
* Creates the Revenue column
* Saves the cleaned dataset as a CSV file

### Dataset Statistics

* **Original rows:** 541,909
* **Cleaned rows:** 524,878
* **Columns after cleaning:** 9

## Python Analysis

Python and Pandas are used for data cleaning and preprocessing.

The Python workflow includes:

1. Loading the raw Excel dataset
2. Inspecting the dataset structure
3. Identifying missing values and duplicates
4. Removing invalid records
5. Creating the Revenue metric
6. Exporting the cleaned dataset to CSV

Python script:

```text
PYTHON/analysis.py
```

## SQL Analysis

MySQL and SQL are used to perform business-focused analysis on the cleaned dataset.

The SQL analysis includes:

* Overall sales KPIs
* Total transactions
* Total units sold
* Total revenue
* Total orders
* Total customers
* Monthly sales performance
* Top 10 products by revenue
* Top 10 countries by revenue
* Top 10 customers by revenue
* Average order value

SQL script:

```text
SQL/analysis.sql
```

## Power BI Dashboard

The Power BI dashboard provides interactive visualizations for:

* Revenue
* Orders
* Customers
* Monthly sales trends
* Product performance
* Country performance
* Customer performance
* Key sales KPIs

Power BI file:

```text
POWER_BI/Online Retail Sales Dashboard.pbix
```

## Key Insights

The analysis focuses on identifying:

* Overall revenue and sales performance
* Monthly and seasonal sales patterns
* Products generating the highest revenue
* Countries contributing the most revenue
* Highest-value customers
* Average order value
* Customer purchasing behavior

> Detailed numerical business insights can be added after validating the final SQL and Power BI results.

## Project Structure

```text
Online_Retail_Sales_Analysis
│
├── README.md
│
├── DATASET
│   ├── Online Retail.xlsx
│   └── cleaned_online_retail.csv
│
├── PYTHON
│   └── analysis.py
│
├── SQL
│   └── analysis.sql
│
└── POWER_BI
    └── Online Retail Sales Dashboard.pbix
```

## How to Use This Project

### 1. Clone the Repository

```bash
git clone https://github.com/hardypipaliya/Online_Retail_Sales_Analysis.git
```

### 2. Run the Python Analysis

Navigate to the `PYTHON` folder and run:

```bash
python analysis.py
```

This processes the raw dataset and generates the cleaned CSV file.

### 3. Perform SQL Analysis

Import the cleaned CSV dataset into MySQL and run the queries in:

```text
SQL/analysis.sql
```

### 4. Open the Power BI Dashboard

Open the Power BI file:

```text
POWER_BI/Online Retail Sales Dashboard.pbix
```

Refresh the data connections if required.

## Skills Demonstrated

This project demonstrates practical experience with:

* Data Cleaning
* Data Preprocessing
* Exploratory Data Analysis
* Python
* Pandas
* SQL
* MySQL
* Business Analysis
* KPI Development
* Data Visualization
* Power BI
* Dashboard Development
* Git
* GitHub
* End-to-End Data Analytics

## Future Improvements

Potential future improvements include:

* Customer segmentation
* RFM analysis
* Product category analysis
* Advanced time-series analysis
* Additional Power BI dashboard pages
* Automated data pipelines
* More detailed business recommendations

## Author

**Hardik Pipaliya**

GitHub: [@hardypipaliya](https://github.com/hardypipaliya)

---

⭐ If you find this project useful, feel free to explore the repository and the analysis files.
