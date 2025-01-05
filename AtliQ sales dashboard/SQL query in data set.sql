-- to select all the records from the table.
select * from sales.customers;

-- how many zones exist in the market table.  
select distinct zone from sales.markets;

-- how many product_type exist in product table.
select distinct product_type from sales.products;

-- sum of all transactions are in table.
select count(*) from sales.transactions;
 
-- which type of currency exist in the transcation table.
select distinct currency from sales.transactions;

# currency
-- 'INR'  
# currency
-- 'INR\r'
-- its show's me 3 type of currecy. which are INR,USD,INR. when i used distinct keyword after that it shows 2 INR which means they both are differnt. 
-- after pasting both with copy row(with names). I see the problem . it is a data entry problem which i hadle it later.

-- it shows me all the transcations of market_code of Mark001
select * from sales.transactions where market_code='Mark001'; 

--  total sum of sales_amount of market Mark001 from transcation table.
select sum(transactions.sales_amount) from sales.transactions where market_code='Mark001';

-- it shows which products are sold in chennai(Mark001) .
select distinct product_code from sales.transactions where market_code='Mark001';  

-- transaction of USD
select * from sales.transactions where currency='USD';

-- i selected sales as a default schema
-- i am joinig two tables transaction and date .  using inner join on order_date and date . and to show of 2020.
SELECT transactions.*,date.* FROM transactions INNER JOIN date ON transactions.order_date = date.date where date.year= '2020';

ALTER TABLE sales_insight CHANGE COLUMN profit_margin profit DECIMAL(10,2);
