insert into TEMP
select max(salary) as bigsalary, dept
from employee
group by dept;