-- EDA data analysis
USE online_retail;

-- overall business result
SELECT CAST(ROUND(SUM(sales_amount),2) AS DECIMAL(15,2)) AS total_revenue,
       COUNT(DISTINCT invoice) AS total_orders,
       COUNT(DISTINCT customer_id) AS total_customers,
       COUNT(DISTINCT stock_code) AS total_products,
       ROUND(SUM(sales_amount) / COUNT(DISTINCT invoice),2) AS average_order_value
FROM retail_sales;

-- revenue trend by month
SELECT SUBSTR(invoice_date, 1, 7) AS year_month,
       ROUND(SUM(sales_amount), 2) AS monthly_revenue
FROM retail_sales
GROUP BY SUBSTR(invoice_date, 1, 7)
ORDER BY year_month;

-- order trend by month
SELECT SUBSTR(invoice_date, 1, 7) AS year_month,
       COUNT(DISTINCT invoice) AS total_orders
FROM retail_sales
GROUP BY SUBSTR(invoice_date, 1, 7)
ORDER BY year_month;

-- top 10 products by revenue
SELECT stock_code, description, ROUND(SUM(sales_amount), 2) AS total_revenue
FROM retail_sales
WHERE stock_code NOT IN ('POST', 'M')
GROUP BY stock_code, description
ORDER BY total_revenue DESC
LIMIT 10;

-- top 10 products by quantity sold
SELECT stock_code, description, SUM(quantity) AS total_quantity
FROM retail_sales
GROUP BY stock_code, description
ORDER BY total_quantity DESC
LIMIT 10;

-- top 10 customers who spend the most
-- EDA data analysis
USE online_retail;

-- overall business result
SELECT CAST(ROUND(SUM(sales_amount),2) AS DECIMAL(15,2)) AS total_revenue,
       COUNT(DISTINCT invoice) AS total_orders,
       COUNT(DISTINCT customer_id) AS total_customers,
       COUNT(DISTINCT stock_code) AS total_products,
       ROUND(SUM(sales_amount) / COUNT(DISTINCT invoice),2) AS average_order_value
FROM retail_sales;

-- revenue trend by month
SELECT SUBSTR(invoice_date, 1, 7) AS year_month,
       ROUND(SUM(sales_amount), 2) AS monthly_revenue
FROM retail_sales
GROUP BY SUBSTR(invoice_date, 1, 7)
ORDER BY year_month;

-- order trend by month
SELECT SUBSTR(invoice_date, 1, 7) AS year_month,
       COUNT(DISTINCT invoice) AS total_orders
FROM retail_sales
GROUP BY SUBSTR(invoice_date, 1, 7)
ORDER BY year_month;

-- top 10 products by revenue
SELECT stock_code, description, ROUND(SUM(sales_amount), 2) AS total_revenue
FROM retail_sales
WHERE stock_code NOT IN ('POST', 'M')
GROUP BY stock_code, description
ORDER BY total_revenue DESC
LIMIT 10;

-- top 10 products by quantity sold
SELECT stock_code, description, SUM(quantity) AS total_quantity
FROM retail_sales
GROUP BY stock_code, description
ORDER BY total_quantity DESC
LIMIT 10;

-- top 10 customers who spend the most
SELECT CAST(customer_id AS INT) AS customer_id, ROUND(SUM(sales_amount), 2) AS total_spending
FROM retail_sales
GROUP BY customer_id
ORDER BY total_spending DESC
LIMIT 10;

-- revenue by country
SELECT country, CAST(ROUND(SUM(sales_amount), 2) AS DECIMAL(15,2)) AS total_revenue
FROM retail_sales
GROUP BY country
ORDER BY total_revenue DESC
LIMIT 10;

-- revenue by country
SELECT country, CAST(ROUND(SUM(sales_amount), 2) AS DECIMAL(15,2)) AS total_revenue
FROM retail_sales
GROUP BY country
ORDER BY total_revenue DESC
LIMIT 10;

