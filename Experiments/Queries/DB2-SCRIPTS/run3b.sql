select ssnum
from employee, temp
where salary = bigsalary
and employee.dept = temp.dept;