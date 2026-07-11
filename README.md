# Online Retail Business Intelligence using Apache Pig, Apache Hive & R Markdown
<p align="center">
  <img width="1600" alt="Dashboard Preview" src="YOUR_DASHBOARD_SCREENSHOT_HERE" />
</p>

<p align="center">
  <a href="#overview">Overview</a> •
  <a href="#dataset">Dataset</a> •
  <a href="#data-cleaning">Data Cleaning</a> •
  <a href="#data-visualizations">Data Visualizations</a> •
  <a href="#insights-and-explanations">Insights</a> •
  <a href="#recommendations">Recommendations</a> •
  <a href="#conclusion">Conclusion</a> •
  <a href="#reproducibility">Reproducibility</a> •
  <a href="#author">Author</a>
</p>

> The objective of this project is to analyse the Online Retail II dataset and transform raw transactional data into meaningful business insights using Apache Pig, Apache Hive and R Markdown.

The Online Retail II dataset was selected because it represents real-world e-commerce transactions from a UK-based online retail company. It contains over one million transaction records, making it suitable for demonstrating large-scale data cleaning, data warehousing and business analytics. The dataset also supports the analysis of customer purchasing behaviour, product performance, sales trends and geographic markets.

---

# Overview

The objective of this project is to analyse the **Online Retail II** dataset and transform raw transaction records into meaningful business insights using a Business Intelligence workflow.

The project demonstrates:

```mermaid
flowchart LR

A[Online Retail II Dataset]
--> B[Python]

B --> C[Apache Pig]

C --> D[Apache Hive]

D --> E[Business Analytics]

E --> F[Export Query Results]

F --> G[R Markdown Dashboard]
```

### Project Structure

```yaml
online-retail-business-intelligence
│
├── 1. Python
│   ├── Dataset exploration
│   ├── Simple EDA before data cleaning
│   └── Convert xlsx to TSV
│
├── 2. Apache Pig
│   ├── Load dataset
│   ├── Remove missing values
│   ├── Remove duplicate records
│   ├── Remove invalid quantity
│   ├── Remove invalid price
│   └── Create sales_amount
│
├── 3. Apache Hive
│   ├── Create database
│   ├── Create table
│   ├── Load cleaned data
│   ├── Data validation
│   └── Business analysis
│
└── 4. R Markdown Dashboard
    ├── Business KPIs
    ├── Revenue trend
    ├── Top products by revenue
    ├── Monthly trend
    ├── Top products by quantity sold
    ├── Top customers by spending
    └── top countries by revenue
```

---

# Dataset
### Online Retail II Dataset 
### Source: [UCI Machine Learning Repository](https://archive.ics.uci.edu/dataset/502/online+retail+ii)↗️

The Online Retail II dataset contains transactional records from a UK-based online retail company between 1 December 2009 and 9 December 2011. The company primarily sells unique all-occasion gifts and many customers are wholesalers.

The dataset contains 1,067,371 transaction records and 8 variables with detailed information about products, customers and transactions. It enables the analysis of:

- Sales performance over time
- Customer purchasing behaviour
- Product performance
- Geographic distribution of sales
- Business key performance indicators (KPIs)

### Variables Used

| Variable | Description |
|-----------|-------------|
| Invoice | Invoice number for each transaction |
| StockCode | Unique product identifier |
| Description | Product name or description |
| Quantity | Number of units purchased |
| InvoiceDate | Date and time of transaction |
| Price | Unit price of each product |
| Customer ID | Unique customer identifier |
| Country | Customer country |

### Dataset Summary

| Item | Value |
|-----------|-------------|
| Source | UCI Machine Learning Repository |
| Time Period | December 2009 – December 2011 |
| Total Records | 1,067,371 |
| Variables | 8 |
| Industry | E-commerce / Online Retail |

---

# Data Cleaning

The dataset was initially explored using Python before being converted from XLSX to TSV format to facilitate the data cleaning process in Apache Pig. 
Apache Pig was then used to clean and preprocess the data, as well as creating a new sales_amount variable. 
The cleaning process reduced the dataset from 1,067,371 records to 779,425 records for subsequent analysis in Apache Hive.

### Cleaning Tasks

- Removed records with missing values
- Removed duplicate records
- Removed transactions with invalid quantity (≤ 0)
- Removed transactions with invalid price (≤ 0)
- Created a new variable named **sales_amount** (`Quantity × Price`)

### Pig Script

*(Insert Pig script screenshot)*

### Cleaned Output

*<img width="1249" height="718" alt="Image" src="https://github.com/user-attachments/assets/9c0d3371-515e-445f-8cc6-2ec0a731c584" />*

---

# Data Visualizations

The cleaned dataset was imported into Apache Hive for analytical querying. Query results were exported as CSV files and visualised using an interactive R Markdown dashboard.

### Hive Script

*(Insert hive script screenshot)*

### Cleaned Output

*(Insert Hive output screenshot)*

---

## Dashboard Overview

*(Insert dashboard overview screenshot)*

---

## Business KPIs

*(Insert KPI screenshot)*

### Findings

The business generated approximately **£17.37 million** in revenue from **36,969 completed orders**, involving **5,878 customers** and **4,631 products**. The average order value was approximately **£470**.

---

## Monthly Revenue Trend

*(Insert screenshot)*

### Findings

Revenue increased during the final quarter of both years and peaked in **November**, suggesting strong seasonal demand before the holiday shopping period.

---

## Product Performance

*(Insert screenshot)*

### Findings

Products with the highest revenue were not always those with the largest sales quantity, indicating that pricing played an important role in revenue generation.

---

## Customer Analysis

*(Insert screenshot)*

### Findings

A relatively small number of customers contributed a substantial proportion of total revenue, highlighting the importance of customer retention strategies.

---

## Geographic Analysis

*(Insert screenshot)*

### Findings

The United Kingdom contributed the majority of total sales revenue, while countries such as EIRE, Germany and France also represented important international markets.

---

# Insights and Explanations

The dashboard provides several important business insights:

### 1. Strong Seasonal Sales Pattern

Revenue and order volume increased significantly during October and November, indicating higher customer demand before the holiday season.

### 2. Product Popularity Does Not Always Mean Higher Revenue

Products with the highest quantity sold were not necessarily the products generating the highest revenue because product prices varied considerably.

### 3. Customer Spending Is Highly Concentrated

A relatively small number of customers generated a significant proportion of total sales revenue, suggesting that retaining high-value customers should be a business priority.

### 4. Heavy Dependence on the United Kingdom

Most revenue originated from customers in the United Kingdom. Although several European countries also contributed meaningful revenue, there remains an opportunity to expand international markets.

---

# Recommendations

Based on the findings, the following recommendations are proposed:

- Increase inventory before the October–November peak sales period.
- Prioritise inventory management for high-performing products.
- Introduce loyalty programmes and personalised promotions for high-value customers.
- Expand marketing activities in promising international markets such as EIRE, Germany and France.
- Separate postage and manual adjustment transactions from product sales to improve future reporting accuracy.

---

# Conclusion

This project demonstrated a complete Business Intelligence workflow using Python, Apache Pig, Apache Hive and R Markdown. Raw transaction data were cleaned, analysed and transformed into an interactive dashboard that provides meaningful insights into sales performance, customer purchasing behaviour, product performance and geographic markets. The findings support data-driven decision-making and provide practical recommendations that can help improve business performance.

---

# Reproducibility

## Development Environment

| Component | Version |
|------------|------------|
| Apache Pig | 0.16.0 |
| Apache Hive | 2.x |
| Hadoop (HDFS) | HDP Sandbox |
| Python | 3.x |
| R | 4.x |
| R Markdown | Latest |

---

## Running the Project

1. Start the HDP Sandbox.
2. Upload the TSV dataset into HDFS.
3. Execute the Apache Pig script to clean the data.
4. Execute Hive Worksheet 1 to create the database and load the cleaned dataset.
5. Execute Hive Worksheet 2 to perform business analysis.
6. Export the Hive query results as CSV files.
7. Place the exported CSV files in the dashboard folder.
8. Open `Dashboard.Rmd` in RStudio.
9. Knit the R Markdown file to generate the interactive dashboard.

---

> [!NOTE]
> 1. All outputs presented in this repository were generated directly from the Apache Pig scripts, Apache Hive SQL queries and the R Markdown dashboard.
> 2. Apache Pig was selected for efficient large-scale data cleaning and preprocessing.
> 3. Apache Hive enabled SQL-based analytical queries on the cleaned dataset.
> 4. R Markdown, Flexdashboard and Plotly were used to develop an interactive dashboard for communicating business insights.

---

## Repository Structure

```text
online-retail-business-intelligence/
│
├── data/
│   ├── Online_Retail_II.csv
│   └── online_retail_ii.tsv
│
├── python/
│   └── data_preparation.ipynb
│
├── pig/
│   └── clean_online_retail.pig
│
├── hive/
│   ├── worksheet1.sql
│   └── worksheet2.sql
│
├── dashboard/
│   ├── Dashboard.Rmd
│   └── Dashboard.html
│
├── images/
│
└── README.md
```

---

## Author

**Name:** Wan Ainin Sofiya binti Wan Mustafa

**Matric No:** P160638
