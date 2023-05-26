SELECT 
	created_at,
    transaction_value,
    id
FROM (
  SELECT 
      id, 
      transaction_value,
  	  created_at,
      RANK() over(PARTITION by DATE(created_at) order by created_at desc) as RANK
  FROM bank_transactions
) t 
WHERE t.rank = 1
ORDER BY created_at asc; 
