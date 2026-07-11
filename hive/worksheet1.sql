-- Create database
CREATE DATABASE IF NOT EXISTS online_retail;
USE online_retail;

-- Create Hive table using cleaned Pig output
DROP TABLE IF EXISTS retail_sales;
CREATE EXTERNAL TABLE retail_sales (invoice STRING, stock_code STRING, description STRING, quantity INT,
                                    invoice_date STRING, price DOUBLE, customer_id STRING, 
									country STRING, sales_amount DOUBLE)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\t'
STORED AS TEXTFILE
LOCATION '/user/maria_dev/online_retail_cleaned';

-- Check table structure
DESCRIBE retail_sales;

-- View first 20 data
SELECT * FROM retail_sales 
LIMIT 20;

-- Validation check
SELECT 

-- Check count total records
  COUNT(*) AS total_records,

-- Check missing values (if still exists)
  SUM(CASE WHEN customer_id IS NULL OR customer_id = '' THEN 1 ELSE 0 END) AS missing_customer_id,
  SUM(CASE WHEN description IS NULL OR description = '' THEN 1 ELSE 0 END) AS missing_description,

-- Check cancelled invoices (if still exists)
  SUM(CASE WHEN invoice LIKE 'C%' THEN 1 ELSE 0 END) AS cancelled_invoices,

-- Check invalid quantity and price
  SUM(CASE WHEN quantity <= 0 THEN 1 ELSE 0 END) AS invalid_quantity,
  SUM(CASE WHEN price <= 0 THEN 1 ELSE 0 END) AS invalid_price
FROM retail_sales;