-- Version Verbose PostgreSQL 

SELECT 
    CAST(st_customers.month as integer) as month 
	, st_customers.num_customers
    , st_transactions.num_orders
    , st_amounts.order_amt 
FROM (
    SELECT 
        count( DISTINCT user_id) as num_customers 
        ,EXTRACT(MONTH FROM created_at) as month 
    FROM transactions
    WHERe EXTRACT(YEAR from created_at) = 2020
    GROUP BY EXTRACT(MONTH FROM created_at)
) st_customers

LEFT JOIN (
    SELECT 
        count(id) as num_orders 
        ,EXTRACT(MONTH FROM created_at) as month 
    FROM transactions
    WHERe EXTRACT(YEAR from created_at) = 2020
    GROUP BY EXTRACT(MONTH FROM created_at)
) st_transactions on st_customers.month = st_transactions.month

LEFT JOIN (
    SELECT 
        SUM(ROUND(t.quantity * p.price)) as order_amt
        ,EXTRACT(MONTH FROM created_at) as month 
    FROM transactions t 
    INNER JOIN products p on t.product_id = p.id 
    WHERe EXTRACT(YEAR from created_at) = 2020
    GROUP BY EXTRACT(MONTH FROM created_at)
) st_amounts on st_amounts.month = st_customers.month

ORDER BY st_customers.month asc; 

-- Version Aggregated PostgreSQL

SELECT 
    EXTRACT(MONTH FROM created_at) as month 
    ,count( DISTINCT user_id) as num_customers
    ,count(t.id) as num_orders 
    ,SUM(ROUND(t.quantity * p.price)) as order_amt
FROM transactions t 
INNER JOIN products p on t.product_id = p.id 
WHERe EXTRACT(YEAR from created_at) = 2020
GROUP BY EXTRACT(MONTH FROM created_at)
ORDER BY EXTRACT(MONTH FROM created_at) asc; 