select max(salary) as bigsalary, dept into TEMP
from employee
group by dept;