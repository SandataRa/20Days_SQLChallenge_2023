SELECT 
	d.download_date,
    a.paying_customer,
    ROUND( CAST(AVG(d.downloads) as numeric) ,2) as average_downloads
from (
  SELECT *
  FROM downloads
  WHERE downloads > 0  
 ) d
INNER JOIN accounts a On d.account_id = a.account_id 
GROUP BY 
  d.download_date,
  a.paying_customer
  
ORDER BY d.download_date asc
; 