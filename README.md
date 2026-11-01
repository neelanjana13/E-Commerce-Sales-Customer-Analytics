# E-Commerce Sales & Customer Analytics

An end-to-end data analytics project using **SQL Server, Python, and Power BI** to analyze e-commerce sales performance and customer behavior.

## 📌 Project Overview

This project analyzes retail transaction data to understand sales performance, customer purchasing behavior, customer segmentation, and churn.

The project follows an end-to-end analytics workflow:

**SQL → Python → Power BI**

## 🛠️ Tools & Technologies

- **SQL Server** — Data consolidation, cleaning, deduplication, and analysis
- **Python** — RFM analysis and customer segmentation
- **Pandas** — Data manipulation and transformation
- **Power BI** — Interactive dashboard and business insights
- **Excel** — Processed data for dashboard analysis

## 🔄 Project Workflow

```text
Raw Transaction Data
        ↓
SQL Server
        ↓
Data Cleaning & Deduplication
        ↓
Clean Transaction Dataset
        ↓
Python / Pandas
        ↓
RFM Analysis
        ↓
Customer Segmentation & Churn
        ↓
Power BI
        ↓
Interactive Dashboard
```

## 📊 Dataset

The dataset contains retail transaction information including:

- Invoice
- Stock Code
- Description
- Quantity
- Invoice Date
- Price
- Customer ID
- Country

The raw dataset is not included in this repository due to its size.

## 🧹 SQL Data Preparation

SQL Server was used to:

- Combine transaction data from multiple yearly tables
- Convert and standardize data types
- Clean transaction records
- Remove duplicate records
- Prepare the cleaned dataset for Python analysis

## 🐍 Python — RFM Analysis

Python and Pandas were used to perform **RFM (Recency, Frequency, Monetary) analysis**.

### RFM Metrics

| Metric | Description |
|---|---|
| **Recency** | How recently a customer made a purchase |
| **Frequency** | How often a customer makes purchases |
| **Monetary** | How much revenue a customer generates |

Customers were scored based on their RFM values and classified into six segments:

- 🏆 Champions
- 💜 Loyal
- ⚠️ At Risk
- 🔴 Lost
- 🆕 New
- 👀 Needs Attention

Customers with a **recency greater than 90 days** were classified as churned.

## 📈 Power BI Dashboard

The Power BI dashboard provides an interactive view of sales and customer performance.

### Key KPIs

- Total Customers
- Total Revenue
- Total Orders
- Churned %
- Average Customer Value

### Dashboard Analysis

- Revenue by Customer Segment
- Customer Count by Segment
- Revenue & Churn Trends
- Average Customer Value by Segment
- RFM Segment Performance

### Filters

The dashboard can be filtered by:

- Month
- Quarter
- Year
- Country
- Customer Segment
- Churn Status

## 🖥️ Dashboard Preview

![E-Commerce Sales & Customer Analytics Dashboard](Dashboard/Ecommerce_Dashboard.png)


## 🎯 Key Results

- **779K+** transaction records analyzed
- **5,881** customers analyzed
- **36K+** unique orders
- **$17.4M+** total revenue
- **6** customer segments identified using RFM analysis
- Customer churn analyzed using a **90-day recency threshold**

## 💡 Skills Demonstrated

**SQL:**  
Data cleaning, data consolidation, deduplication, filtering, aggregation, and analysis

**Python:**  
Pandas, data transformation, RFM analysis, scoring, and customer segmentation

**Power BI:**  
Data modeling, DAX measures, KPI cards, slicers, trend analysis, and dashboard design
