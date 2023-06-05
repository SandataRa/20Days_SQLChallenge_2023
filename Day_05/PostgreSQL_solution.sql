SELECT 
	tb.employee_name,
    tb.department_name,
    tb.salary
	
FROM (
  SELECT 
      e.first_name || ' ' || e.last_name as employee_name, 
      e.salary,
      d.name as department_name, 
  	  RANK () OVER (partition by d.name ORDER BY e.salary desc) employee_rank
  FROM employees e 
  INNER JOIN departments d ON e.department_id = d.id 
) as tb

WHERE employee_rank <= 3
ORDER BY department_name asc, salary desc;