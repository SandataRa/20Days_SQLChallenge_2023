SELECT manager, team_size
FROM (
  SELECT 
        count(DISTINCT e.id) as team_size,
        RANK() OVER(ORDER BY count(DISTINCT e.id) DESC) as rank,       
        m.name as manager
  FROM employees e 
  INNER JOIN managers m on e.manager_id = m.id 
  GROUP BY m.name 
) t 
WHERE t.rank = 1;

