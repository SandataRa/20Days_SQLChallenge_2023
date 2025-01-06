-- Get the daily total daily deposits
;with transactions as (
  SELECT 
      date(created_at) as dt, 
      sum(transaction_value) as daily_total
  FROM bank_transactions 
  where transaction_value > 0
  GROUP BY date(created_at) 
) 

-- Get the three-day rolling average
select 
	dt, 
    AVG(daily_total) OVER(ORDER BY dt ROWS BETWEEN 2 PRECEDING AND CURRENT ROW ) AS rolling_three_day
FROM transactions 
ORDER BY dt asc 
;