-- Load dataset
raw_data = LOAD '/user/maria_dev/online_retail_ii.tsv' USING PigStorage('\t')
AS (invoice:chararray, stock_code:chararray, description:chararray, quantity:int, invoice_date:chararray,
    price:double, customer_id:chararray, country:chararray);

-- Row counts before cleaning
raw_group = GROUP raw_data ALL;
raw_count = FOREACH raw_group GENERATE COUNT(raw_data);
DUMP raw_count;

-- Remove cancelled item
data1 = FILTER raw_data BY NOT (invoice MATCHES '^C.*');

-- Remove records with missing customer id
data2 = FILTER data1 BY customer_id IS NOT NULL AND customer_id != '';

-- Remove invalid quantity and price
data3 = FILTER data2 BY quantity > 0;
data4 = FILTER data3 BY price > 0;

-- Remove duplicate records
clean_data = DISTINCT data4;

-- Create sales amount
final_data = FOREACH clean_data GENERATE invoice, stock_code, 
                                         REPLACE(description,'"','') AS description,
                                         quantity, invoice_date, price, customer_id, country,
                                         ROUND_TO(quantity * price, 2) AS sales_amount;
                                         
-- Row counts after cleaning
clean_group = GROUP final_data ALL;
clean_count = FOREACH clean_group GENERATE COUNT(final_data);
DUMP clean_count;

-- View first 20 records
sample_data = LIMIT final_data 20;
DUMP sample_data;

-- Save cleaned data
STORE final_data INTO '/user/maria_dev/online_retail_cleaned' USING PigStorage('\t');