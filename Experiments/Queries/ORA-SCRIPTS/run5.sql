select avg(salary) as avgsalary, dept
from employee
group by dept
having dept = 'information systems0';

