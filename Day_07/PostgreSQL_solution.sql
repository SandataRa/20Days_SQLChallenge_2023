/*
Given the two tables, write a SQL query that creates a cumulative distribution 
of the number of comments per user. Assume bin buckets class intervals of one.
*/

-- MY SOLUTION
WITH tb1 as (
  SELECT user_id, count(*) as frequency
  FROM comments 
  GROUP BY user_id 
), 
tb2 as (
  SELECT c.user_id ,created_at ,frequency
  FROM comments as c
  LEFT JOIN tb1 ON c.user_id = tb1.user_id
),
tb3 as (
 SELECT count(distinct user_id) as u_total, frequency
 FROM tb2
 GROUP BY frequency
)

SELECT  
    SUM(u_total) OVER (ORDER BY frequency) AS cum_total, frequency
FROM tb3 
ORDER BY frequency  


