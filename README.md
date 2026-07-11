# Online Retail Business Intelligence using Apache Pig, Apache Hive & R Markdown
<p align="center">
  <img width="1584" height="396" alt="Image" src="https://github.com/user-attachments/assets/82220dfd-0cb2-4c19-8d0d-2fb1976a4dcf" />
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

*<img width="1401" height="875" alt="Image" src="https://github.com/user-attachments/assets/229982cb-693b-4423-a407-3788b42a1f19" />*

### Cleaned Output

*<img width="1249" height="718" alt="Image" src="https://github.com/user-attachments/assets/9c0d3371-515e-445f-8cc6-2ec0a731c584" />*

---

# Data Visualizations

The cleaned dataset was imported into Apache Hive for analytical querying. Query results were exported as CSV files and visualised using an interactive R Markdown dashboard.

### Hive Script

*<img width="1297" height="888" alt="Image" src="https://github.com/user-attachments/assets/643e8063-a18a-43f9-9957-af3d54d27ddb" />*

### Cleaned Output

*<img width="1339" height="361" alt="Image" src="https://github.com/user-attachments/assets/d9115b49-3b83-46ed-9f46-0e39c5fe3bc9" />*

---

## Dashboard Overview

*<img width="1920" height="878" alt="Image" src="https://github.com/user-attachments/assets/6dde1881-b0e2-4d31-90f6-3c8aa96c094a" />*

---

## Business KPIs

*<img width="1920" height="264" alt="Image" src="https://github.com/user-attachments/assets/b917c93c-eadf-4670-a540-297341811ad8" />*

### Findings

The business generated approximately **£17.37 million** in total revenue from **36,969 completed orders**, involving **5,878 customers** and **4,631 products**. The average order value was **£469.98**, indicating that each completed transaction contributed nearly £470 in revenue on average.

---

## Monthly Revenue Trend

*<img width="603" height="474" alt="Image" src="https://github.com/user-attachments/assets/12a16540-4c68-4af9-886f-17ac5b103ba1" />*

### Findings

Monthly revenue fluctuated throughout the two year period but showed a clear upward trend during the final quarter of each year. Revenue peaked in **November 2010 (£1.17 million)** and **November 2011 (£1.16 million)** before declining in December. The lower revenue in December is likely because the dataset only contains transactions up to early December.

---

## Monthly Order Trend

*<img width="603" height="474" alt="Image" src="https://github.com/user-attachments/assets/2c05b05e-7d1d-4a38-98e3-c8f0b65e4745" />*

### Findings

The number of completed orders followed a similar pattern to monthly revenue. Order volume gradually increased towards the end of each year and reached its highest level in **November 2011 (2,657 orders)**. This suggests that the increase in revenue was primarily driven by higher customer demand rather than isolated high value purchases.

---

## Top Products by Revenue

*<img width="603" height="474" alt="Image" src="https://github.com/user-attachments/assets/89924349-72d5-46aa-a30c-6702751330b9" />*

### Findings

The **REGENCY CAKESTAND 3 TIER** generated the highest total revenue, followed by **WHITE HANGING HEART T-LIGHT HOLDER** and **PAPER CRAFT, LITTLE BIRDIE**. These products contributed substantially to overall sales revenue, indicating that they are among the retailer's most valuable products.

---

## Top Products by Quantity Sold

*<img width="603" height="474" alt="Image" src="https://github.com/user-attachments/assets/fc4587c3-6f96-4031-9210-ebb428b22e37" />*

### Findings

The **WORLD WAR 2 GLIDERS ASSTD DESIGNS** recorded the highest sales quantity, followed by **WHITE HANGING HEART T-LIGHT HOLDER** and **PAPER CRAFT, LITTLE BIRDIE**. Comparing this result with the revenue analysis shows that products selling the largest quantities are not always the highest revenue generators, highlighting the influence of product pricing.

---

## Top Customers by Spending

*<img width="603" height="474" alt="Image" src="https://github.com/user-attachments/assets/488db80c-3961-4e56-b296-91b6fa45d401" />*

### Findings

Customer **18102** recorded the highest total spending of **approximately £580,987**, followed by customers **14646 (£528,603)** and **14156 (£313,438)**. The substantial gap between these customers and the remaining customer base indicates that a relatively small group of customers contributed a significant proportion of the company's revenue.

---

## Revenue by Country

*<img width="603" height="474" alt="Image" src="https://github.com/user-attachments/assets/916f4e3b-074c-44c5-96af-cafd836f07fa" />*

### Findings

The **United Kingdom** generated the largest share of total revenue, contributing **approximately £14.39 million**, which was substantially higher than any other country. Among other international markets, **EIRE**, **the Netherlands**, **Germany** and **France** were the strongest contributors, while the remaining countries generated comparatively lower revenue.

---

# Insights and Explanations

The dashboard provides several important business insights:

### 1. Strong Seasonal Sales Pattern

Both monthly revenue and monthly order volume increased significantly during October and November, indicating that customer demand is highly seasonal and influenced by year-end shopping.

### 2. Product Price Influences Revenue

Comparing the revenue and quantity analyses shows that products with the highest sales quantity were not always the highest revenue generating products. This suggests that both product price and sales volume contribute to overall revenue.

### 3. High-Value Customers Drive Revenue

The customer spending analysis revealed that a relatively small number of customers accounted for a large proportion of total sales. Retaining these high-value customers is important for sustaining business performance.

### 4. Strong Domestic Market with International Potential

Although the United Kingdom remains the retailer's primary market, countries such as EIRE, the Netherlands, Germany, and France also generated substantial revenue. These markets present opportunities for future international expansion.

---

# Recommendations

Based on the findings, the following recommendations are proposed:

- Increase inventory before the October–November peak sales period.
- Prioritise inventory management for high-performing products.
- Introduce loyalty programmes and personalised promotions for high-value customers.
- Expand marketing activities in promising international markets such as EIRE, Germany and France.

---

# Conclusion

The analysis identified clear seasonal sales patterns, high-performing products, valuable customers and the retailer's strongest geographic markets. These findings show that business performance is influenced by customer purchasing behaviour, product pricing and seasonal demand rather than sales volume alone.

All in all, this project highlights how Business Intelligence techniques can convert large volumes of transactional data into actionable insights. By leveraging these insights, businesses can improve inventory planning, strengthen customer retention strategies, optimise product management and make more informed decisions to enhance long-term performance.

---

# Reproducibility

## Development Environment

This project was developed and tested using the following environment:

| Component | Version |
|------------|------------|
| Apache Pig | 0.16.0.2.6.5.0-292 |
| Apache Hive | 1.2.1000.2.6.5.0-292 |
| Hadoop (HDFS) | 2.7.3.2.6.5.0-292 (HDP Sandbox 2.6.5) |
| Python | 3.13.9 |
| R | 4.5.1 |
| R Markdown | 2.31 |

---

## Python Libraries

The following Python libraries were used for data exploration and dataset conversion:

```python
import pandas as pd
```

---

## R Packages

The following R packages were used to develop the interactive dashboard:

```r
library(rmarkdown)
library(flexdashboard)
library(ggplot2)
library(plotly)
library(dplyr)
library(readr)
library(scales)
library(shiny)
```
---

## Running the Project

1. Download the **Online Retail II** dataset (XLSX format) from the UCI Machine Learning Repository:

   [UCI Machine Learning Repository](https://archive.ics.uci.edu/dataset/502/online+retail+ii)↗️

2. Execute the Python notebook (`data_preparation.ipynb`) to:
   - Perform a simple exploratory data analysis (EDA).
   - Convert the dataset from **XLSX** to **TSV** format (`online_retail_ii.tsv`).

3. Start the **HDP Sandbox**.
4. Upload the generated `online_retail_ii.tsv` file into HDFS.
5. Execute the Apache Pig script (`online_retail_data_cleaning.pig`) to clean and preprocess the dataset.
6. Execute **Hive Worksheet 1** (`worksheet1.sql`) to create the database, create the table and load the cleaned dataset into Apache Hive.
7. Execute **Hive Worksheet 2** (`worksheet2.sql`) to perform business analysis and generate the analytical results.
8. Export the Hive query results as CSV files.
9. Place the exported CSV files in the `Dashboard` folder.
10. Open `Dashboard.Rmd` in RStudio.
11. Knit the R Markdown file to generate the interactive dashboard.

---

> [!NOTE]
> 1. All outputs presented in this repository were generated directly from the Apache Pig scripts, Apache Hive SQL queries and the R Markdown dashboard.
> 2. Apache Pig was selected for efficient large-scale data cleaning and preprocessing.
> 3. Apache Hive enabled SQL-based analytical queries on the cleaned dataset.
> 4. R Markdown, Flexdashboard and Plotly were used to develop an interactive dashboard for communicating business insights.

---

## Repository Structure

```text
STQD6324_Data_Management_Final_Report/
│
├── python/
│   └── data_preparation.ipynb
│
├── pig/
│   └── online_retail_data_cleaning.pig
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
│   ├── Title.png
│   ├── Pig_Script.png
│   ├── Pig_Output.png
│   ├── Hive_Script.png
│   ├── Hive_Output.png
│   ├── Dashboard.png
│   ├── KPI.png
│   ├── Monthly_Revenue_Trend.png
│   ├── Monthly_Order_Trend.png
│   ├── Top_Products_by_Revenue.png
│   ├── Top_Products_by_Quantity_Sold.png
│   ├── Top_Customers_by_Spending.png
│   └──Top_Countries_by_Revenue.png
│
└── README.md
```

---

## Author

**Name:** Wan Ainin Sofiya binti Wan Mustafa

**Matric No:** P160638
