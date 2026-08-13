# Online Retail Sales Analysis

## Project Overview

This project analyzes an online retail sales dataset to identify sales trends, top-performing products, customer behavior, and country-level performance.

The project uses Python for data cleaning, MySQL for data storage and analysis, and Power BI for interactive visualization.

## Objectives

- Clean and prepare the retail sales dataset
- Analyze overall sales performance
- Identify monthly sales trends
- Find top-performing products
- Analyze sales by country
- Identify high-value customers
- Calculate average order value
- Build an interactive Power BI dashboard

## Tools & Technologies

- Python
- Pandas
- MySQL
- SQL
- Power BI
- Microsoft Excel
- GitHub

## Project Workflow

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

## Dataset

The dataset contains online retail transactions including:

- Invoice number
- Stock code
- Product description
- Quantity
- Invoice date
- Unit price
- Customer ID
- Country

A Revenue column was created using:

Revenue = Quantity × UnitPrice

## Data Cleaning

The Python script performs the following cleaning steps:

- Removes duplicate rows
- Removes rows with missing product descriptions
- Removes invalid quantities
- Removes invalid unit prices
- Creates the Revenue column
- Saves the cleaned dataset as a CSV file

After cleaning:

- Original rows: 541,909
- Cleaned rows: 524,878
- Columns: 9

## SQL Analysis

The SQL analysis includes:

- Overall sales KPIs
- Total transactions
- Total units sold
- Total revenue
- Total orders
- Total customers
- Monthly sales performance
- Top 10 products by revenue
- Top 10 countries by revenue
- Top 10 customers by revenue
- Average order value

## Power BI Dashboard

The Power BI dashboard provides interactive visualizations for:

- Revenue
- Orders
- Customers
- Monthly sales trends
- Product performance
- Country performance
- Customer performance

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