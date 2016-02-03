select avg(salary) as avgsalary, employee.dept into temp
from employee, techdept
where employee.dept = techdept.dept
group by employee.dept;